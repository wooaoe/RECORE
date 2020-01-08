package com.mvc.vo;

public class Vo_Manager_ProdOption {

	private String prod_name;	//상품 이름
	private int catd_no;		//상품  카테고리 번호
	private int prod_no;		//상품 번호
	private int prod_id;		//상품아이디
	private String prod_color;	//상품 색상
	private String prod_size;	//상품 사이즈
	private int prod_stock;		//재고
	
	public Vo_Manager_ProdOption() {
		super();
	}

	public Vo_Manager_ProdOption(String prod_name, int catd_no, int prod_no, int prod_id, String prod_color,
			String prod_size, int prod_stock) {
		super();
		this.prod_name = prod_name;
		this.catd_no = catd_no;
		this.prod_no = prod_no;
		this.prod_id = prod_id;
		this.prod_color = prod_color;
		this.prod_size = prod_size;
		this.prod_stock = prod_stock;
	}

	public String getProd_name() {
		return prod_name;
	}

	public void setProd_name(String prod_name) {
		this.prod_name = prod_name;
	}

	public int getCatd_no() {
		return catd_no;
	}

	public void setCatd_no(int catd_no) {
		this.catd_no = catd_no;
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
		return "Vo_Manager_ProdOption [prod_name=" + prod_name + ", catd_no=" + catd_no + ", prod_no=" + prod_no
				+ ", prod_id=" + prod_id + ", prod_color=" + prod_color + ", prod_size=" + prod_size + ", prod_stock="
				+ prod_stock + "]";
	}

}
