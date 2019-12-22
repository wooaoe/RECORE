package com.mvc.vo;

import java.sql.Date;

public class Vo_Order_Num {

	private int order_no; // 주문번호
	private int acc_no; // 계정 번호
	private String order_addr; // 배송주소
	private Date order_date; // 주문 날짜

	public Vo_Order_Num() {
		super();
	}

	public Vo_Order_Num(int order_no, int acc_no, String order_addr, Date order_date) {
		super();
		this.order_no = order_no;
		this.acc_no = acc_no;
		this.order_addr = order_addr;
		this.order_date = order_date;
	}

	public int getOrder_no() {
		return order_no;
	}

	public void setOrder_no(int order_no) {
		this.order_no = order_no;
	}

	public int getAcc_no() {
		return acc_no;
	}

	public void setAcc_no(int acc_no) {
		this.acc_no = acc_no;
	}

	public String getOrder_addr() {
		return order_addr;
	}

	public void setOrder_addr(String order_addr) {
		this.order_addr = order_addr;
	}

	public Date getOrder_date() {
		return order_date;
	}

	public void setOrder_date(Date order_date) {
		this.order_date = order_date;
	}

	@Override
	public String toString() {
		return "Vo_Order_Num [order_no=" + order_no + ", acc_no=" + acc_no + ", order_addr=" + order_addr
				+ ", order_date=" + order_date + "]";
	}

}
