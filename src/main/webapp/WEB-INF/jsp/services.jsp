<%@ include file="/WEB-INF/jsp/includes.jsp" %>

<html>
  <head>
	<%@ include file="/jqueryImport.jspf" %>
  	
  	<title>Ellen Kaye, LCSW</title>
  </head>

  <body>
  	<%@ include file="/WEB-INF/jsp/header_services.jsp" %>
  	<%@ include file="/WEB-INF/jsp/profile.jsp" %>
  	<div id="content_div" class="content_background_left">
  		<div class="content_background_right">
	  		<ul>
				<li>Individual counseling</li>
				<li>Marital couple counseling</li>
				<li>Bereavement therapy treatment</li>
				<li>Support groups</li>
			</ul>
		</div>
  	</div>
  	
  	<div id="shareSave_div">
  		<%@ include file="/WEB-INF/jsp/addToAny/addToAny_services.jsp" %>
  	</div>
  </body>
</html>
