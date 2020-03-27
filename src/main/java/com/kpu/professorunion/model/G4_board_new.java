package com.kpu.professorunion.model;

import java.sql.Timestamp;

// 테이블 g4_board_new
public class G4_board_new {
	
	private int bn_id;
	private String bo_table;
	private int wr_id;
	private int wr_parent;
	private Timestamp bn_datetime;
	private String mb_id;
	
	public G4_board_new() {
		
	}

	public G4_board_new(int bn_id, String bo_table, int wr_id, int wr_parent, Timestamp bn_datetime, String mb_id) {
		
		this.bn_id = bn_id;
		this.bo_table = bo_table;
		this.wr_id = wr_id;
		this.wr_parent = wr_parent;
		this.bn_datetime = bn_datetime;
		this.mb_id = mb_id;
	}

	public int getBn_id() {
		return bn_id;
	}

	public void setBn_id(int bn_id) {
		this.bn_id = bn_id;
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

	public int getWr_parent() {
		return wr_parent;
	}

	public void setWr_parent(int wr_parent) {
		this.wr_parent = wr_parent;
	}

	public Timestamp getBn_datetime() {
		return bn_datetime;
	}

	public void setBn_datetime(Timestamp bn_datetime) {
		this.bn_datetime = bn_datetime;
	}

	public String getMb_id() {
		return mb_id;
	}

	public void setMb_id(String mb_id) {
		this.mb_id = mb_id;
	}	
}
