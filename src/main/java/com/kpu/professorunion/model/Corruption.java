package com.kpu.professorunion.model;

import java.sql.Date;

public class Corruption {
	
	private int ct_num;
	private String ct_id;
	private String ct_name;
	private String ct_title;
	private String ct_content;
	private Date ct_date;
	private String ct_authority;
	private String ct_university;
	private String ct_read = "N";
	
	
	public int getCt_num() {
		return ct_num;
	}
	public void setCt_num(int ct_num) {
		this.ct_num = ct_num;
	}
	public String getCt_id() {
		return ct_id;
	}
	public void setCt_id(String ct_id) {
		this.ct_id = ct_id;
	}
	public String getCt_name() {
		return ct_name;
	}
	public void setCt_name(String ct_name) {
		this.ct_name = ct_name;
	}
	public String getCt_title() {
		return ct_title;
	}
	public void setCt_title(String ct_title) {
		this.ct_title = ct_title;
	}
	public String getCt_content() {
		return ct_content;
	}
	public void setCt_content(String ct_content) {
		this.ct_content = ct_content;
	}
	public Date getCt_date() {
		return ct_date;
	}
	public void setCt_date(Date ct_date) {
		this.ct_date = ct_date;
	}
	public String getCt_authority() {
		return ct_authority;
	}
	public void setCt_authority(String ct_authority) {
		this.ct_authority = ct_authority;
	}
	public String getCt_university() {
		return ct_university;
	}
	public void setCt_university(String ct_university) {
		this.ct_university = ct_university;
	}
	public String getCt_read() {
		return ct_read;
	}
	public void setCt_read(String ct_read) {
		this.ct_read = ct_read;
	}
}
