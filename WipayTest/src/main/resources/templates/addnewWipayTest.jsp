<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Add Wipay Test</title>
		<meta name="viewport" content="width=device-width; initial-scale = 1.0;maximum-scale=1.0; user-scalable=no" />
		<link th:href="@{/css/style_in.css}" rel="stylesheet">
		<link type="text/css" rel="stylesheet" th:href="@{/css/main1.css&contentType=text/css}" />
		<script type="text/javascript" th:src="@{/css/jquery-1.12.3.min.js}"></script>
		<script type="text/javascript" th:src="@{/css/bootstrap.min.js}"></script>
		    
		<script type="text/javascript">
			$("input[type='th:checkbox']").change(function (){
			    if($(this).is("th:checked")){
			        $(this).parent().addClass("bg_color");
			    }else{
			        $(this).parent().removeClass("bg_color");
			    }
			});
			
			
			function onback(){
				window.history.back();
				return true;
			 }
 
	 
			 $(function () {				
			        $("#billing_type").change(function () {						
			            if ($(this).val() == "") {
							$("#sms").hide();
							$("#ip").hide();
						}else if($(this).val() == "SmsBILLING"){
								 $("#sms").show();
								 $("#ip").hide();
						}else if($(this).val() == "IpBILLING"){
								 $("#sms").hide();
							 	 $("#ip").show();
						}
			        });
			    });

 
			 function ondo(){
			 	var dvalue=document.getElementById("tg_group_id").value;  
			    alert("dvalue:"+dvalue);
				if(dvalue==""){
					alert("please select Test Group");
					return false;
				}
				
				$("#sel_gp_op_name").html("");
				$("#gp_op_name").html(""); 			
				var bill = document.getElementById("billing_type").value;
				if(bill == ""){
					alert("please enter Billing Type");
					return false;							
				}
			}
			 
			 
			$(function(){
				$("#sign_table").hide();
			});
			 
 			function showSign(form){
				var sign_check = $("input[name=sign_req]:checked").val();
				alert("sign_check::"+sign_check);
				if(sign_check == "1"){
					$("#sign_table").show();
				}else{
					$("#sign_table").hide(); 
				}
			}
 		</script>
	</head>
	
	<body>
		<header id="top" class="header navbar-fixed-top">  
			<div class="container">            
		    	<h1 class="logo pull-left">
		        	<a class="scrollto" th:href="@{'/'}">
		            	<img id="logo-image" class="logo-image" th:src="@{/images/logo_wipay.png}" alt="Logo">		                   
		            </a>
		        </h1><!--//logo-->   
				<a class="brand-logo center hide-on-med-and-down dropdown-button small-text purple-text" href="#" data-activates="themesMenu">WiPay Integration Test</a>
	            <nav id="main-nav" class="main-nav navbar-right" role="navigation">
		        	<div class="navbar-header"></div><!--//navabr-collapse-->		                    		                
		        </nav><!--//main-nav-->           
		    </div>
		</header>
		<section id="faq" class="faq section offset-header">
			<div class="container">	
				<form action="#" th:action="@{/save2}" th:object="${wipay_test_30_09_apivalidation}" method="post">	
					<br>  
					<tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
					<table align='center' border='0' cellspacing='0' cellpadding='2' class="dashboard_graph" >
						<tr><td align="right">Test Group&nbsp;</td><td align="left">
							<select id="tg_group_id" name="tg_group_id" th:field="*{test_group_name}"  class="dropbox" onChange="ondo(this.value)" >
								<option value="">select</option>
								<option th:each="test_group : ${listtest_group}"
										th:value="${test_group.tg_group_name}"
										th:text="${test_group.tg_group_name}">
								</option>
							</select>
						</td></tr>
							 		
						<tr><td width="50%" align="right"><span>Billing Type&nbsp;&nbsp;</span></td>
						<td>
							<select class="dropbox" th:field="*{Billing_Type}" name="billing_type" id="billing_type" >
								<option value="">select</option>
								<option value="IpBILLING">IP Billing</option>
								<option value="SmsBILLING">SMS Billing</option>
							</select> 
						</td></tr>
						
						<tr><td align="right">Operator&nbsp;</td>
							<td align="left">	
								<ul class="list-inline links-list pull-right">
				    				<li class=" language-selector" th:each="groups : ${listgroups}">
										<label th:for="${groups.gname}" th:text="${groups.gname}">Operator&nbsp;</label>
				        				<input th:type="checkbox" name="operator" th:checked="${checked}" th:field="*{operators}"  th:value="${groups.gname}"
				               					th:name="${groups.gname}"  />
				    				</li>
								</ul>
						</td></tr>	
					</table>
	
					<div class ="bill" id= "sms" style="display: none">
						<tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
						<table align='center' border='0' cellspacing='0' cellpadding='2' class="dashboard_graph" >	
							<input type="hidden" th:field="*{id}" />	
							<tr><td align="right" width="50%"> API URL&nbsp;&nbsp;</td><td width="50%" align="left"><input type="text" class="form-control" th:field="*{bill_api}" name="api_url" id="api_url" / ></td></tr>
							<tr><td align="right" width="50%"> Mobile Number&nbsp;&nbsp;</td><td width="50%" align="left"><input type="text" class="form-control" th:field="*{Mb_No}" name="mb_no" id="mb_no" / ></td></tr>
							<tr><td align="right" width="50%"> Message&nbsp;&nbsp;</td><td width="50%" align="left"><input type="text" class="form-control" th:field="*{msg}"  name="message" id="message" / ></td></tr>
							<tr><td align="right" width="50%"> Short Code&nbsp;&nbsp;</td><td width="50%" align="left"><input type="text" class="form-control" th:field="*{short_code}"  name="short_code" id="short_code" / ></td></tr>
							<tr><td align="right" width="50%"> Telco&nbsp;&nbsp;</td><td width="50%" align="left"><input type="text" class="form-control" th:field="*{op_name}" name="telco" id="telco" / ></td></tr>
							<tr><td align="right" width="50%"> Circle&nbsp;&nbsp;</td><td width="50%" align="left"><input type="text" class="form-control" th:field="*{circle}" name="circle" id="circle" / ></td></tr>
							<tr><td align="right" width="50%"> Request Content-Type&nbsp;&nbsp;</td><td width="50%" align="left"><input type="text" class="form-control" th:field="*{Req_Content_Type}"  name="req_content" id="circle" / ></td></tr>
							<tr><td align="right" width="30%">Request-Type&nbsp;&nbsp;</td><td  align="left">
								<input name="req_type" th:field="*{Request_Type}" id="rd1" type="radio" value = "post"  class="">
								<label for="rd1">Post</label>
								<input name="req_type" th:field="*{Request_Type}" id="rd2" value = "get" type="radio" class="" >
								<label for="rd2">get</label>
							</td></tr>					
							<tr><td align="right" width="30%">Request Params&nbsp;&nbsp;</td><td  align="left">
								<input name="req_param" th:field="*{Request_Params}" id="rd3" type="radio" value = "QS" class="">
								<label for="rd3">QS</label>
								<input name="req_param" th:field="*{Request_Params}" id="rd4" value = "requestbody" type="radio" class="" >
								<label for="rd4">Request Body</label>
							</td></tr>													
						</table>
					</div>
					
					<div class ="billy" id= "ip" style="display: none">
						<tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
						<table align='center' border='0' cellspacing='0' cellpadding='2' class="dashboard_graph" >	
							<input type="hidden" th:field="*{id}" />	
						  	<tr><td align="right" width="50%">Test Case Name&nbsp;&nbsp;</td><td width="50%" align="left"><input type="text" class="form-control" th:field="*{link}" name="link" id="link" /></td></tr>						  	
						   	<tr><td>
							<tr><td align="right" width="50%">Merchant Id&nbsp;&nbsp;</td><td width="50%" align="left"><input type="text" class="form-control" th:field="*{merchant_id}" name="merchant_id" id="merchant_id" ></td></tr>
							<tr><td align="right" width="50%">CountryCode &nbsp;&nbsp;</td><td width="50%" align="left"><input type="text" class="form-control" th:field="*{country_code}" name="country_code" id="country_code" ></td></tr>							
							<tr><td align="right" width="50%">Order Id&nbsp;&nbsp;</td><td width="50%" align="left"><input type="text" class="form-control" th:field="*{order_id}"  name="order_id" id="order_id" ></td></tr>					
							<tr><td width="50%" align="right">Content Type&nbsp;&nbsp;</td>
								<td><select class="dropbox" th:field="*{content_type}" name="content_type" id="content_type" onchange="onkdoing(this.form)">
										<option value="">Select</option>
										<option value="ANDROIDAPPS">AndroidApps</option>
										<option value="ANIMATIONS">Animations</option>
										<option value="GAMES">Games</option>
										<option value="SONGS">Songs</option>
										<option value="VIDEOCLIPS">VideoClips</option>
										<option value="VIDEOS">Videos</option>
										<option value="WALLPAPERS">Wallpapers</option>
										<option value="SUBSCRIPTION">Subscription</option>
										<option value="VALUEPACK">ValuePack</option>
										<option value="OTHERS">Others</option>
										<option value="UNKNOWN">Unknown</option>
									</select> 
								</td>
							</tr>
							<tr><td align="right" width="50%">Content Id&nbsp;&nbsp;</td><td width="50%" align="left"><input type="text" class="form-control" th:field="*{content_id}" name="content_id" id="content_id" ></td></tr>
							<tr><td width="50%" align="right">Bill Type&nbsp;&nbsp;</td>
								<td><select class="dropbox" th:field="*{bill_type}" name="bill_type" id="bill_type" onchange="onkdoing(this.form)">							
										<option value="">Select</option>
										<option value="EVENT">Event</option>
										<option value="SUBSCRIPTION">Subscription</option>
										<option value="VALUEPACK">ValuePack</option>
									</select> 
								</td>
							</tr>
							<tr><td align="right" width="50%">Price&nbsp;&nbsp;</td><td width="50%" align="left"><input type="text" class="form-control" th:field="*{Price}" name="price" id="price" ></td></tr>
							<tr><td align="right" width="50%">Min Price&nbsp;&nbsp;</td><td width="50%" align="left"><input type="text" class="form-control" th:field="*{min_price}" name="min_price" id="min_price" ></td></tr>
							<tr><td align="right" width="50%">Rating&nbsp;&nbsp;</td><td width="50%" align="left"><input type="text" class="form-control" th:field="*{rating}" name="rating" id="rating" ></td></tr>
							<tr><td align="right" width="50%">Make&nbsp;&nbsp;</td><td width="50%" align="left"><input type="text" class="form-control" th:field="*{make}" name="make" id="make" ></td></tr>
							<tr><td align="right" width="50%">Model&nbsp;&nbsp;</td><td width="50%" align="left"><input type="text" class="form-control" th:field="*{model}" name="model" id="model" ></td></tr>							
							<tr><td align="right" width="50%">Content Title&nbsp;&nbsp;</td><td width="50%" align="left"><input type="text" class="form-control" th:field="*{title}" name="title" id="title" ></td></tr>
							<tr><td align="right" width="50%">User Id&nbsp;&nbsp;</td><td width="50%" align="left"><input type="text" class="form-control" th:field="*{user_id}" name="user_id" id="user_id" ></td></tr>
							<tr><td align="right" width="50%">CG Image URL&nbsp;&nbsp;</td><td width="50%" align="left"><input type="text" class="form-control" th:field="*{cg_image_url}" name="cg_image_url" id="cg_image_url" ></td></tr>
							<tr><td align="right" width="50%">Content Access URL&nbsp;&nbsp;</td><td width="50%" align="left"><input type="text" class="form-control" th:field="*{content_access_url}" name="content_access_url" id="content_access_url" ></td></tr>
							<tr><td align="right" width="50%">Expected CBStatus Code&nbsp;&nbsp;</td><td width="50%" align="left"><input type="text" class="form-control" th:field="*{exp_cbstatus_code}" name="exp_cbstatus_code" id="exp_cbstatus_code" ></td></tr>
							<tr><td align="right" width="50%">Expected CBStatus Message&nbsp;&nbsp;</td><td width="50%" align="left"><input type="text" class="form-control" th:field="*{exp_cbstatus_message}" name="exp_cbstatus_message" id="exp_cbstatus_message" ></td></tr>
							<tr><td align="right" width="50%">Expected RDStatus Code&nbsp;&nbsp;</td><td width="50%" align="left"><input type="text" class="form-control" th:field="*{exp_status_code}" name="exp_status_code" id="exp_status_code" ></td></tr>
							<tr><td align="right" width="50%">Expected RDStatus Message&nbsp;&nbsp;</td><td width="50%" align="left"><input type="text" class="form-control" th:field="*{exp_status_message}" name="exp_status_message" id="exp_status_message" ></td></tr>
							<tr><td align="right" width="50%">Sign&nbsp;&nbsp;</td><td width="50%" align="left"><input type="text" class="form-control" th:field="*{sign}" name="sign" id="sign" ></td></tr>
						</table>
					</div>
					
					<tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
					<table align='center' border='0' cellspacing='0' cellpadding='2' class="dashboard_graph" >
						<input type="hidden" name="operation" >
						<tr align='center'>
							<td width="50%">&nbsp;</td>
							<td width="50%" align="left"> <input type="submit" value="Submit" class="upload"  onclick="return ondo()">&nbsp;&nbsp;<input  type="button"  value="Back"   class="upload" onclick="return onback()"></td>
						</tr>
					</table>
				</form>	
			</div>
		</section>  
	</body>
</html>