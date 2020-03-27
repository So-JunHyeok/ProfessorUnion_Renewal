package com.kpu.professorunion.model;

import java.sql.Date;

public class AgonyComment {

	private int cnum;
	private int anum;
	private String cid;
	private String ccontent;
	private Date cdate;
	public int getCnum() {
		return cnum;
	}
	public void setCnum(int cnum) {
		this.cnum = cnum;
	}
	public int getAnum() {
		return anum;
	}
	public void setAnum(int anum) {
		this.anum = anum;
	}
	public String getCid() {
		return cid;
	}
	public void setCid(String cid) {
		this.cid = cid;
	}
	public String getCcontent() {
		return ccontent;
	}
	public void setCcontent(String ccontent) {
		this.ccontent = ccontent;
	}
	public Date getCdate() {
		return cdate;
	}
	public void setCdate(Date cdate) {
		this.cdate = cdate;
	}
}
