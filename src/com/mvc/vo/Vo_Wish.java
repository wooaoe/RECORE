package com.mvc.vo;

public class Vo_Wish {

	private int acc_no; // 계정 번호
	private int prod_no; // 상품 번호

	public Vo_Wish() {
		super();
	}

	public Vo_Wish(int acc_no, int prod_no) {
		super();
		this.acc_no = acc_no;
		this.prod_no = prod_no;
	}

	public int getAcc_no() {
		return acc_no;
	}

	public void setAcc_no(int acc_no) {
		this.acc_no = acc_no;
	}

	public int getProd_no() {
		return prod_no;
	}

	public void setProd_no(int prod_no) {
		this.prod_no = prod_no;
	}

	@Override
	public String toString() {
		return "Vo_Wish [acc_no=" + acc_no + ", prod_no=" + prod_no + "]";
	}

}
