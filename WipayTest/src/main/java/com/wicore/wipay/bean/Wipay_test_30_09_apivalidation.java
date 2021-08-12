package com.wicore.wipay.bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
@Entity(name = "wipay_test_30_09_apivalidation")
public class Wipay_test_30_09_apivalidation {
	@Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
		private Long id;
		public Wipay_test_30_09_apivalidation() {
		super();
		// TODO Auto-generated constructor stub
	}
		private String merchant_id;
		private String order_id;
		private String content_type;
		private String content_id;
		private String bill_type;
		private String Price;
		private String min_price;
		private String rating;
		private String make;
		private String model;
		private String title;
		private String user_id;
		private String cg_image_url;
		private String content_access_url;
		private String link;
		private String exp_status_code;
		private String exp_status_message;
		private String test_group_name;
		private int test_group_id;	
		private String exp_cbstatus_code;
		private String exp_cbstatus_message;
		private String sign;
		private String Billing_Type;
		private String operators;
		private String order_id_auto;
		private String test_step;	
		private String op_name;
		private String country_code;		
		private String msg;
		private String bill_api;
		private String pg;
		private String short_code;
		private String circle;
		private String Mb_No;
		private String Req_Content_Type;
		private String Request_Type;
		private String Request_Params;
		
		public Long getId() {
			return id;
		}
		@Override
		public String toString() {
			return "WipayTest [id=" + id + ", merchant_id=" + merchant_id + ", content_type=" + content_type
					+ ", content_id=" + content_id + ", bill_type=" + bill_type + ", Price=" + Price + ", min_price="
					+ min_price + ", rating=" + rating + ", make=" + make + ", model=" + model + ", title=" + title
					+ ", user_id=" + user_id + ", cg_image_url=" + cg_image_url + ", content_access_url="
					+ content_access_url + ", link=" + link + ", exp_status_code=" + exp_status_code
					+ ", exp_status_message=" + exp_status_message + ", test_group_name=" + test_group_name
					+ ", test_group_id=" + test_group_id + ", exp_cbstatus_code=" + exp_cbstatus_code
					+ ", exp_cbstatus_message=" + exp_cbstatus_message + "]";
		}
		public Wipay_test_30_09_apivalidation(Long id, String merchant_id, String content_type, String content_id, String bill_type,
				String price, String min_price, String rating, String make, String model, String title, String user_id,
				String cg_image_url, String content_access_url, String link, String exp_status_code,
				String exp_status_message, String test_group_name, int test_group_id, String exp_cbstatus_code,
				String exp_cbstatus_message) {
			super();
			this.id = id;
			this.merchant_id = merchant_id;
			this.content_type = content_type;
			this.content_id = content_id;
			this.bill_type = bill_type;
			Price = price;
			this.min_price = min_price;
			this.rating = rating;
			this.make = make;
			this.model = model;
			this.title = title;
			this.user_id = user_id;
			this.cg_image_url = cg_image_url;
			this.content_access_url = content_access_url;
			this.link = link;
			this.exp_status_code = exp_status_code;
			this.exp_status_message = exp_status_message;
			this.test_group_name = test_group_name;
			this.test_group_id = test_group_id;
			this.exp_cbstatus_code = exp_cbstatus_code;
			this.exp_cbstatus_message = exp_cbstatus_message;
		}
		public void setId(Long id) {
			this.id = id;
		}
		public String getMerchant_id() {
			return merchant_id;
		}
		public void setMerchant_id(String merchant_id) {
			this.merchant_id = merchant_id;
		}
		public String getOrder_id() {
			return order_id;
		}
		public void setOrder_id(String order_id) {
			this.order_id = order_id;
		}
		public String getContent_type() {
			return content_type;
		}
		public void setContent_type(String content_type) {
			this.content_type = content_type;
		}
		public String getContent_id() {
			return content_id;
		}
		public void setContent_id(String content_id) {
			this.content_id = content_id;
		}
		public String getBill_type() {
			return bill_type;
		}
		public void setBill_type(String bill_type) {
			this.bill_type = bill_type;
		}
		public String getPrice() {
			return Price;
		}
		public void setPrice(String price) {
			Price = price;
		}
		public String getMin_price() {
			return min_price;
		}
		public void setMin_price(String min_price) {
			this.min_price = min_price;
		}
		public String getRating() {
			return rating;
		}
		public void setRating(String rating) {
			this.rating = rating;
		}
		public String getMake() {
			return make;
		}
		public void setMake(String make) {
			this.make = make;
		}
		public String getModel() {
			return model;
		}
		public void setModel(String model) {
			this.model = model;
		}
		public String getTitle() {
			return title;
		}
		public void setTitle(String title) {
			this.title = title;
		}
		public String getUser_id() {
			return user_id;
		}
		public void setUser_id(String user_id) {
			this.user_id = user_id;
		}
		public String getCg_image_url() {
			return cg_image_url;
		}
		public void setCg_image_url(String cg_image_url) {
			this.cg_image_url = cg_image_url;
		}
		public String getContent_access_url() {
			return content_access_url;
		}
		public void setContent_access_url(String content_access_url) {
			this.content_access_url = content_access_url;
		}
		public String getLink() {
			return link;
		}
		public void setLink(String link) {
			this.link = link;
		}
		public String getExp_status_code() {
			return exp_status_code;
		}
		public void setExp_status_code(String exp_status_code) {
			this.exp_status_code = exp_status_code;
		}
		public String getExp_status_message() {
			return exp_status_message;
		}
		public void setExp_status_message(String exp_status_message) {
			this.exp_status_message = exp_status_message;
		}
		public String getTest_group_name() {
			return test_group_name;
		}
		public void setTest_group_name(String test_group_name) {
			this.test_group_name = test_group_name;
		}
		public int getTest_group_id() {
			return test_group_id;
		}
		public void setTest_group_id(int test_group_id) {
			this.test_group_id = test_group_id;
		}
		public String getExp_cbstatus_code() {
			return exp_cbstatus_code;
		}
		public void setExp_cbstatus_code(String exp_cbstatus_code) {
			this.exp_cbstatus_code = exp_cbstatus_code;
		}
		public String getExp_cbstatus_message() {
			return exp_cbstatus_message;
		}
		public void setExp_cbstatus_message(String exp_cbstatus_message) {
			this.exp_cbstatus_message = exp_cbstatus_message;
		}
		public String getSign() {
			return sign;
		}
		public void setSign(String sign) {
			this.sign = sign;
		}
		public String getOperators() {
			return operators;
		}
		public void setOperators(String operators) {
			this.operators = operators;
		}
		public String getOrder_id_auto() {
			return order_id_auto;
		}
		public void setOrder_id_auto(String order_id_auto) {
			this.order_id_auto = order_id_auto;
		}
		public String getTest_step() {
			return test_step;
		}
		public void setTest_step(String test_step) {
			this.test_step = test_step;
		}
		public String getOp_name() {
			return op_name;
		}
		public void setOp_name(String op_name) {
			this.op_name = op_name;
		}
		public String getCountry_code() {
			return country_code;
		}
		public void setCountry_code(String country_code) {
			this.country_code = country_code;
		}
		public String getMsg() {
			return msg;
		}
		public void setMsg(String msg) {
			this.msg = msg;
		}
		public String getBill_api() {
			return bill_api;
		}
		public void setBill_api(String bill_api) {
			this.bill_api = bill_api;
		}
		public String getPg() {
			return pg;
		}
		public void setPg(String pg) {
			this.pg = pg;
		}
		public String getShort_code() {
			return short_code;
		}
		public void setShort_code(String short_code) {
			this.short_code = short_code;
		}
		public String getCircle() {
			return circle;
		}
		public void setCircle(String circle) {
			this.circle = circle;
		}
		public String getMb_No() {
			return Mb_No;
		}
		public void setMb_No(String mb_No) {
			Mb_No = mb_No;
		}
		public String getReq_Content_Type() {
			return Req_Content_Type;
		}
		public void setReq_Content_Type(String req_Content_Type) {
			Req_Content_Type = req_Content_Type;
		}
		public String getRequest_Type() {
			return Request_Type;
		}
		public void setRequest_Type(String request_Type) {
			Request_Type = request_Type;
		}
		public String getRequest_Params() {
			return Request_Params;
		}
		public void setRequest_Params(String request_Params) {
			Request_Params = request_Params;
		}
		public String getBilling_Type() {
			return Billing_Type;
		}
		public void setBilling_Type(String billing_Type) {
			Billing_Type = billing_Type;
		}

		
	
	}

