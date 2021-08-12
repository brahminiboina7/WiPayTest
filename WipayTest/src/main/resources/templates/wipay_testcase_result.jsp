<html><head>
<meta name="viewport" content="width=device-width; initial-scale = 1.0;maximum-scale=1.0; user-scalable=no" />
<link th:href="@{/css/style_in.css}" rel="stylesheet">
<link type="text/css" rel="stylesheet" th:href="@{/css/main1.css&contentType=text/css}" />
<script type="text/javascript" th:src="@{/css/jquery-1.12.3.min.js}"></script>
<script type="text/javascript" th:src="@{/css/bootstrap.min.js}"></script>
<script language="JavaScript" src="DateSelect.js"></script>
<link href="style_in.css" rel="stylesheet">
<link type="text/css" rel="stylesheet" href="dhtmlgoodies_calendar.css" media="screen"></link>
<script type="text/javascript" src="dhtmlgoodies_calendar.js"></script>
<script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>

<script type="text/javaScript">
function ondoing()
{
	var time_of_exec = $("#time_of_exec").val(); 
	var time_of_resp = $("#time_of_resp").val();
	var tg_group_name = $("#tg_group_name").val();
	var session_name = $("#session_name").val();
	var telco = $("#telco").val();
	//alert("helloo");
		 $('#mainDiv').html("");	
			 var str = $('#example').serialize();
				$.ajax({
					type: 		"GET",
					url: 		"wipay_testcase_result_db?time_of_exec='"+time_of_exec+"'&time_of_resp='"+time_of_resp+"'&tg_group_name='"+tg_group_name+"'&session_name='"+session_name+"'&telco='"+telco+"'",
					
					data:  str,
					success:	function(msg) {				
						$('#mainDiv').html(msg);			
				},
						 error:	function(jqXHR, textStatus, errorThrown){
							 
							 if(errorThrown.match("expired")||jqXHR.responseText.match("expired")) {
							location.href="/session";
						 }else{
						  
						 }
					}
			});
	}

</script>
<body>
<form action="#" th:action="@{\save3}" th:object= "${test_execution}" method = "POST">
<form action="message">
<header id="top" class="header navbar-fixed-top">  
        <div class="container">            
            <h1 class="logo pull-left">
              <a class="scrollto" th:href="@{'/'}">
                    <img id="logo-image" class="logo-image" th:src="@{/images/logo_wipay.png}" alt="Logo"> 
                </a>
            </h1><!--//logo-->   
			<a class="brand-logo center hide-on-med-and-down dropdown-button small-text purple-text" href="#" data-activates="themesMenu">WiPay Test Case Result</a>
	
            <nav id="main-nav" class="main-nav navbar-right" role="navigation">
                <div class="navbar-header">
                     </div><!--//navbar-header-->            
                <div class="navbar-collapse collapse" id="navbar-collapse">
                    </div><!--//navabr-collapse-->
            </nav><!--//main-nav-->           
        </div>
    </header>
    <section id="faq" class="faq section offset-header">
    <div class=" dashboard_graph">
    <table width="100%" border="0" id="example" align="center" cellpadding='2' class="dashboard_graph" cellspacing="1">
       <tr>   <td align="right" width="50%" nowrap>StartDate&nbsp;</td><td nowrap  class="testcase_cal">
    <div class="input-group date">
              
                    <input type="date" class="form-control" id="time_of_exec" name="time_of_exec"  autocomplete="off" />
  		</div></td></tr>
		
		<tr><td align="right" nowrap>End Date&nbsp;</td><td nowrap  class="testcase_cal">
			 <div class="input-group date">
              
                    <input type="date" class="form-control" id="time_of_resp" name="time_of_resp" autocomplete="off" />
</div>
</td></tr>
     <tr><td align="right">Test Group&nbsp;</td><td align="left">
	  <select id="tg_group_id" name="tg_group_name"   class="dropbox" >
	  <option value="All"> All </option>
	  <option th:each="test_group : ${listtest_group}"
			th:value="${test_group.tg_group_name}"
			th:text="${test_group.tg_group_name}">
	  </option>
	  </select>
    </td></tr>
  <tr><td align="right">Session Name&nbsp;</td><td align="left">
	<select th:id="id" th:name="session_name"   width="15%" class="dropbox" >
	<option value="All"> All </option>
	<option th:each="listtest_execution : ${listtest_execution}"
			th:value="${listtest_execution.session_name}"
			th:text="${listtest_execution.session_name}">
	</option>
</select>
</td></tr>
<tr><td align="right">Operator&nbsp;</td><td align="left">
	<select id="telco" name="telco" width="15%" class="dropbox" >
	<option value="All"> All </option>
	<option th:each="listtest_execution : ${listtest_execution}"
			th:value="${listtest_execution.telco}"
			th:text="${listtest_execution.telco}">
	</option>
</select>
</td></tr>
<tr><td align="right">Result&nbsp;&nbsp;</td><td align="left">
      <select id="result" name="result" width="15%" class="dropbox" >
       <option value="All"> All </option>
	   <option value="Pass">Pass</option>
	   <option value="Fail">Fail</option>
	   <option value="unknown">Unknown</option>
</select>
</td></tr>
</table>
<table width="100%" border="0" align="center" cellpadding="1" cellspacing="1">
             <tr><td colspan="2" height="10"></td></tr>
			<tr><td width="50%">&nbsp;</td><td  align="left" width="50%">
			<input  type="button" name="gameratingreport" value="Submit" class="upload" onclick="return ondoing();"/> &nbsp;&nbsp;
			<a th:href="@{/}">Go to Index</a></div></td></tr>
			</table>
			<div id="mainDiv" align="center" ></div>
    </div>
    </section>
 <script>
$('.form_field_1 input[type=button]').click(function(e){
  e.preventDefault(); 
  $('#ss').slideToggle("slow");
  $('#ace_panel').show();
 
 /*  setTimeout(function(){
    $('#reportForm').submit();
  }, 5000); */
});
	
</script>
<script th:src="@{/webjars/jquery/jquery.min.js}"></script>
<script th:src="@{/webjars/popper.js/umd/popper.min.js}"></script>
<script th:src="@{/webjars/bootstrap/js/bootstrap.min.js}"></script>
<script th:src="@{assets/bootstrap-datepicker/js/bootstrap-datepicker.js}"></script>

<script>
    $('.input-group.date').datepicker({
        autoclose: true,
        todayHighlight: true
    });
</script>
	</form>
	</form>
	</body>
	
</html> 
