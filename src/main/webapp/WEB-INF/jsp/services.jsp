<%@ include file="/WEB-INF/jsp/includes.jsp" %>

<html>
  <head>
	<%@ include file="/jqueryImport.jspf" %>
	<script src="/javascript/jquery_ui/jquery-ui.min.js"></script>
	<link rel="stylesheet" href="/css/jquery_ui/jquery-ui.css">
  	<script>
	  $( function() {
	    $( "#accordion" ).accordion({
	      collapsible: true,
	      active: 10
	    });
	  } );
    </script>
  	
  	<title>Ellen Kaye, LCSW</title>
  </head>

  <body>
  	<%@ include file="/WEB-INF/jsp/header_services.jsp" %>
  	<%@ include file="/WEB-INF/jsp/profile.jsp" %>
  	
  	<div id="content_div" class="content_background_left">
  		<div class="content_background_right">
  		    <div id="accordion">
			  <h3>Individual counseling</h3>
			  <div>
			    <p>I provide 60 minute sessions to adult individuals suffering from depression and anxiety symptoms. I will examine your core believes and underlying causes of the above 
			    symptoms, focusing on present life situation that might contribute to depression and anxiety, such as caregiver distress, loneliness, relationship issues, grief, and 
			    unresolved medical issues.</p>
			  </div>
			  <h3>Marital couple counseling</h3>
			  <div>
			    <p>90 minute sessions for couples who are willing to improve quality of marital relationship. Couples will learn new communication and life management skills that
			    will allow them to re-build their marriage based on trust and mutual respect.</p>
			  </div>
			  <h3>Bereavement therapy treatment</h3>
			  <div>
			    <p>I will guide you through overwhelming process of bereavement to recovery from grief.  You will learn stages of bereavement, its purpose, and tasks.
			    You will be able to re-organize your life around the loss and re-claim yourself in the process.</p>
			  </div>
			  <h3>Support groups</h3>
			  <div>
			    <ul>
					<li>Bereavement support group</li>
					<li>Surviving separation support group for people going through divorce and/or separation process.</li>
			    </ul>
			  </div>
			</div>
		</div>
  	</div>
  	
  	<div id="shareSave_div">
  		<%@ include file="/WEB-INF/jsp/addToAny/addToAny_services.jsp" %>
  	</div>
  </body>
</html>
