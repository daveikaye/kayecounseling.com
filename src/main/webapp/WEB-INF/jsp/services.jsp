<%@ include file="/WEB-INF/jsp/includes.jsp" %>

<html>
  <head>
	<script type="text/javascript" src="../../javascript/jquery-1.3.2.min.js"></script>
	<script type="text/javascript" src="../../javascript/jquery.livequery.js"></script>    
  	
  	<title>Ellen Kaye, LCSW</title>
  </head>

  <body>
  	<%@ include file="/WEB-INF/jsp/header_services.jsp" %>
  	<%@ include file="/WEB-INF/jsp/profile.jsp" %>
  	<div id="content_div" class="content_background_left">
  		<div class="content_background_right">
	  		<ul>
				<li>Depression</li>
				<li>Anxiety</li>
				<li>Relationship Issues</li>
				<li>Marital Therapy</li>
				<li>Life Coaching</li>
				<li>Bereavement</li>
				<li>Parenting</li>
				<li>Eating Disorders</li>
			</ul>
		</div>
  	</div>
  	
  	<div id="shareSave_div">
  		<%@ include file="/WEB-INF/jsp/addToAny/addToAny_services.jsp" %>
  	</div>
  </body>
</html>
