package com.mvc.vo;

import java.sql.Date;

public class Vo_Funding {

	private int fund_no; //펀딩 번호
	private String fund_front_img; //펀딩 대표 이미지
	private String fund_title; //제목
	private String fund_creator; //작성자
	private String fund_content; //내용
	private int fund_con_count; //내용 카운트
	private int fund_target_price; //목표금액
	private Date fund_regdate; //등록날짜
	private Date fund_deadline; //마감기한
	private String fund_sof; //펀딩 성공여부 

	

	public Vo_Funding() {
		super();

	}

	public Vo_Funding(int fund_no,  String fund_front_img, String fund_title, String fund_creator,
			String fund_content, int fund_con_count, int fund_target_price, Date fund_regdate, Date fund_deadline,
			String fund_sof) {
		super();
		this.fund_no = fund_no;
		
		this.fund_front_img = fund_front_img;
		this.fund_title = fund_title;
		this.fund_creator = fund_creator;
		this.fund_content = fund_content;
		this.fund_con_count = fund_con_count;
		this.fund_target_price = fund_target_price;
		this.fund_regdate = fund_regdate;
		this.fund_deadline = fund_deadline;
		this.fund_sof = fund_sof;
		
	}

	public int getFund_no() {
		return fund_no;
	}

	public void setFund_no(int fund_no) {
		this.fund_no = fund_no;
	}

	

	public String getFund_front_img() {
		return fund_front_img;
	}

	public void setFund_front_img(String fund_front_img) {
		this.fund_front_img = fund_front_img;
	}

	public String getFund_title() {
		return fund_title;
	}

	public void setFund_title(String fund_title) {
		this.fund_title = fund_title;
	}

	public String getFund_creator() {
		return fund_creator;
	}

	public void setFund_creator(String fund_creator) {
		this.fund_creator = fund_creator;
	}

	public String getFund_content() {
		return fund_content;
	}

	public void setFund_content(String fund_content) {
		this.fund_content = fund_content;
	}

	public int getFund_con_count() {
		return fund_con_count;
	}

	public void setFund_con_count(int fund_con_count) {
		this.fund_con_count = fund_con_count;
	}

	public int getFund_target_price() {
		return fund_target_price;
	}

	public void setFund_target_price(int fund_target_price) {
		this.fund_target_price = fund_target_price;
	}

	public Date getFund_regdate() {
		return fund_regdate;
	}

	public void setFund_regdate(Date fund_regdate) {
		this.fund_regdate = fund_regdate;
	}

	public Date getFund_deadline() {
		return fund_deadline;
	}

	public void setFund_deadline(Date fund_deadline) {
		this.fund_deadline = fund_deadline;
	}

	public String getFund_sof() {
		return fund_sof;
	}

	public void setFund_sof(String fund_sof) {
		this.fund_sof = fund_sof;
	}
	

	@Override
	public String toString() {
		return "Vo_Funding [fund_no=" + fund_no  + ", fund_front_img="
				+ fund_front_img + ", fund_title=" + fund_title + ", fund_creator=" + fund_creator + ", fund_content="
				+ fund_content + ", fund_con_count=" + fund_con_count + ", fund_target_price=" + fund_target_price
				+ ", fund_regdate=" + fund_regdate + ", fund_deadline=" + fund_deadline + ", fund_sof=" + fund_sof
				+ "]";
	}

}
