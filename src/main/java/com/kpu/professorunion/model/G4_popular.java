package com.kpu.professorunion.model;

import java.sql.Timestamp;

// 테이블 g4_popular
public class G4_popular {

	private int pp_id;
	private String pp_word;
	private Timestamp pp_date;
	private String pp_ip;
	
	public G4_popular() {
		
	}

	public G4_popular(int pp_id, String pp_word, Timestamp pp_date, String pp_ip) {
		this.pp_id = pp_id;
		this.pp_word = pp_word;
		this.pp_date = pp_date;
		this.pp_ip = pp_ip;
	}

	public int getPp_id() {
		return pp_id;
	}

	public void setPp_id(int pp_id) {
		this.pp_id = pp_id;
	}

	public String getPp_word() {
		return pp_word;
	}

	public void setPp_word(String pp_word) {
		this.pp_word = pp_word;
	}

	public Timestamp getPp_date() {
		return pp_date;
	}

	public void setPp_date(Timestamp pp_date) {
		this.pp_date = pp_date;
	}

	public String getPp_ip() {
		return pp_ip;
	}

	public void setPp_ip(String pp_ip) {
		this.pp_ip = pp_ip;
	}
}
