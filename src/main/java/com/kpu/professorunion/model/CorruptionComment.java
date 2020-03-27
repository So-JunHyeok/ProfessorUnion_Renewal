package com.kpu.professorunion.model;

import java.sql.Date;

public class CorruptionComment {
	private int cc_num;
	private int ct_num;
	private String cc_id;
	private String cc_content;
	private Date cc_date;
	
	
	public int getCc_num() {
		return cc_num;
	}
	public void setCc_num(int cc_num) {
		this.cc_num = cc_num;
	}
	public int getCt_num() {
		return ct_num;
	}
	public void setCt_num(int ct_num) {
		this.ct_num = ct_num;
	}
	public String getCc_id() {
		return cc_id;
	}
	public void setCc_id(String cc_id) {
		this.cc_id = cc_id;
	}
	public String getCc_content() {
		return cc_content;
	}
	public void setCc_content(String cc_content) {
		this.cc_content = cc_content;
	}
	public Date getCc_date() {
		return cc_date;
	}
	public void setCc_date(Date cc_date) {
		this.cc_date = cc_date;
	}
}
