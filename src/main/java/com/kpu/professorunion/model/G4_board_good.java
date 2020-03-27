package com.kpu.professorunion.model;

import java.sql.Timestamp;

//테이블 g4_board_good
public class G4_board_good {
	
	private int bg_id;
	private String bo_table;
	private int wr_id;
	private String mb_id;
	private String bg_flag;
	private Timestamp bg_datetime;
	
	public G4_board_good() {
		
	}

	public G4_board_good(int bg_id, String bo_table, int wr_id, String mb_id, String bg_flag, Timestamp bg_datetime) {
		this.bg_id = bg_id;
		this.bo_table = bo_table;
		this.wr_id = wr_id;
		this.mb_id = mb_id;
		this.bg_flag = bg_flag;
		this.bg_datetime = bg_datetime;
	}

	public int getBg_id() {
		return bg_id;
	}

	public void setBg_id(int bg_id) {
		this.bg_id = bg_id;
	}

	public String getBo_table() {
		return bo_table;
	}

	public void setBo_table(String bo_table) {
		this.bo_table = bo_table;
	}

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

	public String getBg_flag() {
		return bg_flag;
	}

	public void setBg_flag(String bg_flag) {
		this.bg_flag = bg_flag;
	}

	public Timestamp getBg_datetime() {
		return bg_datetime;
	}

	public void setBg_datetime(Timestamp bg_datetime) {
		this.bg_datetime = bg_datetime;
	}
}
