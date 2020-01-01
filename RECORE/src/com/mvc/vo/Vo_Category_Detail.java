package com.mvc.vo;

public class Vo_Category_Detail {

	private int catd_id; // 구분번호
	private int catd_no; // 카테고리번호SEQ
	private String catd_name; // 세부카테고리명
	private String catd_yn; // 현재사용여부
	private String catd_note; // 주석

	public Vo_Category_Detail() {
		super();
	}

	public Vo_Category_Detail(int catd_id, int catd_no, String catd_name, String catd_yn, String catd_note) {
		super();
		this.catd_id = catd_id;
		this.catd_no = catd_no;
		this.catd_name = catd_name;
		this.catd_yn = catd_yn;
		this.catd_note = catd_note;
	}

	public int getCatd_id() {
		return catd_id;
	}

	public void setCatd_id(int catd_id) {
		this.catd_id = catd_id;
	}

	public int getCatd_no() {
		return catd_no;
	}

	public void setCatd_no(int catd_no) {
		this.catd_no = catd_no;
	}

	public String getCatd_name() {
		return catd_name;
	}

	public void setCatd_name(String catd_name) {
		this.catd_name = catd_name;
	}

	public String getCatd_yn() {
		return catd_yn;
	}

	public void setCatd_yn(String catd_yn) {
		this.catd_yn = catd_yn;
	}

	public String getCatd_note() {
		return catd_note;
	}

	public void setCatd_note(String catd_note) {
		this.catd_note = catd_note;
	}

	@Override
	public String toString() {
		return "Vo_Category_Detail [catd_id=" + catd_id + ", catd_no=" + catd_no + ", catd_name=" + catd_name
				+ ", catd_yn=" + catd_yn + ", catd_note=" + catd_note + "]";
	}

}
