package com.kpu.professorunion.model;

import java.sql.Timestamp;

// 테이블 g4_poll
public class G4_poll {

	   private int po_id;
	   private String po_subject;
	   private String po_poll1;
	   private String po_poll2;
	   private String po_poll3;
	   private String po_poll4;
	   private String po_poll5;
	   private String po_poll6;
	   private String po_poll7;
	   private String po_poll8;
	   private String po_poll9;
	   private int po_cnt1;
	   private int po_cnt2;
	   private int po_cnt3;
	   private int po_cnt4;
	   private int po_cnt5;
	   private int po_cnt6;
	   private int po_cnt7;
	   private int po_cnt8;
	   private int po_cnt9;
	   private String po_etc;
	   private int po_level;
	   private int po_point;
	   private Timestamp po_date;
	   private String po_ips;
	   private String mb_ids;
	
	public G4_poll() {
		
	}

	public G4_poll(int po_id, String po_subject, String po_poll1, String po_poll2, String po_poll3, String po_poll4,
			String po_poll5, String po_poll6, String po_poll7, String po_poll8, String po_poll9, int po_cnt1,
			int po_cnt2, int po_cnt3, int po_cnt4, int po_cnt5, int po_cnt6, int po_cnt7, int po_cnt8, int po_cnt9,
			String po_etc, int po_level, int po_point, Timestamp po_date, String po_ips, String mb_ids) {
		
		this.po_id = po_id;
		this.po_subject = po_subject;
		this.po_poll1 = po_poll1;
		this.po_poll2 = po_poll2;
		this.po_poll3 = po_poll3;
		this.po_poll4 = po_poll4;
		this.po_poll5 = po_poll5;
		this.po_poll6 = po_poll6;
		this.po_poll7 = po_poll7;
		this.po_poll8 = po_poll8;
		this.po_poll9 = po_poll9;
		this.po_cnt1 = po_cnt1;
		this.po_cnt2 = po_cnt2;
		this.po_cnt3 = po_cnt3;
		this.po_cnt4 = po_cnt4;
		this.po_cnt5 = po_cnt5;
		this.po_cnt6 = po_cnt6;
		this.po_cnt7 = po_cnt7;
		this.po_cnt8 = po_cnt8;
		this.po_cnt9 = po_cnt9;
		this.po_etc = po_etc;
		this.po_level = po_level;
		this.po_point = po_point;
		this.po_date = po_date;
		this.po_ips = po_ips;
		this.mb_ids = mb_ids;
	}

	public int getPo_id() {
		return po_id;
	}

	public void setPo_id(int po_id) {
		this.po_id = po_id;
	}

	public String getPo_subject() {
		return po_subject;
	}

	public void setPo_subject(String po_subject) {
		this.po_subject = po_subject;
	}

	public String getPo_poll1() {
		return po_poll1;
	}

	public void setPo_poll1(String po_poll1) {
		this.po_poll1 = po_poll1;
	}

	public String getPo_poll2() {
		return po_poll2;
	}

	public void setPo_poll2(String po_poll2) {
		this.po_poll2 = po_poll2;
	}

	public String getPo_poll3() {
		return po_poll3;
	}

	public void setPo_poll3(String po_poll3) {
		this.po_poll3 = po_poll3;
	}

	public String getPo_poll4() {
		return po_poll4;
	}

	public void setPo_poll4(String po_poll4) {
		this.po_poll4 = po_poll4;
	}

	public String getPo_poll5() {
		return po_poll5;
	}

	public void setPo_poll5(String po_poll5) {
		this.po_poll5 = po_poll5;
	}

	public String getPo_poll6() {
		return po_poll6;
	}

	public void setPo_poll6(String po_poll6) {
		this.po_poll6 = po_poll6;
	}

	public String getPo_poll7() {
		return po_poll7;
	}

	public void setPo_poll7(String po_poll7) {
		this.po_poll7 = po_poll7;
	}

	public String getPo_poll8() {
		return po_poll8;
	}

	public void setPo_poll8(String po_poll8) {
		this.po_poll8 = po_poll8;
	}

	public String getPo_poll9() {
		return po_poll9;
	}

	public void setPo_poll9(String po_poll9) {
		this.po_poll9 = po_poll9;
	}

	public int getPo_cnt1() {
		return po_cnt1;
	}

	public void setPo_cnt1(int po_cnt1) {
		this.po_cnt1 = po_cnt1;
	}

	public int getPo_cnt2() {
		return po_cnt2;
	}

	public void setPo_cnt2(int po_cnt2) {
		this.po_cnt2 = po_cnt2;
	}

	public int getPo_cnt3() {
		return po_cnt3;
	}

	public void setPo_cnt3(int po_cnt3) {
		this.po_cnt3 = po_cnt3;
	}

	public int getPo_cnt4() {
		return po_cnt4;
	}

	public void setPo_cnt4(int po_cnt4) {
		this.po_cnt4 = po_cnt4;
	}

	public int getPo_cnt5() {
		return po_cnt5;
	}

	public void setPo_cnt5(int po_cnt5) {
		this.po_cnt5 = po_cnt5;
	}

	public int getPo_cnt6() {
		return po_cnt6;
	}

	public void setPo_cnt6(int po_cnt6) {
		this.po_cnt6 = po_cnt6;
	}

	public int getPo_cnt7() {
		return po_cnt7;
	}

	public void setPo_cnt7(int po_cnt7) {
		this.po_cnt7 = po_cnt7;
	}

	public int getPo_cnt8() {
		return po_cnt8;
	}

	public void setPo_cnt8(int po_cnt8) {
		this.po_cnt8 = po_cnt8;
	}

	public int getPo_cnt9() {
		return po_cnt9;
	}

	public void setPo_cnt9(int po_cnt9) {
		this.po_cnt9 = po_cnt9;
	}

	public String getPo_etc() {
		return po_etc;
	}

	public void setPo_etc(String po_etc) {
		this.po_etc = po_etc;
	}

	public int getPo_level() {
		return po_level;
	}

	public void setPo_level(int po_level) {
		this.po_level = po_level;
	}

	public int getPo_point() {
		return po_point;
	}

	public void setPo_point(int po_point) {
		this.po_point = po_point;
	}

	public Timestamp getPo_date() {
		return po_date;
	}

	public void setPo_date(Timestamp po_date) {
		this.po_date = po_date;
	}

	public String getPo_ips() {
		return po_ips;
	}

	public void setPo_ips(String po_ips) {
		this.po_ips = po_ips;
	}

	public String getMb_ids() {
		return mb_ids;
	}

	public void setMb_ids(String mb_ids) {
		this.mb_ids = mb_ids;
	}
}
