<html><head>
 <meta name="viewport" content="width=device-width; initial-scale = 1.0;maximum-scale=1.0; user-scalable=no" />
<link href="/css/style_in.css" rel="stylesheet">
<link href="fontawesome.io/assets/font-awesome/css/font-awesome.css" rel="stylesheet">
<link type="text/css" rel="stylesheet" href="/images/main1.css&contentType=text/css" />
<script type="text/javascript" src="jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="common.js"></script>
<script>
function ondo(id,val) {
	  // alert("id::"+id);
	  var remarks = prompt("Enter Remarks : ", "Remarks here");
	  // alert(remarks);
	   $("#"+val).val(remarks)
	   $.post("remarks",{remarks:remarks,id:id},function(result){
		});		
}
</script>
</head>
<body>
<div class="table-responsive">
			<table border="1" cellpadding="2" cellspacing="1" class="tabledata  dashboard_graph table-bordered view_test_td" width="99%"  align="center" >
            <tr>
			    <th align="center" width="5%" rowspan="2"> S.No </th>
				<th align="center" width="10%" rowspan="2">Time</th>
				<th align="center" width="8%" rowspan="2">MSISDN</th>
				<th align="center" width="8%" rowspan="2">Operator</th>
				<th align="center" width="6%" rowspan="2">Order Id</th>
			    <th align="center" width="6%" rowspan="2">Test Group</th>
				<th align="center" width="6%" rowspan="2">Session Name</th>
				<th align="center" colspan="5" >Redirection</th>
				<th align="center" colspan="5">CallBack</th>
				<th align="center" width="6%" rowspan="2">Remarks</th>
				<th align="center" width="6%" rowspan="2">Result</th>
            </tr>
			<tr>				
				<th align="center" width="7%">Expected Status Code</th>
				<th align="center" width="7%">Received Status Code </th>
				<th align="center" width="7%">Expected Status Message</th>
				<th align="center" width="7%">Received Status Message</th>
				<th align="center" width="6%">Result</th>
				<th align="center" width="7%">Expected Status Code</th>
				<th align="center" width="7%">Received Status Code </th>  
				<th align="center" width="7%">Expected Status Message</th>
				<th align="center" width="7%">Received Status Message</th>
				<th align="center" width="6%">Result</th>             
			</tr>	
			<tbody>
         				<tr  th:each="test_execution : ${listtest_execution}">
          				<td th:text="${test_execution.id}">id</td>
							<td th:text="${test_execution.time_of_exec}">time_of_exec</td>	
							<td th:text="${test_execution.msisdn}">msisdn</td>
							<td th:text="${test_execution.telco}">telco</td>	
							<td th:text="${test_execution.order_id}">order_id</td>
					        <td th:text="${test_execution.test_group_name}">test_group_name</td>
							<td th:text="${test_execution.session_name}">session_name</td>
							<td th:text="${test_execution.exp_status_code}">exp_status_code</td>
							<td th:text="${test_execution.rev_status_code}">rev_status_code</td>
							<td th:text="${test_execution.exp_status_message}">exp_status_message</td>
							<td th:text="${test_execution.rev_status_message}">rev_status_message</td>
							<td th:text="${test_execution.rdresult}">rdresult</td>
							<td th:text="${test_execution.exp_cbstatus_code}">exp_cbstatus_code</td>
							<td th:text="${test_execution.rev_cbstatus_code}">rev_cbstatus_code</td>
							<td th:text="${test_execution.exp_cbstatus_message}">exp_cbstatus_message</td>
							<td th:text="${test_execution.rev_cbstatus_message}">rev_cbstatus_message</td>
			                <td th:text="${test_execution.cbresult}">cbresult</td>
			                <td th:text="${test_execution.remarks}">remarks</td>
			                <td th:text="${test_execution.rdresult}">result</td>
			   			   </td>
			     </tr>
 		     </div>
 
	 <form  name="f2" method="post" id="downloadForm">	
					<!--  <input type="hidden" name="exporttype" th:field="*{id}"/>
					<input type="hidden" name="fromy" th:field="*{fromy}"/>
					<input type="hidden" name="fromm" th:field="*{fromm}"/>
					<input type="hidden" name="fromd" th:field="*{fromd}"/>
					<input type="hidden" name="toy" th:field="*{toy}"/>
					<input type="hidden" name="tom" th:field="*{tom}"/>
					<input type="hidden" name="tod" th:field="*{tod}"/>  
				   <input type="hidden" name="tg_group_id" th:field="*{tg_group_id}"/> 
				   <input type="hidden" name="session_name" th:field="*{session_name}"/> 
				   <input type="hidden" name="telco" th:field="*{telco}"/> 
				   <input type="hidden" name="result" th:field="*{result}"/> -->
	   </form>
</body></html> 