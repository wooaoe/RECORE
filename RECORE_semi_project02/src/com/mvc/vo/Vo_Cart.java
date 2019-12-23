package com.mvc.vo;

public class Vo_Cart {

	private int acc_no; // 계정 번호
	private int prod_id; // 상품 아이디
	private int cart_amount; // 수량

	public Vo_Cart() {
		super();
	}
	

	public Vo_Cart(int acc_no, int prod_id, int cart_amount) {
		super();
		this.acc_no = acc_no;
		this.prod_id = prod_id;
		this.cart_amount = cart_amount;
	}

	public int getAcc_no() {
		return acc_no;
	}

	public void setAcc_no(int acc_no) {
		this.acc_no = acc_no;
	}

	public int getProd_id() {
		return prod_id;
	}

	public void setProd_id(int prod_id) {
		this.prod_id = prod_id;
	}

	public int getCart_amount() {
		return cart_amount;
	}

	public void setCart_amount(int cart_amount) {
		this.cart_amount = cart_amount;
	}

	@Override
	public String toString() {
		return "Vo_Cart [acc_no=" + acc_no + ", prod_id=" + prod_id + ", cart_amount=" + cart_amount + "]";
	}

}
