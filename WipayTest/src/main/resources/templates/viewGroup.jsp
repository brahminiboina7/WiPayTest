

<html><head>
 
 <meta name="viewport" content="width=device-width; initial-scale = 1.0;maximum-scale=1.0; user-scalable=no" />
 <link href="css/style_in.css" rel="stylesheet">
 <link type="text/css" rel="stylesheet" href="://:/SourceStreamer?fileName/images/main1.css&contentType=text/css" />
 <script type="text/javascript" src="/css/jquery-1.12.3.min.js"></script>
 <script type="text/javascript" src="/css/bootstrap.min.js"></script>
 <script type="text/javaScript">

 $(function(){
	$("#url_table").hide();
 });
 function showUrl(form){
 var url_check = $("input[name=url_req]:checked").val();
	alert("url_check::"+url_check);
	if(url_check == "N"){
		$("#url_table").show();
	}else{
		$("#url_table").hide(); 
	}
 }
function ondo(myform){
var check = $("[name='url_req']:checked"). val();
var port = $("#port"). val();
	if(check=='N' && port == ''){
	alert("Please enter url");
	return false;
	}
	}

/*function ondoing()
{	

	 $('#mainDiv').html("");	
	   var str = $('#reportForm').serialize();
	   $.ajax({
	   type:"post",
	   url:"view_test.jsp",
	   data: str,
	   success:	function(msg) {				
	$('#mainDiv').html(msg);			
		},
	   error:function(jqXHR, textStatus, errorThrown){
	   if(errorThrown.match("expired")||jqXHR.responseText.match("expired"))						 				 {
		location.href="/cms/ui/session.jsp";
	    }else{
			 
		}
		}
    });
}
*/
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
			<a class="brand-logo center hide-on-med-and-down dropdown-button small-text purple-text" href="#" data-activates="themesMenu">WiPay Integration Test</a>
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
              </div><!--//navabr-collapse-->
              </nav><!--//main-nav-->           
          </div>
 </header>
 <form action="#" name="myform" th:action="@{/savepage}" th:object="${wipay_test_30_09_apivalidation}" method="post">
   <br>
   <div align="center" class="title" nowrap><b>
   </b></div>
   <section id="faq" class="faq section offset-header">
<div class="container">
<div class="row">
<table border="0" cellpadding="1" cellspacing="1" style="border-collapse: collapse" width="50%" class="dashboard_graph" align="center" >      
 <tr><td align="right" width="50%">Test Group&nbsp;</td><td align="left" width="50%">
	     <select id="tg_group_id" name="tg_group_id"  class="dropbox"  >
	     <option value="0"> All </option>
	     <option th:each="test_group : ${listtest_group}"
			      th:value ="${test_group.tg_group_id}"
			      th:text="${test_group.tg_group_name}">
		 </option>
		 <br>
		 </select>
		 <br>
		 </td>
		 </tr>
 <tr><td width="50%" align="right"><span>Billing Type&nbsp;&nbsp;</span></td>
		<td>
		<select class="dropbox" name="billing_type" id="billing_type" >
		<option value="">select</option>
		<option value="IpBILLING">IP Billing</option>
		<option value="SmsBILLING">SMS Billing</option>
		</select> 
		</td>
		</tr>
<tr><td align="right" width="30%">Session Name&nbsp;&nbsp;</td><td  align="left"><input type="text" width="10%" class="form-control" name="sessionName" value=""></td></tr>

<!--<tr><td align="right">From Dev&nbsp;&nbsp;</td>
<td align="left"><input type = "radio" name="url_req" id="url_req" value="Y" checked onclick="showUrl(this.form)">&nbsp;Yes&nbsp;
<input type="radio" name="url_req" id="url_req" value="N"  onclick="showUrl(this.form)">&nbsp;No</td></tr>-->
<tr ><td align="right" width="30%">URL&nbsp;&nbsp;</td><td  align="left"><input type="text" width="10%" class="form-control" name="port" id ="port" value=""></td></tr>
</table>
<table border="0" cellpadding="1" cellspacing="1" style="border-collapse: collapse" width="80%"  align="center" class="dashboard_graph" > 
<tr>
<td  align="center" width="50%">&nbsp;</td>
<td  align="left" width="50%"><input type="submit" value="Submit" class="upload" onclick="return ondo(this.form)" > <a th:href="@{'/'}">Go to Index</a></td>
</tr>
</table></form>
<div id="mainDiv" align="center"></div>

</div></div></section>
</body> </html>