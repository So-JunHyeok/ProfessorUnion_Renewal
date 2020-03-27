package com.kpu.professorunion.model;

public class Mail {
	private String setform;
	private String tomail;
	private String title;
	private String content;
	public String getSetform() {
		return setform;
	}
	public void setSetform(String setform) {
		this.setform = setform;
	}
	public String getTomail() {
		return tomail;
	}
	public void setTomail(String tomail) {
		this.tomail = tomail;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Mail(String setform, String tomail, String title, String content) {
		super();
		this.setform = setform;
		this.tomail = tomail;
		this.title = title;
		this.content = content;
	}
	public Mail() {
		// TODO Auto-generated constructor stub
	}
}
