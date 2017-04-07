<%@ include file="/WEB-INF/jsp/includes.jsp" %>

<html>
  <head>
	<script type="text/javascript" src="../../javascript/jquery-1.3.2.min.js"></script>
	<script type="text/javascript" src="../../javascript/dataTables-1.5/media/js/jquery.dataTables.min.js"></script>
	<style type="text/css" title="currentStyle">
			@import "/javascript/dataTables-1.5/media/css/demo_page.css";
			@import "/javascript/dataTables-1.5/media/css/demo_table.css";
	</style>
	<script type="text/javascript" charset="utf-8">
		$(document).ready(function() {
			$('#documentsTable').dataTable();
		} );
	</script>  
  	
  	<title>Ellen Kaye, LCSW</title>
  </head>

  <body>
  	<%@ include file="/WEB-INF/jsp/header_assessments.jsp" %>
  	<%@ include file="/WEB-INF/jsp/profile.jsp" %>
  	<div id="dt_example" style="float:left; padding: 0 0 0 40px";>
		<div id="container">
			<div id="demo">
				<table cellpadding="0" cellspacing="0" border="0" class="display" id="documentsTable">
					<thead> 
						<tr> 
						    <th>Assessment</th> 
						    <th>Description</th> 
						</tr>
					</thead> 
					<tbody>
						<tr class="gradeA"> 
					    	<td><a href="loadDocument?name=anxiety_and_depression_scale.pdf"><img class="icon" src="/images/pdf_icon.jpg" />&nbsp;Anxiety & Depression Scale</a></td>
					    	<td>Anxiety & Depression Scale</td>
					    </tr>
					    <tr class="gradeA"> 
					    	<td><a href="loadDocument?name=yesavage_geriatric_depression_scale.pdf"><img class="icon" src="/images/pdf_icon.jpg" />&nbsp;Yesavage Geriatric Depression Scale</a></td>
					    	<td>Yesavage Geriatric Depression Scale</td>
					    </tr>
					    <tr class="gradeA"> 
					    	<td><a href="loadDocument?name=depression_selfrating_test.pdf"><img class="icon" src="/images/pdf_icon.jpg" />&nbsp;Depression Self-Rating Test</a></td>
					    	<td>Depression Self-Rating Test</td>
					    </tr>
					    <tr class="gradeA"> 
					    	<td><a href="loadDocument?name=mood_disorder.pdf"><img class="icon" src="/images/pdf_icon.jpg" />&nbsp;Screening for Mood Disorders</a></td>
					    	<td>Screening for Mood Disorders</td>
					    </tr>
					</tbody>
				</table>
			</div>
		</div>
		
		<div id="shareSave_div">
			<%@ include file="/WEB-INF/jsp/addToAny/addToAny_assessments.jsp" %>
		</div>
	</div>
  </body>
</html>
