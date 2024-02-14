package com.kim.model;

public class PageVO {

	// 시작번호
	private int startPage;
	// 끝번호
	private int endPage;
	// 이전버튼
	private boolean prev;
	// 다음버튼
	private boolean next;
	// CriteriaVO
	private CriteriaVO cri;
	// board테이블의 전체 게시글 수
	private int total;
	
	// 생성자
	public PageVO(CriteriaVO cri, int total) {
		this.cri = cri;
		this.total = total;
		
		// 끝번호
		//					(	올림			(현재페이지/10.0))	* 10
		this.endPage = (int)(Math.ceil(cri.getPageNum()/10.0)) * 10;
		
		// 시작번호
		//						끝번호 - 9
		// ex) 1=10-9 / 11=20-9 ...
		this.startPage = this.endPage - 9;
		
		// realEnd(마지막 게시물이 속하는 페이지)
		//						올림	((전체게시물 * 1.0)/한 페이지당 게시글 개수
		int realEnd = (int)(Math.ceil((total * 1.0)/cri.getAmount()));
		
		// 마지막 페이지 번호
		// 마시막 게시글 페이지(실제) < 끝번호(수식으로 나온)이면
		// 마시막 게시글 페이지가 적용되도록
		if(realEnd < this.endPage) {
			this.endPage=realEnd;
		}
		
		// 이전버튼
		//	시작번호가 1보다 클 경우 활성화
		this.prev = this.startPage > 1;
		
		// 다음버튼
		// 끝번호가 마지막 페이지번호보다 작을 경우 활성화
		this.next = this.endPage < realEnd;
	
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

	public CriteriaVO getCri() {
		return cri;
	}

	public void setCri(CriteriaVO cri) {
		this.cri = cri;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	@Override
	public String toString() {
		return "PageVO [startPage=" + startPage + ", endPage=" + endPage + ", prev=" + prev + ", next=" + next
				+ ", cri=" + cri + ", total=" + total + "]";
	}
	
}
	
