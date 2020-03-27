package com.kpu.professorunion.model;

import java.sql.Timestamp;

public class G4_visit {

	private int vi_id;
	private String vi_ip;
	private Timestamp vi_date;
	private Timestamp vi_time;
	private String vi_referer;
	private String vi_agent;
	
	public G4_visit() {
		
	}

	public G4_visit(int vi_id, String vi_ip, Timestamp vi_date, Timestamp vi_time, String vi_referer, String vi_agent) {
	
		this.vi_id = vi_id;
		this.vi_ip = vi_ip;
		this.vi_date = vi_date;
		this.vi_time = vi_time;
		this.vi_referer = vi_referer;
		this.vi_agent = vi_agent;
	}

	public int getVi_id() {
		return vi_id;
	}

	public void setVi_id(int vi_id) {
		this.vi_id = vi_id;
	}

	public String getVi_ip() {
		return vi_ip;
	}

	public void setVi_ip(String vi_ip) {
		this.vi_ip = vi_ip;
	}

	public Timestamp getVi_date() {
		return vi_date;
	}

	public void setVi_date(Timestamp vi_date) {
		this.vi_date = vi_date;
	}

	public Timestamp getVi_time() {
		return vi_time;
	}

	public void setVi_time(Timestamp vi_time) {
		this.vi_time = vi_time;
	}

	public String getVi_referer() {
		return vi_referer;
	}

	public void setVi_referer(String vi_referer) {
		this.vi_referer = vi_referer;
	}

	public String getVi_agent() {
		return vi_agent;
	}

	public void setVi_agent(String vi_agent) {
		this.vi_agent = vi_agent;
	}
}
