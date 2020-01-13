package com.mvc.vo;

import java.sql.Date;

public class Vo_Manager_Payment {

	private int ppm_no; // 입출력 번호
	private int prod_id; // 상품 아이디
	private int acc_no; // 계정 번호
	private String ppm_io; // 입출력 구분
	private int ppm_amount; // 수량
	private Date ppm_date; // 날짜

	
	public Vo_Manager_Payment() {
		super();
	}

	public Vo_Manager_Payment(int ppm_no, int prod_id, int acc_no, String ppm_io, int ppm_amount, Date ppm_date) {
		super();
		this.ppm_no = ppm_no;
		this.prod_id = prod_id;
		this.acc_no = acc_no;
		this.ppm_io = ppm_io;
		this.ppm_amount = ppm_amount;
		this.ppm_date = ppm_date;
	}
	
	//insert In/Out
	public Vo_Manager_Payment(int prod_id, int acc_no, String ppm_io, int ppm_amount) {
		super();
		this.prod_id = prod_id;
		this.acc_no = acc_no;
		this.ppm_io = ppm_io;
		this.ppm_amount = ppm_amount;
	}

	public int getPpm_no() {
		return ppm_no;
	}

	public void setPpm_no(int ppm_no) {
		this.ppm_no = ppm_no;
	}

	public int getProd_id() {
		return prod_id;
	}

	public void setProd_id(int prod_id) {
		this.prod_id = prod_id;
	}

	public int getAcc_no() {
		return acc_no;
	}

	public void setAcc_no(int acc_no) {
		this.acc_no = acc_no;
	}

	public String getPpm_io() {
		return ppm_io;
	}

	public void setPpm_io(String ppm_io) {
		this.ppm_io = ppm_io;
	}

	public int getPpm_amount() {
		return ppm_amount;
	}

	public void setPpm_amount(int ppm_amount) {
		this.ppm_amount = ppm_amount;
	}

	public Date getPpm_date() {
		return ppm_date;
	}

	public void setPpm_date(Date ppm_date) {
		this.ppm_date = ppm_date;
	}

	@Override
	public String toString() {
		return "Vo_Manager_Payment [ppm_no=" + ppm_no + ", prod_id=" + prod_id + ", acc_no=" + acc_no + ", ppm_io="
				+ ppm_io + ", ppm_amount=" + ppm_amount + ", ppm_date=" + ppm_date + "]";
	}

}
