package com.mvc.vo;

public class Vo_QnA_Search {
	private int prod_no; // 상품 번호
	private int prod_id; // 상품 아이디
	private int prod_catd; // 카테고리 번호
	private String prod_front_img; // 상품 대표이미지
	private String prod_name; // 상품명
	
	public Vo_QnA_Search() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Vo_QnA_Search(int prod_no, int prod_id, int prod_catd, String prod_front_img, String prod_name) {
		super();
		this.prod_no = prod_no;
		this.prod_id = prod_id;
		this.prod_catd = prod_catd;
		this.prod_front_img = prod_front_img;
		this.prod_name = prod_name;
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

	public int getProd_catd() {
		return prod_catd;
	}

	public void setProd_catd(int prod_catd) {
		this.prod_catd = prod_catd;
	}

	public String getProd_front_img() {
		return prod_front_img;
	}

	public void setProd_front_img(String prod_front_img) {
		this.prod_front_img = prod_front_img;
	}

	public String getProd_name() {
		return prod_name;
	}

	public void setProd_name(String prod_name) {
		this.prod_name = prod_name;
	}

	@Override
	public String toString() {
		return "Vo_QnA_Search [prod_no=" + prod_no + ", prod_id=" + prod_id + ", prod_catd=" + prod_catd
				+ ", prod_front_img=" + prod_front_img + ", prod_name=" + prod_name + "]";
	}
	
	
	
	
}
