package com.kpu.professorunion.model;

// 테이블 `g4_auth`
public class G4_auth {
	private String mb_id;
	private String au_menu;
	private String au_auth;
	
	public G4_auth() {
		
	}
	   
	public G4_auth(String mb_id, String au_menu, String au_auth) {
		super();
		this.mb_id = mb_id;
		this.au_menu = au_menu;
		this.au_auth = au_auth;
	}

	public String getMb_id() {
		return mb_id;
	}

	public void setMb_id(String mb_id) {
		this.mb_id = mb_id;
	}

	public String getAu_menu() {
		return au_menu;
	}

	public void setAu_menu(String au_menu) {
		this.au_menu = au_menu;
	}

	public String getAu_auth() {
		return au_auth;
	}

	public void setAu_auth(String au_auth) {
		this.au_auth = au_auth;
	}
}
