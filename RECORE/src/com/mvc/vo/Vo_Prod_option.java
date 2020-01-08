package com.mvc.vo;

public class Vo_Prod_option {

	private int prod_no; //상품 번호
	private int prod_id; // 상품아이디
	private String prod_color; // 상품 색상
	private String prod_size; // 상품 사이즈
	private int prod_stock; // 재고

	
	public Vo_Prod_option() {
		super();
	}

	public Vo_Prod_option(int prod_no, int prod_id, String prod_color, String prod_size, int prod_stock) {
		super();
		this.prod_no = prod_no;
		this.prod_id = prod_id;
		this.prod_color = prod_color;
		this.prod_size = prod_size;
		this.prod_stock = prod_stock;
	}
	
	public Vo_Prod_option(int prod_no, String prod_color) {
		super();
		this.prod_no = prod_no;
		this.prod_color = prod_color;
	}
	

	public int getProd_no() {
		return prod_no;
	}
	public void setProd_no(int prod_no) {
		this.prod_no = prod_no;
	}
	
	
	public int getProd_id() {
		return prod_id;
	}

	public void setProd_id(int prod_id) {
		this.prod_id = prod_id;
	}

	public String getProd_color() {
		return prod_color;
	}

	public void setProd_color(String prod_color) {
		this.prod_color = prod_color;
	}

	public String getProd_size() {
		return prod_size;
	}

	public void setProd_size(String prod_size) {
		this.prod_size = prod_size;
	}

	public int getProd_stock() {
		return prod_stock;
	}

	public void setProd_stock(int prod_stock) {
		this.prod_stock = prod_stock;
	}

	@Override
	public String toString() {
		return "Vo_Prod_option [prod_no = " + prod_no + ", prod_id=" + prod_id + ", prod_color=" + prod_color + ", prod_size=" + prod_size
				+ ", prod_stock=" + prod_stock + "]";
	}

}
