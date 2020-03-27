package com.kpu.professorunion.model;

public class Criteria {
	
	private int page;	// 현재 페이지 번호
	private int perPageNum;	// 페이지당 출력되는 게시글의 갯수
	private String aid;
	private String ct_id;
	
	// set메서드 : 음수와 같은 잘못된 값이 들어오지 않도록 validation체크를 통해 적절한 값으로 세팅
	// get메서드 : sql mapper가 사용할 get 메서드를 정의
	
	public Criteria() {	// 기본생성자, 현재 페이지를 1, 페이지당 출력할 게시글의 갯수를 15으로 기본 세팅
		this.page = 1;
		this.perPageNum = 15;
	}
	public void setPage(int page) {
		
		if(page <= 0) {
			this.page = 1;
			return;
		}
		
		this.page = page;
	}
	public int getPage() {
		return page;
	}
	public void setPerPageNum(int perPageNum) {
		
		if(perPageNum <= 0 || perPageNum > 100) {
			this.perPageNum = 15;
			return;
		}
		
		this.perPageNum = perPageNum;
	}
	
	public int getPerPageNum() {
		return perPageNum;
	}
	// SQL Mapper의 LIMIT구문에서 현재 페이지의 게시글의 시작위치를 지정할 때 사용한다
	// 예를 들어 10개씩 출력할 경우, 3페이지는 SQL이 LIMIT 20, 10과 같은 형태가 되어야 한다
	public int getPageStart() {
		return (this.page - 1) * perPageNum;
	}
	public String getAid() {
		return aid;
	}
	public void setAid(String aid) {
		this.aid = aid;
	}
	public String getCt_id() {
		return ct_id;
	}
	public void setCt_id(String ct_id) {
		this.ct_id = ct_id;
	}
	
}
