package com.wicore.wipay.bean;


import java.util.Date;

import javax.persistence.Entity;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name="test_execution")
public class Test_execution {
	@Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
	 private Long id;
		private java.util.Date time_of_exec;
		private java.util.Date time_of_resp;
		private String order_id;
		private String mid;
		private String cid;
		private String ctype;
		private String rtg;
		private String user_id;
		private String make;
		private String model;
		private String bill_type;
		private String price;
		private String title;
		private String min_price;
		private String access_url;
		private String cg_image;
		private int test_group_id;
		private String test_group_name;
		//private String linkName;
		private String session_name;
		private String exp_status_code;
		private String rev_status_code;
		private String exp_status_message;
		private String rev_status_message;
		private String rdresult;
		private String exp_cbstatus_code;
		private String rev_cbstatus_code;
		private String exp_cbstatus_message;
		private String rev_cbstatus_message;
		private String cbresult;
		private int tg_group_id;
		private String msisdn;
		private String telco;
		private String remarks;
		private String bill_url;
		private String op_name;
		private String country_code;
		private String msg;
		private String bill_api;
		private String pg;
	

	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public java.util.Date getTime_of_exec() {
		return time_of_exec;
	}
	public void setTime_of_exec(java.util.Date time_of_exec) {
		this.time_of_exec = time_of_exec;
	}
	public java.util.Date getTime_of_resp() {
		return time_of_resp;
	}
	public void setTime_of_resp(java.util.Date time_of_resp) {
		this.time_of_resp = time_of_resp;
	}
	public String getOrder_id() {
		return order_id;
	}
	public void setOrder_id(String order_id) {
		this.order_id = order_id;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public String getCid() {
		return cid;
	}
	public void setCid(String cid) {
		this.cid = cid;
	}
	public String getCtype() {
		return ctype;
	}
	public void setCtype(String ctype) {
		this.ctype = ctype;
	}
	public String getRtg() {
		return rtg;
	}
	public void setRtg(String rtg) {
		this.rtg = rtg;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
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
	public String getBill_type() {
		return bill_type;
	}
	public void setBill_type(String bill_type) {
		this.bill_type = bill_type;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getMin_price() {
		return min_price;
	}
	public void setMin_price(String min_price) {
		this.min_price = min_price;
	}
	public String getAccess_url() {
		return access_url;
	}
	public void setAccess_url(String access_url) {
		this.access_url = access_url;
	}
	public String getCg_image() {
		return cg_image;
	}
	public void setCg_image(String cg_image) {
		this.cg_image = cg_image;
	}
	public int getTest_group_id() {
		return test_group_id;
	}
	public void setTest_group_id(int test_group_id) {
		this.test_group_id = test_group_id;
	}
	public String getTest_group_name() {
		return test_group_name;
	}
	public void setTest_group_name(String test_group_name) {
		this.test_group_name = test_group_name;
	}
	/*public String getLinkName() {
		return linkName;
	}
	public void setLinkName(String linkName) {
		this.linkName = linkName;
	}*/
	public String getSession_name() {
		return session_name;
	}
	public void setSession_name(String session_name) {
		this.session_name = session_name;
	}
	public String getExp_status_code() {
		return exp_status_code;
	}
	public void setExp_status_code(String exp_status_code) {
		this.exp_status_code = exp_status_code;
	}
	public String getRev_status_code() {
		return rev_status_code;
	}
	public void setRev_status_code(String rev_status_code) {
		this.rev_status_code = rev_status_code;
	}
	public String getExp_status_message() {
		return exp_status_message;
	}
	public void setExp_status_message(String exp_status_message) {
		this.exp_status_message = exp_status_message;
	}
	public String getRev_status_message() {
		return rev_status_message;
	}
	public void setRev_status_message(String rev_status_message) {
		this.rev_status_message = rev_status_message;
	}
	public String getRdresult() {
		return rdresult;
	}
	public void setRdresult(String rdresult) {
		this.rdresult = rdresult;
	}
	public String getExp_cbstatus_code() {
		return exp_cbstatus_code;
	}
	public void setExp_cbstatus_code(String exp_cbstatus_code) {
		this.exp_cbstatus_code = exp_cbstatus_code;
	}
	public String getRev_cbstatus_code() {
		return rev_cbstatus_code;
	}
	public void setRev_cbstatus_code(String rev_cbstatus_code) {
		this.rev_cbstatus_code = rev_cbstatus_code;
	}
	public String getExp_cbstatus_message() {
		return exp_cbstatus_message;
	}
	public void setExp_cbstatus_message(String exp_cbstatus_message) {
		this.exp_cbstatus_message = exp_cbstatus_message;
	}
	public String getRev_cbstatus_message() {
		return rev_cbstatus_message;
	}
	public void setRev_cbstatus_message(String rev_cbstatus_message) {
		this.rev_cbstatus_message = rev_cbstatus_message;
	}
	public String getCbresult() {
		return cbresult;
	}
	public void setCbresult(String cbresult) {
		this.cbresult = cbresult;
	}
	public int getTg_group_id() {
		return tg_group_id;
	}
	public void setTg_group_id(int tg_group_id) {
		this.tg_group_id = tg_group_id;
	}
	public String getMsisdn() {
		return msisdn;
	}
	public void setMsisdn(String msisdn) {
		this.msisdn = msisdn;
	}
	public String getTelco() {
		return telco;
	}
	public void setTelco(String telco) {
		this.telco = telco;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	public String getBill_url() {
		return bill_url;
	}
	public void setBill_url(String bill_url) {
		this.bill_url = bill_url;
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

}
		