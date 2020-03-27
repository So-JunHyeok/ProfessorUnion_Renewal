package com.kpu.professorunion.model;

import java.sql.Timestamp;

public class Question {
	private int wr_id;
	private String mb_id;
	private String wr_subject;
	private String wr_content;
	private int wr_hit;
	private String wr_datetime;
	public int getWr_id() {
		return wr_id;
	}
	public void setWr_id(int wr_id) {
		this.wr_id = wr_id;
	}
	public String getMb_id() {
		return mb_id;
	}
	public void setMb_id(String mb_id) {
		this.mb_id = mb_id;
	}
	public String getWr_subject() {
		return wr_subject;
	}
	public void setWr_subject(String wr_subject) {
		this.wr_subject = wr_subject;
	}
	public String getWr_content() {
		return wr_content;
	}
	public void setWr_content(String wr_content) {
		this.wr_content = wr_content;
	}
	public int getWr_hit() {
		return wr_hit;
	}
	public void setWr_hit(int wr_hit) {
		this.wr_hit = wr_hit;
	}
	public String getWr_datetime() {
		return wr_datetime;
	}
	public void setWr_datetime(String wr_datetime) {
		this.wr_datetime = wr_datetime;
	}
	public Question() {
		// TODO Auto-generated constructor stub
	}
}
