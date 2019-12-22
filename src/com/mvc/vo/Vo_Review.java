package com.mvc.vo;

import java.sql.Date;

public class Vo_Review {

	private int order_no; // 주문 번호
	private int prod_id; // 상품 아이디
	private String review_title; // 제목
	private String review_content; // 내용
	private int review_rate; // 평점
	private Date review_regdate; // 작성날짜

	public Vo_Review() {
		super();
	}

	public Vo_Review(int order_no, int prod_id, String review_title, String review_content, int review_rate,
			Date review_regdate) {
		super();
		this.order_no = order_no;
		this.prod_id = prod_id;
		this.review_title = review_title;
		this.review_content = review_content;
		this.review_rate = review_rate;
		this.review_regdate = review_regdate;
	}

	public int getOrder_no() {
		return order_no;
	}

	public void setOrder_no(int order_no) {
		this.order_no = order_no;
	}

	public int getProd_id() {
		return prod_id;
	}

	public void setProd_id(int prod_id) {
		this.prod_id = prod_id;
	}

	public String getReview_title() {
		return review_title;
	}

	public void setReview_title(String review_title) {
		this.review_title = review_title;
	}

	public String getReview_content() {
		return review_content;
	}

	public void setReview_content(String review_content) {
		this.review_content = review_content;
	}

	public int getReview_rate() {
		return review_rate;
	}

	public void setReview_rate(int review_rate) {
		this.review_rate = review_rate;
	}

	public Date getReview_regdate() {
		return review_regdate;
	}

	public void setReview_regdate(Date review_regdate) {
		this.review_regdate = review_regdate;
	}

	@Override
	public String toString() {
		return "Vo_Review [order_no=" + order_no + ", prod_id=" + prod_id + ", review_title=" + review_title
				+ ", review_content=" + review_content + ", review_rate=" + review_rate + ", review_regdate="
				+ review_regdate + "]";
	}

}
