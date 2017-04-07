<%@ page import="net.tanesha.recaptcha.ReCaptcha" %>
<%@ page import="net.tanesha.recaptcha.ReCaptchaFactory" %>

<html>
	<body>
		<form action="" method="post">
		   <%
		     ReCaptcha c = ReCaptchaFactory.newReCaptcha("6LeB8QkAAAAAAPMRv6bJNmCZSP6Al_4xHjFPGSRI", "6LeB8QkAAAAAAIPlcacri7f-SwWueaF9F9uGvc0m", false);
		     out.print(c.createRecaptchaHtml(null, null));
		   %>
   		   <input type="submit" value="submit" />
   		</form>
 	</body>
</html>
