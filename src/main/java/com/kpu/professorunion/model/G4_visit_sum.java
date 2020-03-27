package com.kpu.professorunion.model;

import java.sql.Timestamp;

public class G4_visit_sum {
	private Timestamp vs_date;
	private int vs_count;
	
	public G4_visit_sum() {
		
	}

	public G4_visit_sum(Timestamp vs_date, int vs_count) {
		this.vs_date = vs_date;
		this.vs_count = vs_count;
	}

	public Timestamp getVs_date() {
		return vs_date;
	}

	public void setVs_date(Timestamp vs_date) {
		this.vs_date = vs_date;
	}

	public int getVs_count() {
		return vs_count;
	}

	public void setVs_count(int vs_count) {
		this.vs_count = vs_count;
	}
}
