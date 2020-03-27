package com.kpu.professorunion.model;

public class AdminConfig {

	


	private int cf_use_copy_log; // 복사이동 로그
	private String cf_title; // 홈페이지 제목
	private String cf_admin; // 최고관리자 
	private int cf_popular_del; // 인기검색어 삭제 
	private int cf_open_modify; // 정보공개수정
	private int cf_login_minutes; // 현재접속자
	private int cf_visit_del; // 접속자로그삭제 
	private int cf_new_rows; // 최근게시물라인수 
	private int cf_cut_name; // 이름(별명표시 수)
	private int cf_nick_modify; // 별명수정일
	private String cf_filter;
	private String cf_intercept_ip; // 접근차단 ip
	
	
	
	
	


	public String getCf_filter() {
		return cf_filter;
	}
	public void setCf_filter(String cf_filter) {
		this.cf_filter = cf_filter;
	}
	public int getcf_use_copy_log() {
		return cf_use_copy_log;
	}
	public void setcf_use_copy_log(int cf_use_copy_log) {
		this.cf_use_copy_log = cf_use_copy_log;
	}
	public String getCf_title() {
		return cf_title;
	}
	public void setCf_title(String cf_title) {
		this.cf_title = cf_title;
	}
	public String getCf_admin() {
		return cf_admin;
	}
	public void setCf_admin(String cf_admin) {
		this.cf_admin = cf_admin;
	}
	public int getCf_popular_del() {
		return cf_popular_del;
	}
	public void setCf_popular_del(int cf_popular_del) {
		this.cf_popular_del = cf_popular_del;
	}
	public int getcf_open_modify() {
		return cf_open_modify;
	}
	public void setcf_open_modify(int cf_open_modify) {
		this.cf_open_modify = cf_open_modify;
	}
	public int getCf_login_minutes() {
		return cf_login_minutes;
	}
	public void setCf_login_minutes(int cf_login_minutes) {
		this.cf_login_minutes = cf_login_minutes;
	}
	public int getCf_visit_del() {
		return cf_visit_del;
	}
	public void setCf_visit_del(int cf_visit_del) {
		this.cf_visit_del = cf_visit_del;
	}
	public int getCf_new_rows() {
		return cf_new_rows;
	}
	public void setCf_new_rows(int cf_new_rows) {
		this.cf_new_rows = cf_new_rows;
	}
	public int getCf_cut_name() {
		return cf_cut_name;
	}
	public void setCf_cut_name(int cf_cut_name) {
		this.cf_cut_name = cf_cut_name;
	}
	public int getCf_nick_modify() {
		return cf_nick_modify;
	}
	public void setCf_nick_modify(int cf_nick_modify) {
		this.cf_nick_modify = cf_nick_modify;
	}
	public String getCf_intercept_ip() {
		return cf_intercept_ip;
	}
	public void setCf_intercept_ip(String cf_intercept_ip) {
		this.cf_intercept_ip = cf_intercept_ip;
	}
	
	
}
