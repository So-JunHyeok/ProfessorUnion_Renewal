package com.kpu.professorunion.model;

import java.sql.Timestamp;

// 테이블 g4_login
public class G4_login {

	private String lo_ip;
	private String mb_id;
	private Timestamp lo_datetime;
	
	public G4_login() {
		
	}

	public G4_login(String lo_ip, String mb_id, Timestamp lo_datetime) {
		
		this.lo_ip = lo_ip;
		this.mb_id = mb_id;
		this.lo_datetime = lo_datetime;
	}

	public String getLo_ip() {
		return lo_ip;
	}

	public void setLo_ip(String lo_ip) {
		this.lo_ip = lo_ip;
	}

	public String getMb_id() {
		return mb_id;
	}

	public void setMb_id(String mb_id) {
		this.mb_id = mb_id;
	}

	public Timestamp getLo_datetime() {
		return lo_datetime;
	}

	public void setLo_datetime(Timestamp lo_datetime) {
		this.lo_datetime = lo_datetime;
	}
}
