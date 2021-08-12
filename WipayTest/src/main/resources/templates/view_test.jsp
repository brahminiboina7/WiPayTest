

	
  <html>
  <head><title>WiPay Test</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  
  <style>
  fieldset{border-color:rgb(141, 215, 216);} legend font {
   color: rgb(35, 82, 124);
  }
 .content_links a{
       color: #0b72d9;
  }
  .container{
  	text-align: center;
  }
  </style>
  </head>
  
  <body>
<fieldset> <legend><b><font color = "orange">WiPay Integration Test</font></b></legend>
<div class="container">
<tr th:each="links : ${billing_links}" th:attr="data-value=${links.merchant_id}">
<p><a href="links : ${billing_links}" th:text="${links.link}"  th:href="@{/WiPay/Bill?{id}(mid=${links.merchant_id},cid=${links.content_id}, ctype=${links.content_type},bill_type=${links.bill_type},rtg=${links.rating},make=${links.make},model=${links.model},price=${links.price},title=${links.title},user_id=${links.user_id},cg_image_url=${cg_image_url},access_url=${content_access_url},min_price=${links.min_price},exp_status_code=${links.exp_status_code},exp_status_message=${links.exp_status_message},exp_cbstatus_code=${links.exp_cbstatus_code},exp_cbstatus_message=${links.exp_cbstatus_message},test_group_id=${links.test_group_id},test_group_name=${links.test_group_name},op_name=${links.op_name},country_code=${links.country_code},circle=${links.circle},Mb_No=${links.Mb_No},short_code=${links.short_code},msg=${links.msg},bill_api=${links.bill_api})}" >Links</a></p>
</tr>
<p><a th:href="@{/viewGroup}">Home</a></p> 

</div> </fieldset>
</body>
</html>

 



































 