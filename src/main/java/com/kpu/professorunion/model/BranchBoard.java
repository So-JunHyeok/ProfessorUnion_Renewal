package com.kpu.professorunion.model;

public class BranchBoard {
	private int branchNum;
	private String branchArea;
	private String branchPosition;
	private String branchName;
	private String branchUni;
	private String branchMail;
	private String branchKind;
	
	public BranchBoard() {
		
	}

	public BranchBoard(int branchNum, String branchArea, String branchPosition, String branchName, String branchUni,
			String branchMail, String branchKind) {
		this.branchNum = branchNum;
		this.branchArea = branchArea;
		this.branchPosition = branchPosition;
		this.branchName = branchName;
		this.branchUni = branchUni;
		this.branchMail = branchMail;
		this.branchKind = branchKind;
	}

	public int getBranchNum() {
		return branchNum;
	}

	public void setBranchNum(int branchNum) {
		this.branchNum = branchNum;
	}

	public String getBranchArea() {
		return branchArea;
	}

	public void setBranchArea(String branchArea) {
		this.branchArea = branchArea;
	}

	public String getBranchPosition() {
		return branchPosition;
	}

	public void setBranchPosition(String branchPosition) {
		this.branchPosition = branchPosition;
	}

	public String getBranchName() {
		return branchName;
	}

	public void setBranchName(String branchName) {
		this.branchName = branchName;
	}

	public String getBranchUni() {
		return branchUni;
	}

	public void setBranchUni(String branchUni) {
		this.branchUni = branchUni;
	}

	public String getBranchMail() {
		return branchMail;
	}

	public void setBranchMail(String branchMail) {
		this.branchMail = branchMail;
	}

	public String getBranchKind() {
		return branchKind;
	}

	public void setBranchKind(String branchKind) {
		this.branchKind = branchKind;
	}
}
