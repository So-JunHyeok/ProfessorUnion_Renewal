package com.kpu.professorunion.model;

import java.sql.Date;

public class Agony {
	
	private int anum;
	private String aid;
	private String aname;
	private String atitle;
	private String acontent;
	private Date adate;
	private String authority;
	private String auniversity;
	private String aread = "N";
	
	
	public String getAname() {
		return aname;
	}

	public void setAname(String aname) {
		this.aname = aname;
	}

	public String getAuniversity() {
		return auniversity;
	}

	public void setAuniversity(String auniversity) {
		this.auniversity = auniversity;
	}

	public String getAread() {
		return aread;
	}

	public void setAread(String aread) {
		this.aread = aread;
	}

	public String getAuthority() {
		return authority;
	}

	public void setAuthority(String authority) {
		this.authority = authority;
	}

	public int getAnum() {
		return anum;
	}

	public void setAnum(int anum) {
		this.anum = anum;
	}

	public String getAid() {
		return aid;
	}

	public void setAid(String aid) {
		this.aid = aid;
	}

	public Date getAdate() {
		return adate;
	}

	public void setAdate(Date adate) {
		this.adate = adate;
	}

	public String getAtitle() {
		return atitle;
	}

	public void setAtitle(String atitle) {
		this.atitle = atitle;
	}

	public String getAcontent() {
		return acontent;
	}

	public void setAcontent(String acontent) {
		this.acontent = acontent;
	}
}
