package com.kpu.professorunion.model;

import java.sql.Timestamp;

// 테이블 g4_group_member
public class G4_group_member {
	
	  private int gm_id;
	  private String gr_id;
	  private String mb_id;
	  private Timestamp gm_datetime;
	
	public G4_group_member() {
		
	}

	public G4_group_member(int gm_id, String gr_id, String mb_id, Timestamp gm_datetime) {
		
		this.gm_id = gm_id;
		this.gr_id = gr_id;
		this.mb_id = mb_id;
		this.gm_datetime = gm_datetime;
	}

	public int getGm_id() {
		return gm_id;
	}

	public void setGm_id(int gm_id) {
		this.gm_id = gm_id;
	}

	public String getGr_id() {
		return gr_id;
	}

	public void setGr_id(String gr_id) {
		this.gr_id = gr_id;
	}

	public String getMb_id() {
		return mb_id;
	}

	public void setMb_id(String mb_id) {
		this.mb_id = mb_id;
	}

	public Timestamp getGm_datetime() {
		return gm_datetime;
	}

	public void setGm_datetime(Timestamp gm_datetime) {
		this.gm_datetime = gm_datetime;
	}
}
