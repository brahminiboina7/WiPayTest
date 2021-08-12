package com.wicore.wipay.bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class TestGroup {
	@Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
	private Long tg_group_id;
	private String tg_group_name;
	private String tg_description;
	
	public Long getTg_group_id() {
		return tg_group_id;
	}

	public void setTg_group_id(Long tg_group_id) {
		this.tg_group_id = tg_group_id;
	}

	public String getTg_group_name(){
		return tg_group_name;
	}

	public void setTg_group_name(String tg_group_name){
		this.tg_group_name=tg_group_name;
	}

	public String getTg_description(){
		return tg_description;
	}

	public void setTg_description(String tg_description){
		this.tg_description=tg_description;
	}

}
