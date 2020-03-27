package com.kpu.professorunion.model;

import java.sql.Timestamp;

// 테이블 g4_scrap
public class G4_scrap {

	private int ms_id;
	private String mb_id;
	private String bo_table;
	private String wr_id;
	private Timestamp ms_datetime;
	
	public G4_scrap() {
		
	}

	public G4_scrap(int ms_id, String mb_id, String bo_table, String wr_id, Timestamp ms_datetime) {
	
		this.ms_id = ms_id;
		this.mb_id = mb_id;
		this.bo_table = bo_table;
		this.wr_id = wr_id;
		this.ms_datetime = ms_datetime;
	}

	public int getMs_id() {
		return ms_id;
	}

	public void setMs_id(int ms_id) {
		this.ms_id = ms_id;
	}

	public String getMb_id() {
		return mb_id;
	}

	public void setMb_id(String mb_id) {
		this.mb_id = mb_id;
	}

	public String getBo_table() {
		return bo_table;
	}

	public void setBo_table(String bo_table) {
		this.bo_table = bo_table;
	}

	public String getWr_id() {
		return wr_id;
	}

	public void setWr_id(String wr_id) {
		this.wr_id = wr_id;
	}

	public Timestamp getMs_datetime() {
		return ms_datetime;
	}

	public void setMs_datetime(Timestamp ms_datetime) {
		this.ms_datetime = ms_datetime;
	}
}
