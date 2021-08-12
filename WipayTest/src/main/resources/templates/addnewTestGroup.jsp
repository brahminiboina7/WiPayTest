
<!DOCTYPE html>
<html>
     <head>
	 	<title>Adding and Editing the Test Group details</title>
		<meta name="viewport" content="width=device-width; initial-scale = 1.0;maximum-scale=1.0; user-scalable=no" />
		<link href="css/style_in.css" rel="stylesheet">
	 	<link type="text/css" rel="stylesheet" href="/images/main1.css&contentType=text/css" />
		<script type="text/javascript" src="/css/jquery-1.12.3.min.js"></script>
		<script type="text/javascript" src="/css/bootstrap.min.js"></script>	
		<script>
			function onback(){			  
				window.history.back();
				return true;
			 }
		</script>
    </head>
	<body>		
		<header id="top" class="header navbar-fixed-top">  
			<div class="container">            
		    	<h1 class="logo pull-left">
		        	<a class="scrollto" th:href="@{'/'}">
		            	<img id="logo-image" class="logo-image" src="images/logo_wipay.png" alt="Logo">
		            </a>
		        </h1><!--//logo-->   
				<a class="brand-logo center hide-on-med-and-down dropdown-button small-text purple-text" href="#" data-activates="themesMenu">WiPay Test Group</a>			
		        <nav id="main-nav" class="main-nav navbar-right" role="navigation">
		        	<div class="navbar-header">
		            </div><!--//navabr-collapse-->
		        </nav><!--//main-nav-->           
		    </div>
		</header>
		<section id="faq" class="faq section offset-header">
			<div class="container">
				<div class="">		    
			 		<form action="#" th:action="@{/save}" th:object="${test_group}" method="post">	
						<br>
			   			<table align='center' border='0' cellspacing='0' cellpadding='2' class="dashboard_graph" >
							<tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>			
							<input type="hidden" th:field="*{tg_group_id}"/>
			   				<tr><td align="right" width="50%">Group Name&nbsp;&nbsp;</td><td width="50%" align="left"><input type="text" class="form-control" th:field="*{tg_group_name}" name="tg_group_name" id="tg_group_name" ></td></tr>
							<tr><td align="right" width="50%">Description&nbsp;&nbsp;</td><td width="50%" align="left"><input type="text" class="form-control" th:field="*{tg_description}" name="tg_description" id="tg_description" ></td></tr>								
							<tr align='center'>
								<td width="50%">&nbsp;</td>
								<td width="50%" align="left"> <input type="submit" value="Submit" class="upload">&nbsp;&nbsp;<input type="button"  value="Cancel"  class="upload" onclick="return onback()"></td>
							</tr>
						</table>
					</form>				
				</div>
			</div>
		</section>		      
    </body>
</html>