package com.kpu.professorunion.model;

import java.sql.Timestamp;

// 테이블 g4_pool_etc
public class G4_poll_etc {

	private int pc_id;
	private int po_id;
	private String mb_id;
	private String pc_name;
	private String pc_idea;
	private Timestamp pc_datetime;
	
	public G4_poll_etc() {
		
	}

	public G4_poll_etc(int pc_id, int po_id, String mb_id, String pc_name, String pc_idea, Timestamp pc_datetime) {
		
		this.pc_id = pc_id;
		this.po_id = po_id;
		this.mb_id = mb_id;
		this.pc_name = pc_name;
		this.pc_idea = pc_idea;
		this.pc_datetime = pc_datetime;
	}

	public int getPc_id() {
		return pc_id;
	}

	public void setPc_id(int pc_id) {
		this.pc_id = pc_id;
	}

	public int getPo_id() {
		return po_id;
	}

	public void setPo_id(int po_id) {
		this.po_id = po_id;
	}

	public String getMb_id() {
		return mb_id;
	}

	public void setMb_id(String mb_id) {
		this.mb_id = mb_id;
	}

	public String getPc_name() {
		return pc_name;
	}

	public void setPc_name(String pc_name) {
		this.pc_name = pc_name;
	}

	public String getPc_idea() {
		return pc_idea;
	}

	public void setPc_idea(String pc_idea) {
		this.pc_idea = pc_idea;
	}

	public Timestamp getPc_datetime() {
		return pc_datetime;
	}

	public void setPc_datetime(Timestamp pc_datetime) {
		this.pc_datetime = pc_datetime;
	}	
}
