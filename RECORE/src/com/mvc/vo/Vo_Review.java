package com.mvc.vo;

import java.sql.Date;

public class Vo_Review {

	private int prod_no;			//상품 번호
	private int catd_no;			//상품카테고리 번호
	private String prod_name;		//상품 이름
	private String prod_front_img;	//상품 대표 이미지
	private String acc_id;			//계정 아이디
	private int order_no;			//주문 번호
	private int prod_id;			//상품 아이디
	private String review_title;	//제목
	private String review_content;	//내용
	private int review_rate;		//평점
	private Date review_regdate;	//작성날짜
	private String review_recon;	//답글내용
	
	public Vo_Review() {
		super();
	}

	public Vo_Review(int prod_no, int catd_no, String prod_name, String prod_front_img, String acc_id, int order_no,
			int prod_id, String review_title, String review_content, int review_rate, Date review_regdate,
			String review_recon) {
		super();
		this.prod_no = prod_no;
		this.catd_no = catd_no;
		this.prod_name = prod_name;
		this.prod_front_img = prod_front_img;
		this.acc_id = acc_id;
		this.order_no = order_no;
		this.prod_id = prod_id;
		this.review_title = review_title;
		this.review_content = review_content;
		this.review_rate = review_rate;
		this.review_regdate = review_regdate;
		this.review_recon = review_recon;
	}

	public int getProd_no() {
		return prod_no;
	}

	public void setProd_no(int prod_no) {
		this.prod_no = prod_no;
	}

	public int getCatd_no() {
		return catd_no;
	}

	public void setCatd_no(int catd_no) {
		this.catd_no = catd_no;
	}

	public String getProd_name() {
		return prod_name;
	}

	public void setProd_name(String prod_name) {
		this.prod_name = prod_name;
	}

	public String getProd_front_img() {
		return prod_front_img;
	}

	public void setProd_front_img(String prod_front_img) {
		this.prod_front_img = prod_front_img;
	}

	public String getAcc_id() {
		return acc_id;
	}

	public void setAcc_id(String acc_id) {
		this.acc_id = acc_id;
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

	public String getReview_recon() {
		return review_recon;
	}

	public void setReview_recon(String review_recon) {
		this.review_recon = review_recon;
	}

	@Override
	public String toString() {
		return "Vo_Review [prod_no=" + prod_no + ", catd_no=" + catd_no + ", prod_name=" + prod_name
				+ ", prod_front_img=" + prod_front_img + ", acc_id=" + acc_id + ", order_no=" + order_no + ", prod_id="
				+ prod_id + ", review_title=" + review_title + ", review_content=" + review_content + ", review_rate="
				+ review_rate + ", review_regdate=" + review_regdate + ", review_recon=" + review_recon + "]";
	}


}
