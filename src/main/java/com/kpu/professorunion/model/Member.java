package com.kpu.professorunion.model;

import java.sql.Timestamp;
import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.SpringSecurityCoreVersion;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;

public class Member {

	private static final long serialVersionUID = SpringSecurityCoreVersion.SERIAL_VERSION_UID;
	private String check; // 맴버 체크를 위한 변수
	private String mb_id;
	private String mb_password;
	private String mb_nick;
	private String mb_email;
	private String mb_name;
	private String mb_birth;
	private String mb_job;
	private String mb_sex;
	private String mb_profile;
	private String mb_login_ip;
	private String mb_today_login;
	private Timestamp mb_email_certify;
	private String mb_leave_date;
	private int mb_level;
	private int mb_mailling;
	private int mb_open;
	private String mb_intercept_date;
	private boolean enabled;
	private boolean accountNonExpired;
	private boolean credentialsNonExpired;
	private boolean accountNonLocked;
	private Collection<? extends GrantedAuthority> authorities;
	
	
	
	
	
	public String getCheck() {
		return check;
	}
	public void setCheck(String check) {
		this.check = check;
	}
	public String getMb_intercept_date() {
		return mb_intercept_date;
	}
	public void setMb_intercept_date(String mb_intercept_date) {
		this.mb_intercept_date = mb_intercept_date;
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
	public String getMb_nick() {
		return mb_nick;
	}
	public void setMb_nick(String mb_nick) {
		this.mb_nick = mb_nick;
	}
	public String getMb_email() {
		return mb_email;
	}
	public void setMb_email(String mb_email) {
		this.mb_email = mb_email;
	}
	public String getMb_name() {
		return mb_name;
	}
	public void setMb_name(String mb_name) {
		this.mb_name = mb_name;
	}
	public String getMb_birth() {
		return mb_birth;
	}
	public void setMb_birth(String mb_birth) {
		this.mb_birth = mb_birth;
	}
	public String getMb_job() {
		return mb_job;
	}
	public void setMb_job(String mb_job) {
		this.mb_job = mb_job;
	}
	public String getMb_sex() {
		return mb_sex;
	}
	public void setMb_sex(String mb_sex) {
		this.mb_sex = mb_sex;
	}
	public String getMb_profile() {
		return mb_profile;
	}
	public void setMb_profile(String mb_profile) {
		this.mb_profile = mb_profile;
	}
	public String getMb_login_ip() {
		return mb_login_ip;
	}
	public void setMb_login_ip(String mb_login_ip) {
		this.mb_login_ip = mb_login_ip;
	}
	public String getMb_today_login() {
		return mb_today_login;
	}
	public void setMb_today_login(String mb_today_login) {
		this.mb_today_login = mb_today_login;
	}
	public Timestamp getMb_email_certify() {
		return mb_email_certify;
	}
	public void setMb_email_certify(Timestamp mb_email_certify) {
		this.mb_email_certify = mb_email_certify;
	}
	public String getMb_leave_date() {
		return mb_leave_date;
	}
	public void setMb_leave_date(String mb_leave_date) {
		this.mb_leave_date = mb_leave_date;
	}
	public int getMb_level() {
		return mb_level;
	}
	public void setMb_level(int mb_level) {
		this.mb_level = mb_level;
	}
	public int getMb_mailling() {
		return mb_mailling;
	}
	public void setMb_mailling(int mb_mailling) {
		this.mb_mailling = mb_mailling;
	}
	public int getMb_open() {
		return mb_open;
	}
	public void setMb_open(int mb_open) {
		this.mb_open = mb_open;
	}
	public boolean isEnabled() {
		return enabled;
	}
	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}
	public boolean isAccountNonExpired() {
		return accountNonExpired;
	}
	public void setAccountNonExpired(boolean accountNonExpired) {
		this.accountNonExpired = accountNonExpired;
	}
	public boolean isCredentialsNonExpired() {
		return credentialsNonExpired;
	}
	public void setCredentialsNonExpired(boolean credentialsNonExpired) {
		this.credentialsNonExpired = credentialsNonExpired;
	}
	public boolean isAccountNonLocked() {
		return accountNonLocked;
	}
	public void setAccountNonLocked(boolean accountNonLocked) {
		this.accountNonLocked = accountNonLocked;
	}
	public Collection<? extends GrantedAuthority> getAuthorities() {
		return authorities;
	}
	public void setAuthorities(Collection<? extends GrantedAuthority> authorities) {
		this.authorities = authorities;
	}
	public Member() {
		// TODO Auto-generated constructor stub
	}
	
	public UserDetails user(String username, String password, boolean enabled, boolean accountNonExpired, boolean credentialsNonExpired, boolean accountNonLocked, Collection<? extends GrantedAuthority> authorities) {
		User user = new User(username, password, enabled, accountNonExpired, credentialsNonExpired, accountNonLocked, authorities);
		return user;
	}
	  /*
	   UserDetails인터페이스만 상속받아 VO객체를 만들어도 상관이 없지만
	   User클레스를 이용하여 확장을 할경우 중복세션 방지등의 기능을 따로 구현하지 않아도
	   적용시킬수 있어 User클레스를 직접 확장
	   User클래스를 상속하려 했으나 default생성자를 만들 수 없어,
	   UserDetails클래스를 return하는 user 메소드를 생성
	*/   

}
