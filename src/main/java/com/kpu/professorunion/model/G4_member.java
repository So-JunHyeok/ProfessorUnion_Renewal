package com.kpu.professorunion.model;

import java.sql.Timestamp;

// 테이블 g4_member
public class G4_member {

	   private int mb_no;
	   private String mb_id;
	   private String mb_password;
	   private String mb_name;
	   private String mb_nick;
	   private Timestamp mb_nick_date;
	   private String mb_email;
	   private String mb_homepage;
	   private String mb_password_q;
	   private String mb_password_a;
	   private int mb_level;
	   private String mb_jumin;
	   private char mb_sex;
	   private String mb_birth;
	   private String mb_tel;
	   private String mb_hp;
	   private char mb_zip1;
	   private char mb_zip2;
	   private String mb_addr1;
	   private String mb_addr2;
	   private String mb_signature;
	   private String mb_recommend;
	   private int mb_point;
	   private Timestamp mb_today_login;
	   private String mb_login_ip;
	   private Timestamp mb_datetime;
	   private String mb_ip;
	   private String mb_leave_date;
	   private String mb_intercept_date;
	   private Timestamp mb_email_certify;
	   private String mb_memo;
	   private String mb_lost_certify;
	   private int mb_mailling;
	   private int mb_sms;
	   private int mb_open;
	   private Timestamp mb_open_date;
	   private String mb_profile;
	   private String mb_memo_call;
	   private String mb_1;
	   private String mb_2;
	   private String mb_3;
	   private String mb_4;
	   private String mb_5;
	   private String mb_6;
	   private String mb_7;
	   private String mb_8;
	   private String mb_9;
	   private String mb_10;
	
	public G4_member() {
		
	}

	public G4_member(int mb_no, String mb_id, String mb_password, String mb_name, String mb_nick,
			Timestamp mb_nick_date, String mb_email, String mb_homepage, String mb_password_q, String mb_password_a,
			int mb_level, String mb_jumin, char mb_sex, String mb_birth, String mb_tel, String mb_hp, char mb_zip1,
			char mb_zip2, String mb_addr1, String mb_addr2, String mb_signature, String mb_recommend, int mb_point,
			Timestamp mb_today_login, String mb_login_ip, Timestamp mb_datetime, String mb_ip, String mb_leave_date,
			String mb_intercept_date, Timestamp mb_email_certify, String mb_memo, String mb_lost_certify,
			int mb_mailling, int mb_sms, int mb_open, Timestamp mb_open_date, String mb_profile, String mb_memo_call,
			String mb_1, String mb_2, String mb_3, String mb_4, String mb_5, String mb_6, String mb_7, String mb_8,
			String mb_9, String mb_10) {
		
		this.mb_no = mb_no;
		this.mb_id = mb_id;
		this.mb_password = mb_password;
		this.mb_name = mb_name;
		this.mb_nick = mb_nick;
		this.mb_nick_date = mb_nick_date;
		this.mb_email = mb_email;
		this.mb_homepage = mb_homepage;
		this.mb_password_q = mb_password_q;
		this.mb_password_a = mb_password_a;
		this.mb_level = mb_level;
		this.mb_jumin = mb_jumin;
		this.mb_sex = mb_sex;
		this.mb_birth = mb_birth;
		this.mb_tel = mb_tel;
		this.mb_hp = mb_hp;
		this.mb_zip1 = mb_zip1;
		this.mb_zip2 = mb_zip2;
		this.mb_addr1 = mb_addr1;
		this.mb_addr2 = mb_addr2;
		this.mb_signature = mb_signature;
		this.mb_recommend = mb_recommend;
		this.mb_point = mb_point;
		this.mb_today_login = mb_today_login;
		this.mb_login_ip = mb_login_ip;
		this.mb_datetime = mb_datetime;
		this.mb_ip = mb_ip;
		this.mb_leave_date = mb_leave_date;
		this.mb_intercept_date = mb_intercept_date;
		this.mb_email_certify = mb_email_certify;
		this.mb_memo = mb_memo;
		this.mb_lost_certify = mb_lost_certify;
		this.mb_mailling = mb_mailling;
		this.mb_sms = mb_sms;
		this.mb_open = mb_open;
		this.mb_open_date = mb_open_date;
		this.mb_profile = mb_profile;
		this.mb_memo_call = mb_memo_call;
		this.mb_1 = mb_1;
		this.mb_2 = mb_2;
		this.mb_3 = mb_3;
		this.mb_4 = mb_4;
		this.mb_5 = mb_5;
		this.mb_6 = mb_6;
		this.mb_7 = mb_7;
		this.mb_8 = mb_8;
		this.mb_9 = mb_9;
		this.mb_10 = mb_10;
	}

	public int getMb_no() {
		return mb_no;
	}

	public void setMb_no(int mb_no) {
		this.mb_no = mb_no;
	}

	public String getMb_id() {
		return mb_id;
	}

	public void setMb_id(String mb_id) {
		this.mb_id = mb_id;
	}

	public String getMb_password() {
		return mb_password;
	}

	public void setMb_password(String mb_password) {
		this.mb_password = mb_password;
	}

	public String getMb_name() {
		return mb_name;
	}

	public void setMb_name(String mb_name) {
		this.mb_name = mb_name;
	}

	public String getMb_nick() {
		return mb_nick;
	}

	public void setMb_nick(String mb_nick) {
		this.mb_nick = mb_nick;
	}

	public Timestamp getMb_nick_date() {
		return mb_nick_date;
	}

	public void setMb_nick_date(Timestamp mb_nick_date) {
		this.mb_nick_date = mb_nick_date;
	}

	public String getMb_email() {
		return mb_email;
	}

	public void setMb_email(String mb_email) {
		this.mb_email = mb_email;
	}

	public String getMb_homepage() {
		return mb_homepage;
	}

	public void setMb_homepage(String mb_homepage) {
		this.mb_homepage = mb_homepage;
	}

	public String getMb_password_q() {
		return mb_password_q;
	}

	public void setMb_password_q(String mb_password_q) {
		this.mb_password_q = mb_password_q;
	}

	public String getMb_password_a() {
		return mb_password_a;
	}

	public void setMb_password_a(String mb_password_a) {
		this.mb_password_a = mb_password_a;
	}

	public int getMb_level() {
		return mb_level;
	}

	public void setMb_level(int mb_level) {
		this.mb_level = mb_level;
	}

	public String getMb_jumin() {
		return mb_jumin;
	}

	public void setMb_jumin(String mb_jumin) {
		this.mb_jumin = mb_jumin;
	}

	public char getMb_sex() {
		return mb_sex;
	}

	public void setMb_sex(char mb_sex) {
		this.mb_sex = mb_sex;
	}

	public String getMb_birth() {
		return mb_birth;
	}

	public void setMb_birth(String mb_birth) {
		this.mb_birth = mb_birth;
	}

	public String getMb_tel() {
		return mb_tel;
	}

	public void setMb_tel(String mb_tel) {
		this.mb_tel = mb_tel;
	}

	public String getMb_hp() {
		return mb_hp;
	}

	public void setMb_hp(String mb_hp) {
		this.mb_hp = mb_hp;
	}

	public char getMb_zip1() {
		return mb_zip1;
	}

	public void setMb_zip1(char mb_zip1) {
		this.mb_zip1 = mb_zip1;
	}

	public char getMb_zip2() {
		return mb_zip2;
	}

	public void setMb_zip2(char mb_zip2) {
		this.mb_zip2 = mb_zip2;
	}

	public String getMb_addr1() {
		return mb_addr1;
	}

	public void setMb_addr1(String mb_addr1) {
		this.mb_addr1 = mb_addr1;
	}

	public String getMb_addr2() {
		return mb_addr2;
	}

	public void setMb_addr2(String mb_addr2) {
		this.mb_addr2 = mb_addr2;
	}

	public String getMb_signature() {
		return mb_signature;
	}

	public void setMb_signature(String mb_signature) {
		this.mb_signature = mb_signature;
	}

	public String getMb_recommend() {
		return mb_recommend;
	}

	public void setMb_recommend(String mb_recommend) {
		this.mb_recommend = mb_recommend;
	}

	public int getMb_point() {
		return mb_point;
	}

	public void setMb_point(int mb_point) {
		this.mb_point = mb_point;
	}

	public Timestamp getMb_today_login() {
		return mb_today_login;
	}

	public void setMb_today_login(Timestamp mb_today_login) {
		this.mb_today_login = mb_today_login;
	}

	public String getMb_login_ip() {
		return mb_login_ip;
	}

	public void setMb_login_ip(String mb_login_ip) {
		this.mb_login_ip = mb_login_ip;
	}

	public Timestamp getMb_datetime() {
		return mb_datetime;
	}

	public void setMb_datetime(Timestamp mb_datetime) {
		this.mb_datetime = mb_datetime;
	}

	public String getMb_ip() {
		return mb_ip;
	}

	public void setMb_ip(String mb_ip) {
		this.mb_ip = mb_ip;
	}

	public String getMb_leave_date() {
		return mb_leave_date;
	}

	public void setMb_leave_date(String mb_leave_date) {
		this.mb_leave_date = mb_leave_date;
	}

	public String getMb_intercept_date() {
		return mb_intercept_date;
	}

	public void setMb_intercept_date(String mb_intercept_date) {
		this.mb_intercept_date = mb_intercept_date;
	}

	public Timestamp getMb_email_certify() {
		return mb_email_certify;
	}

	public void setMb_email_certify(Timestamp mb_email_certify) {
		this.mb_email_certify = mb_email_certify;
	}

	public String getMb_memo() {
		return mb_memo;
	}

	public void setMb_memo(String mb_memo) {
		this.mb_memo = mb_memo;
	}

	public String getMb_lost_certify() {
		return mb_lost_certify;
	}

	public void setMb_lost_certify(String mb_lost_certify) {
		this.mb_lost_certify = mb_lost_certify;
	}

	public int getMb_mailling() {
		return mb_mailling;
	}

	public void setMb_mailling(int mb_mailling) {
		this.mb_mailling = mb_mailling;
	}

	public int getMb_sms() {
		return mb_sms;
	}

	public void setMb_sms(int mb_sms) {
		this.mb_sms = mb_sms;
	}

	public int getMb_open() {
		return mb_open;
	}

	public void setMb_open(int mb_open) {
		this.mb_open = mb_open;
	}

	public Timestamp getMb_open_date() {
		return mb_open_date;
	}

	public void setMb_open_date(Timestamp mb_open_date) {
		this.mb_open_date = mb_open_date;
	}

	public String getMb_profile() {
		return mb_profile;
	}

	public void setMb_profile(String mb_profile) {
		this.mb_profile = mb_profile;
	}

	public String getMb_memo_call() {
		return mb_memo_call;
	}

	public void setMb_memo_call(String mb_memo_call) {
		this.mb_memo_call = mb_memo_call;
	}

	public String getMb_1() {
		return mb_1;
	}

	public void setMb_1(String mb_1) {
		this.mb_1 = mb_1;
	}

	public String getMb_2() {
		return mb_2;
	}

	public void setMb_2(String mb_2) {
		this.mb_2 = mb_2;
	}

	public String getMb_3() {
		return mb_3;
	}

	public void setMb_3(String mb_3) {
		this.mb_3 = mb_3;
	}

	public String getMb_4() {
		return mb_4;
	}

	public void setMb_4(String mb_4) {
		this.mb_4 = mb_4;
	}

	public String getMb_5() {
		return mb_5;
	}

	public void setMb_5(String mb_5) {
		this.mb_5 = mb_5;
	}

	public String getMb_6() {
		return mb_6;
	}

	public void setMb_6(String mb_6) {
		this.mb_6 = mb_6;
	}

	public String getMb_7() {
		return mb_7;
	}

	public void setMb_7(String mb_7) {
		this.mb_7 = mb_7;
	}

	public String getMb_8() {
		return mb_8;
	}

	public void setMb_8(String mb_8) {
		this.mb_8 = mb_8;
	}

	public String getMb_9() {
		return mb_9;
	}

	public void setMb_9(String mb_9) {
		this.mb_9 = mb_9;
	}

	public String getMb_10() {
		return mb_10;
	}

	public void setMb_10(String mb_10) {
		this.mb_10 = mb_10;
	}
}
