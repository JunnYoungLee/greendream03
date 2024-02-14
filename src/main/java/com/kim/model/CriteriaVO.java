package com.kim.model;

public class CriteriaVO {

	// 페이지 번호
	private int pageNum;
	// 한 페이지당 게시물 개수
	private int amount;

	// 생성자
	public CriteriaVO() {
		this(1,10);
	}
	public CriteriaVO(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
	
	public int getPageNum() {
		return pageNum;
	}
	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	
	@Override
	public String toString() {
		return "CriteriaVO [pageNum=" + pageNum + ", amount=" + amount + "]";
	}
	
}
