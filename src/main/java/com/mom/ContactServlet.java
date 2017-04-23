package com.mom;
import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sendgrid.Content;
import com.sendgrid.Email;
import com.sendgrid.Mail;
import com.sendgrid.Method;
import com.sendgrid.Request;
import com.sendgrid.Response;
import com.sendgrid.SendGrid;

import net.tanesha.recaptcha.ReCaptchaImpl;
import net.tanesha.recaptcha.ReCaptchaResponse;


@SuppressWarnings("serial")
public class ContactServlet extends HttpServlet {

	private static final String SENDGRID_API_KEY_FULL_ACCESS_KEY = System.getenv("SENDGRID_API_KEY_FULL_ACCESS");
	private static final String RECAPTCHA_PRIVATE_KEY = "6LeB8QkAAAAAAIPlcacri7f-SwWueaF9F9uGvc0m";

	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		if (isValidReCaptcha(req)) {
		    String subject = "Contact message from "+req.getParameter("fullName");
		    Email to = new Email("daveikaye@yahoo.com");
		    Email from = new Email("davekaye@gmail.com");
		    
	        Content content = new Content("text/plain", 
	        		"Full name: "+req.getParameter("fullName")+"\n"
	        		+"Contact at: "+getContactInformation(req.getParameter("contactType"), 
                            req.getParameter("emailAddress"), 
                            req.getParameter("phoneNumber"))+"\n"
	        		+"Message:\n"+req.getParameter("questionsOrComments"));
	        
		    Mail mail = new Mail(from, subject, to, content);
		    mail.addHeader("X-SMTPAPI", "{ 'cc': [ 'astralcowboy77@yahoo.com' ] }");
		    
		    SendGrid sg = new SendGrid(SENDGRID_API_KEY_FULL_ACCESS_KEY);
		    Request request = new Request();
		    try {
		      request.method = Method.POST;
		      request.endpoint = "mail/send";
		      request.body = mail.build();
		      Response response = sg.api(request);
		      System.out.println(response.statusCode);
		      System.out.println(response.body);
		      System.out.println(response.headers);
		    } catch (IOException ex) {
		      throw ex;
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
