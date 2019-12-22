package com.mvc.vo;

import java.sql.Date;

public class Vo_Funding {

	private int fund_no;
	private int fund_catd_no;
	private String fund_front_img;
	private String fund_title;
	private String fund_creater;
	private String fund_content;
	private int fund_con_count;
	private int fund_target_price;
	private Date fund_regdate;
	private Date fund_deadline;
	private String fund_sof;

	public Vo_Funding() {
		super();

	}

	public Vo_Funding(int fund_no, int fund_catd_no, String fund_front_img, String fund_title, String fund_creater,
			String fund_content, int fund_con_count, int fund_target_price, Date fund_regdate, Date fund_deadline,
			String fund_sof) {
		super();
		this.fund_no = fund_no;
		this.fund_catd_no = fund_catd_no;
		this.fund_front_img = fund_front_img;
		this.fund_title = fund_title;
		this.fund_creater = fund_creater;
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

	public int getFund_catd_no() {
		return fund_catd_no;
	}

	public void setFund_catd_no(int fund_catd_no) {
		this.fund_catd_no = fund_catd_no;
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

	public String getFund_creater() {
		return fund_creater;
	}

	public void setFund_creater(String fund_creater) {
		this.fund_creater = fund_creater;
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
		return "Vo_Funding [fund_no=" + fund_no + ", fund_catd_no=" + fund_catd_no + ", fund_front_img="
				+ fund_front_img + ", fund_title=" + fund_title + ", fund_creater=" + fund_creater + ", fund_content="
				+ fund_content + ", fund_con_count=" + fund_con_count + ", fund_target_price=" + fund_target_price
				+ ", fund_regdate=" + fund_regdate + ", fund_deadline=" + fund_deadline + ", fund_sof=" + fund_sof
				+ "]";
	}

}
