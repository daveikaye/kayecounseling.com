<%@ include file="/WEB-INF/jsp/includes.jsp" %>
<%@ page import="net.tanesha.recaptcha.ReCaptcha" %>
<%@ page import="net.tanesha.recaptcha.ReCaptchaFactory" %>

<html>
  <head>
	<%@ include file="/jqueryImport.jspf" %>    
  	<script type="text/javascript" src="../../javascript/contact.js"></script> 
	<script>
		var RecaptchaOptions = {
   			theme : 'clean'
		};
	</script>
	  	
  	<title>Ellen Kaye, LCSW</title>
  </head>

  <body>
  	<%@ include file="/WEB-INF/jsp/header_contact.jsp" %>
  	<%@ include file="/WEB-INF/jsp/profile.jsp" %>
  	<div id="content_div" class="content_background_left">
  		<div class="content_background_right">
	  		<form id="contactForm" name="contact" method="POST" action="/submitContact">
				<fieldset>
					<label for="fullName" id="fullName_label">*Your Name (First Last):</label>
					<input type="text" name="fullName" id="fullName" />
					<label for="fullName" id="fullName_error" style="color:red;display:none">This field is required</label>
					<br />
					<br />
					<label for="contactType" id="contactType_label">*How do you wish to be contacted?</label>
					<select name="contactType" id="contactType">
						<option value="email" selected="selected">E-mail</option>
						<option value="phone">Phone</option>
					</select>
					<br />
					<br />
					<span id="emailSpanContact">
						<label for="eMailAddress" id="eMailAddress_label">*Your e-mail address:</label>
						<input type="text" name="emailAddress" id="emailAddress" />
						<label for="eMailAddress" id="eMailAddress_error" style="color:red;display:none">This field is required</label>
						<br />
						<br />
					</span>
					<span id="phoneSpanContact" style="display:none;">
						<label for="phoneNumber" id="phoneNumber_label">*Your phone number:</label>
						<input type="text" name="phoneNumber" id="phoneNumber" />
						<label for="phoneNumber" id="phoneNumber_error" style="color:red;display:none">This field is required</label>
						<br />
						<br />
					</span>
					<label for="questionsOrComments" id="questionsOrComments_label">*Enter your questions or comments in the box below.</label>
					<br />
					<textarea cols="50" rows="8" name="questionsOrComments" id="questionsOrComments"></textarea>
					<label for="questionsOrComments" id="questionsOrComments_error" style="color:red;display:none">This field is required</label>
					<br />
					<br />
					<br />
					<br />
					To pevent spam, please type each of the following words into the box below and click submit.
					<%
				     	ReCaptcha c = ReCaptchaFactory.newReCaptcha("6LeB8QkAAAAAAPMRv6bJNmCZSP6Al_4xHjFPGSRI", "6LeB8QkAAAAAAIPlcacri7f-SwWueaF9F9uGvc0m", false);
				     	out.print(c.createRecaptchaHtml(null, null));
				    %>
					<input id="submitContact" type="button" value="Submit" />&nbsp;&nbsp;
					<input id="cancelContact" type="button" value="Cancel" />
				</fieldset>
			</form>
		</div>	
  	</div>
  </body>
</html>
