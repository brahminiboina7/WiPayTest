
<!DOCTYPE html>
<html>
    <head>
	<meta name="viewport" content="width=device-width; initial-scale = 1.0;maximum-scale=1.0; user-scalable=no" />
	<link href="css/style_in.css" rel="stylesheet">
	<link href="http://fontawesome.io/assets/font-awesome/css/font-awesome.css" rel="stylesheet">
 <link type="text/css" rel="stylesheet" href="/images/main1.css&contentType=text/css" />
  <script type="text/javascript" src="/css/jquery-1.12.3.min.js"></script>
  <script type="text/javascript" src="/css/bootstrap.min.js"></script>
  <script type="text/javascript">
function ondoing(url){
   // alert(url);
	location.href = url;
return true;
 }
 
 function ondoing1(){
   // alert(url);
	location.href = "edit_wipayTest.jsp";
return true;
 }
 </script>
    </head>
   
	<body>
	<header id="top" class="header navbar-fixed-top">  
        <div class="container">            
            <h1 class="logo pull-left">
                <a class="scrollto" th:href="@{''}">
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
<div class="row"> 

	
	   <table border="0" cellpadding="2" cellspacing="1" width="100%"  align="center" >
			<tr><td align="right" width="10%" colspan="2" class="add_new">
			<a th:href="@{'/addnewTestGroup'}"><i class="fa fa-file-o fa-2x" aria-hidden="true"></i><i class="fa fa-plus" aria-hidden="true"></i>
  <span class="new_text_align">Add New</span></a>

			
				</td>
			</tr>
		</table>
	
	  <div class="table-responsive dashboard_graph">
		<table align='center' width="100%" border='2' cellspacing='0' cellpadding='2' class="dashboard_graph table-bordered view_test_grp" >
		
		<tr>
		        <th width="5%"> S.No </th>
				<th  width="10%">Group Name</th>
				<th  width="25%">Description</th>
				<th  width="25%">Operation</th>
		
		</tr>		
		<tbody>
         				<tr  th:each="test_group : ${listtest_group}">
							<td th:text="${test_group.tg_group_id}">tg_group_id</td>
							<td th:text="${test_group.tg_group_name}">tg_group_name</td>
							<td th:text="${test_group.tg_description}">tg_description</td>			
							<td>
							</td>		    
							</tr> 

          		</tbody>
							
		
	<i class="fa fa-trash fa-2x" aria-hidden="true"></i>
		
		</a></td>
		</tr>
	
		  <tr>
		<td align="center" colspan="4"><a th:href="@{'/'}">Go to Index</a>
		</tr>
		</table>

		</div></div></div></section>
    </body>

</html>