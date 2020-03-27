package com.kpu.professorunion.model;

import java.sql.Timestamp;

// 테이블 g4_mail
public class G4_mail {

	  private int ma_id;
	  private String ma_subject;
	  private String ma_content;
	  private Timestamp ma_time;
	  private String ma_ip;
	  private String ma_last_option;
	
	public G4_mail() {
		
	}

	public G4_mail(int ma_id, String ma_subject, String ma_content, Timestamp ma_time, String ma_ip,
			String ma_last_option) {
		
		this.ma_id = ma_id;
		this.ma_subject = ma_subject;
		this.ma_content = ma_content;
		this.ma_time = ma_time;
		this.ma_ip = ma_ip;
		this.ma_last_option = ma_last_option;
	}

	public int getMa_id() {
		return ma_id;
	}

	public void setMa_id(int ma_id) {
		this.ma_id = ma_id;
	}

	public String getMa_subject() {
		return ma_subject;
	}

	public void setMa_subject(String ma_subject) {
		this.ma_subject = ma_subject;
	}

	public String getMa_content() {
		return ma_content;
	}

	public void setMa_content(String ma_content) {
		this.ma_content = ma_content;
	}

	public Timestamp getMa_time() {
		return ma_time;
	}

	public void setMa_time(Timestamp ma_time) {
		this.ma_time = ma_time;
	}

	public String getMa_ip() {
		return ma_ip;
	}

	public void setMa_ip(String ma_ip) {
		this.ma_ip = ma_ip;
	}

	public String getMa_last_option() {
		return ma_last_option;
	}

	public void setMa_last_option(String ma_last_option) {
		this.ma_last_option = ma_last_option;
	}
}
