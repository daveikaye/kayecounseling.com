<%@ include file="/WEB-INF/jsp/includes.jsp" %>

<html>
  <head>
	<script type="text/javascript" src="../../javascript/jquery-1.3.2.min.js"></script>
	<script type="text/javascript" src="../../javascript/jquery.livequery.js"></script>    
  	
  	<title>Ellen Kaye, LCSW</title>
  </head>

  <body>
  	<%@ include file="/WEB-INF/jsp/header_products.jsp" %>
  	<%@ include file="/WEB-INF/jsp/profile.jsp" %>
  	<div id="content_div" class="content_background_left">
  		<div class="content_background_right">
	  		<ul>
			<li>Online Lectures
				<ul>
					<li>Dealing With Seperation & Divorce</li>
					<li>Bereavement Due to Loss of Loved One</li>
				</ul>
			</li>
			<li>Depression Assessment Scale</li>
			<li>Anxiety Assessment Scale</li>
			<li>Live chat and messaging with a counselor and others dealing with similar issues</li>
			<li>Memory Checklist</li>
			</ul>
		</div>
  	</div>
  	
  	<div id="shareSave_div">
  		<%@ include file="/WEB-INF/jsp/addToAny/addToAny_products.jsp" %>
  	</div>
  </body>
</html>
