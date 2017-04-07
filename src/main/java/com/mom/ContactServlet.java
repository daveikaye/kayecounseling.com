package com.mom;
import java.io.IOException;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.tanesha.recaptcha.ReCaptchaImpl;
import net.tanesha.recaptcha.ReCaptchaResponse;


@SuppressWarnings("serial")
public class ContactServlet extends HttpServlet {

	private static final String RECAPTCHA_PRIVATE_KEY = "6LeB8QkAAAAAAIPlcacri7f-SwWueaF9F9uGvc0m";

	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		if (isValidReCaptcha(req)) {
			Properties props = new Properties();
	        Session session = Session.getDefaultInstance(props, null);
	        
	        Message msg = new MimeMessage(session);
	        StringBuilder msgBody = new StringBuilder();
	        msgBody.append("Full name: "+req.getParameter("fullName")+"\n");
	        
	        msgBody.append("Contact at: "+getContactInformation(req.getParameter("contactType"), 
	        		                                            req.getParameter("emailAddress"), 
	        		                                            req.getParameter("phoneNumber"))+"\n");
	        		
	        msgBody.append("Message:\n"+req.getParameter("questionsOrComments"));
	        try {
				msg.setFrom(new InternetAddress("davekaye@gmail.com"));
				msg.addRecipient(Message.RecipientType.TO, new InternetAddress("daveikaye@yahoo.com"));
				msg.setSubject("Contact message from "+req.getParameter("fullName"));
				msg.setText(msgBody.toString());
				Transport.send(msg);
			} catch (MessagingException e) {
				e.printStackTrace();
			}
	
			resp.sendRedirect("/thankyou");
		}
		else {
			resp.sendRedirect("/invalidCaptchas");
		}
	}
	
	private boolean isValidReCaptcha(HttpServletRequest request) {
	   String remoteAddr = request.getRemoteAddr();
       ReCaptchaImpl reCaptcha = new ReCaptchaImpl();
       reCaptcha.setPrivateKey(RECAPTCHA_PRIVATE_KEY);

       String challenge = request.getParameter("recaptcha_challenge_field");
       String uresponse = request.getParameter("recaptcha_response_field");
       ReCaptchaResponse reCaptchaResponse = reCaptcha.checkAnswer(remoteAddr, challenge, uresponse);

       return reCaptchaResponse.isValid();
	}

	private String getContactInformation(String contactType, String emailAddress, String phoneNumber) {
		return "email".equals(contactType) ? emailAddress : phoneNumber;
	}
}
