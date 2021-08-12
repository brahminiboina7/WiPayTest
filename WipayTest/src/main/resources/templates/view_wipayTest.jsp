
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width; initial-scale = 1.0;maximum-scale=1.0; user-scalable=no" />
<link th:href="@{/css/style_in.css}" rel="stylesheet">
<link th:href="@{http://fontawesome.io/assets/font-awesome/css/font-awesome.css}" rel="stylesheet">
 <link type="text/css" rel="stylesheet" th:href="@{/css/main1.css&contentType=text/css}" />
  <script type="text/javascript" th:src="@{/css/jquery-1.12.3.min.js}"></script>
  <script type="text/javascript" src="@{/css/bootstrap.min.js}"></script>
   <style>
.navbar-toggle {
  margin-bottom: 23px;
  margin-top: -25px;
}


</style>

    </head>       	
	<body>
<header id="top" class="header navbar-fixed-top">  
        <div class="container">            
            <h1 class="logo pull-left">
                <a class="scrollto" href="index.jsp">
                    <img id="logo-image" class="logo-image" src="images/logo_wipay.png" alt="Logo">
                   
                </a>
            </h1><!--//logo-->   
			<a class="brand-logo center hide-on-med-and-down dropdown-button small-text purple-text" href="#" data-activates="themesMenu">View WiPay Integration Test</a>
	
            <nav id="main-nav" class="main-nav navbar-right" role="navigation">
                <div class="navbar-header">
                    <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button><!--//nav-toggle-->
                </div><!--//navbar-header-->            
                <div class="navbar-collapse collapse" id="navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li class="nav-item sr-only active">
						</li>
                        <li class="nav-item"><a class="scrollto" href="/WiPayTest/view_TestGroup.jsp">Add/Edit Group</a></li>
						 <li class="nav-item"><a class="scrollto" href="/WiPayTest/view_wipayTest.jsp">Add/Edit Test Links</a></li>
						 <li class="nav-item"><a class="scrollto" href="/WiPayTest/viewGroup.jsp">Test</a></li>
                        <li class="nav-item"><a class="scrollto" href="/WiPayTest/wipay_testcase_result.jsp"> Report</a></li>
                       
                    </ul><!--//nav-->
                </div><!--//navabr-collapse-->
            </nav><!--//main-nav-->           
        </div>
    </header>
	
	<section id="faq" class="faq section offset-header">

 <table border="0" cellpadding="2" cellspacing="1" width="100%"  align="center" >
			<tr><td align="right" width="10%" colspan="2" class="add_new">
			<a th:href="@{'/addnewWipayTest'}">
				<i class="fa fa-file-o fa-2x" aria-hidden="true"></i>
				<i class="fa fa-plus" aria-hidden="true"></i>
				<span class="new_text_align">Add New</span>
			</a>
		
			
			<a href="test.jsp?operation=test"><i class="fa fa-desktop fa-2x"aria-hidden="true"></i>
				<i class="fa fa-user" aria-hidden="true"></i>
				<span class="new_text_align">Test</span>
			</a>

			
				</td>
			</tr>
		
		</table>

	  <div class="table-responsive dashboard_graph">
		<table align='center' width="99%" border='2' cellspacing='0' cellpadding='2' class="dashboard_graph table-bordered view_test_td" >
		<thead>
		<tr>
		
	  	<th align="left"><strong>Test Group Name</strong></th>
		<th align="left"><strong>Test Case Name</strong></th>
		<th align="left"><strong>Merchant Id</strong></th>
		<th align="left"><strong>OpName </strong></th>
		<th align="left"><strong>CountryCode</strong></th>
		<th align="left"><strong>Order Id</strong></th>					
		<th align="left"><strong>Content Type</strong></th>
		<th align="left"><strong>Content Id</strong></th>
		<th align="left"><strong>Bill Type</strong></th>
		<th align="left"><strong>Price</strong></th>
		<th align="left"><strong>Min Price</strong></th>
		<th align="left"><strong>Rating</strong></th>
		<th align="left"><strong>Make</strong></th>
		<th align="left"><strong>Model</strong></th>
		<th align="left"><strong>Content Title</strong></th>
		<th align="left"><strong>User Id</strong></th>
		<th align="left"><strong>CG Image URL</strong></th>
		<th align="left"><strong>Content Access URL</strong></th>
		<th align="left"><strong>Sign</strong></th>				
		<th align="left"><strong>Exp CBStatus Code</strong></th>
		<th align="left"><strong>Exp CBStatus Message</strong></th>
		<th align="left"><strong>Exp RDStatus Code</strong></th>
		<th align="left"><strong>Exp RDStatus Message</strong></th>
		<th align="left"><strong>Billing Type</strong></th>
		<th align="left"><strong>Message</strong></th>
		<th align="left"><strong>API URL</strong></th>
		<th align="left"><strong>Short Code</strong></th>
		<th align="left"><strong>Circle</strong></th>
		<th align="left"><strong>Mobile Number</strong></th>
		<th align="left"><strong>Request Content-Type</strong></th>
		<th align="left"><strong>Request Type</strong></th>
		<th align="left"><strong>Request Params</strong></th>
		
		<th><strong>Operation</strong></th>									
		
		</tr>
		</thead>
		<tbody>
		<tr  th:each="wipay_test_30_09_apivalidation : ${listwipaytest}">
		
			
				
				<td width='6%' class='tddata' th:text="${wipay_test_30_09_apivalidation.test_group_name}">test_group_name</td>
				<td width='6%' class='tddata' th:text="${wipay_test_30_09_apivalidation.link}">link</td>				
		        <td width='6%' class="tddata" th:text="${wipay_test_30_09_apivalidation.merchant_id}">merchant_id</td>
				<td width='6%' class="tddata" th:text="${wipay_test_30_09_apivalidation.op_name}">op_name</td>
				<td width='6%' class="tddata" th:text="${wipay_test_30_09_apivalidation.country_code}">country_code</td>
				<td width='6%' class="tddata" th:text="${wipay_test_30_09_apivalidation.order_id}">order_id</td>								
				<td width='6%' class="tddata" th:text="${wipay_test_30_09_apivalidation.content_type}">content_type</td>
				<td width='6%' class="tddata" th:text="${wipay_test_30_09_apivalidation.content_id}">content_id</td>
				<td width='6%' class="tddata" th:text="${wipay_test_30_09_apivalidation.bill_type}">bill_type</td>
				<td width='6%' class="tddata" th:text="${wipay_test_30_09_apivalidation.Price}">price</td>
				<td width='6%' class="tddata" th:text="${wipay_test_30_09_apivalidation.min_price}">min_price</td>
				<td width='6%' class="tddata" th:text="${wipay_test_30_09_apivalidation.rating}">rating</td>
				<td width='6%' class="tddata" th:text="${wipay_test_30_09_apivalidation.make}">make</td>
				<td width='6%' class="tddata" th:text="${wipay_test_30_09_apivalidation.model}">model</td>
				<td width='6%' class="tddata" th:text="${wipay_test_30_09_apivalidation.title}">title</td>
				<td width='6%' class="tddata" th:text="${wipay_test_30_09_apivalidation.user_id}">user_id</td>
				<td width='6%' class="tddata" th:text="${wipay_test_30_09_apivalidation.cg_image_url}">cg_image_url</td>
				<td width='6%' class="tddata" th:text="${wipay_test_30_09_apivalidation.content_access_url}">content_access_url</td>
				<td width='6%' class="tddata" th:text="${wipay_test_30_09_apivalidation.sign}">sign</td>
				<td width='6%' class="tddata" th:text="${wipay_test_30_09_apivalidation.exp_cbstatus_code}">exp_cbstatus_code</td>
				<td width='6%' class="tddata" th:text="${wipay_test_30_09_apivalidation.exp_cbstatus_message}">exp_cbstatus_message</td>
				<td width='6%' class="tddata" th:text="${wipay_test_30_09_apivalidation.exp_status_code}">exp_status_code</td>
				<td width='6%' class="tddata" th:text="${wipay_test_30_09_apivalidation.exp_status_message}">exp_status_message</td>
				<td width='6%' class="tddata" th:text="${wipay_test_30_09_apivalidation.Billing_Type}">Billing_Type</td>
				<td width='6%' class="tddata" th:text="${wipay_test_30_09_apivalidation.msg}">msg</td>
				<td width='6%' class="tddata" th:text="${wipay_test_30_09_apivalidation.bill_api}">bill_api</td>
				<td width='6%' class="tddata" th:text="${wipay_test_30_09_apivalidation.short_code}">short_code</td>
				<td width='6%' class="tddata" th:text="${wipay_test_30_09_apivalidation.circle}">circle</td>
				<td width='6%' class="tddata" th:text="${wipay_test_30_09_apivalidation.Mb_No}">Mb_No</td>
				<td width='6%' class="tddata" th:text="${wipay_test_30_09_apivalidation.Req_Content_Type}">Req_Content_Type</td>
				<td width='6%' class="tddata" th:text="${wipay_test_30_09_apivalidation.Request_Type}">Request_Type</td>
				<td width='6%' class="tddata" th:text="${wipay_test_30_09_apivalidation.Request_Params}">Request_Params</td>
				
				<td align="center">
					<a th:href="@{'/edit/' + ${wipay_test_30_09_apivalidation.id}}"><img src="../images/edit-icon.gif" name="image" title="Edit"/></a>&nbsp;&nbsp;

					<a th:href="@{'/delete/' + ${wipay_test_30_09_apivalidation.id}}"><i class="fa fa-trash fa-2x" aria-hidden="true">delete</i></a>
				</td>
														
		</tr>
		</tbody>
		 <tr>
		<td align="center" colspan="20"><a th:href="@{/viewGroup}">LinkPage</a>&nbsp;&nbsp;<a th:href="@{'/'}">Go to Index</a>
		</tr>
		</table>
		<table align='center' width="99%" border='2' cellspacing='0' cellpadding='2' class="dashboard_graph table-bordered bottom_links" >
 		</div>
 
</section>
    </body>
</html>