package com.mvc.vo;

public class Vo_Cart {

	private int acc_no; // 계정 번호
	private int prod_id; // 상품 아이디
	private int prod_no; // 상품 번호
	private String prod_fornt_img; //대표이미지
	private String prod_brand; //브랜드명
	private String prod_name; //상품명
	private int prod_price; //가격
	private int cart_amount; // 수량

	public Vo_Cart() {
		super();
	}

	public Vo_Cart(int acc_no, int prod_id, int prod_no, String prod_fornt_img, String prod_brand, String prod_name,
			int prod_price, int cart_amount) {
		super();
		this.acc_no = acc_no;
		this.prod_id = prod_id;
		this.prod_no = prod_no;
		this.prod_fornt_img = prod_fornt_img;
		this.prod_brand = prod_brand;
		this.prod_name = prod_name;
		this.prod_price = prod_price;
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

	public int getProd_no() {
		return prod_no;
	}

	public void setProd_no(int prod_no) {
		this.prod_no = prod_no;
	}

	public String getProd_fornt_img() {
		return prod_fornt_img;
	}

	public void setProd_fornt_img(String prod_fornt_img) {
		this.prod_fornt_img = prod_fornt_img;
	}

	public String getProd_brand() {
		return prod_brand;
	}

	public void setProd_brand(String prod_brand) {
		this.prod_brand = prod_brand;
	}

	public String getProd_name() {
		return prod_name;
	}

	public void setProd_name(String prod_name) {
		this.prod_name = prod_name;
	}

	public int getProd_price() {
		return prod_price;
	}

	public void setProd_price(int prod_price) {
		this.prod_price = prod_price;
	}

	public int getCart_amount() {
		return cart_amount;
	}

	public void setCart_amount(int cart_amount) {
		this.cart_amount = cart_amount;
	}

	@Override
	public String toString() {
		return "Vo_Cart [acc_no=" + acc_no + ", prod_id=" + prod_id + ", prod_no=" + prod_no + ", prod_fornt_img="
				+ prod_fornt_img + ", prod_brand=" + prod_brand + ", prod_name=" + prod_name + ", prod_price="
				+ prod_price + ", cart_amount=" + cart_amount + "]";
	}

}
