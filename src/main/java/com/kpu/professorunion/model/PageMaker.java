package com.kpu.professorunion.model;

public class PageMaker {

	private int totalCount;
	private int startPage;
	private int endPage;
	private boolean prev;
	private boolean next;
	
	private int displayPageNum = 10;	// 하단의 페이지 번호의 갯수를 의미한다
	
	private Criteria criteria;
	
	public void setCriteria(Criteria criteria) {
		this.criteria = criteria;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		calcData();
	}
	private void calcData() {	// 게시글의 전체 갯수가 설정되는 시점에 메서드를 호출하여 필요한 데이터를 계산한다
		// 끝 페이지 번호 = Math.ceil(현재페이지 / 페이지 번호의 갯수) * 페이지 번호의 갯수
		endPage = (int) (Math.ceil(criteria.getPage() / (double) displayPageNum) * displayPageNum);
		
		// 시작 페이지 번호 = (끝 페이지 번호 - 페이지 번호의 갯수) + 1
		startPage = (endPage - displayPageNum) + 1;
		
		// 끝 페이지 번호 보정 계산식
		// 끝 페이지 번호 = Math.ceil(전체 게시글 갯수 / 페이지 당 출력할 게시글의 갯수)
		int tempEndPage = (int) (Math.ceil(totalCount / (double) criteria.getPerPageNum()));
		
		// 이전의 결과 값과 보정된 결과 값을 비교 후, 보정한 결과 값을 페이지 끝 번호 변수에 저장
		if(endPage > tempEndPage) {
			endPage = tempEndPage;
		}
		
		// 이전 링크의 경우 시작 페이지 번호가 1인지 아닌지 검사하는 것으로 충분하다 상함 연산자를 통해 1이면 false값을 아니면 true값을 가지도록 하면 된다.
		prev = startPage == 1 ? false : true;
		
		// 다음 링크 = 끝페이지 * 페이지 당 출력할 게시글의 갯수 >= 전체 게시글의 갯수 ? : false true
		next = endPage * criteria.getPerPageNum() >= totalCount ? false : true;
	}


	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public boolean isPrev() {
		return prev;
	}

	public void setPrev(boolean prev) {
		this.prev = prev;
	}

	public boolean isNext() {
		return next;
	}

	public void setNext(boolean next) {
		this.next = next;
	}

	public int getDisplayPageNum() {
		return displayPageNum;
	}

	public void setDisplayPageNum(int displayPageNum) {
		this.displayPageNum = displayPageNum;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public Criteria getCriteria() {
		return criteria;
	}
}
