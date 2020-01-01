package com.mvc.vo;

import java.sql.Date;

public class Vo_Issue {

	private int iss_no; // 이슈 번호
	private int iss_catd_no; // 이슈 카테고리 번호
	private String iss_front_img; // 대표이미지
	private String iss_th_img; // 썸네일이미지
	private String iss_title; // 제목
	private String iss_writer; // 작성자
	private String iss_content; // 내용
	private int iss_con_count; // 내용카운트
	private Date iss_regdate; // 작성날짜
	private String iss_source; // 출처
	private int iss_view_count; // 조회수
	private String iss_note; // 주석
	

	public Vo_Issue() {
		super();
	}

	public Vo_Issue(int iss_no, int iss_catd_no, String iss_front_img, String iss_th_img, String iss_title,
			String iss_writer, String iss_content, int iss_con_count, Date iss_regdate, String iss_source,
			int iss_view_count, String iss_note) {
		super();
		this.iss_no = iss_no;
		this.iss_catd_no = iss_catd_no;
		this.iss_front_img = iss_front_img;
		this.iss_th_img = iss_th_img;
		this.iss_title = iss_title;
		this.iss_writer = iss_writer;
		this.iss_content = iss_content;
		this.iss_con_count = iss_con_count;
		this.iss_regdate = iss_regdate;
		this.iss_source = iss_source;
		this.iss_view_count = iss_view_count;
		this.iss_note = iss_note;
	}

	public int getIss_no() {
		return iss_no;
	}

	public void setIss_no(int iss_no) {
		this.iss_no = iss_no;
	}

	public int getIss_catd_no() {
		return iss_catd_no;
	}

	public void setIss_catd_no(int iss_catd_no) {
		this.iss_catd_no = iss_catd_no;
	}

	public String getIss_front_img() {
		return iss_front_img;
	}

	public void setIss_front_img(String iss_front_img) {
		this.iss_front_img = iss_front_img;
	}

	public String getIss_th_img() {
		return iss_th_img;
	}

	public void setIss_th_img(String iss_th_img) {
		this.iss_th_img = iss_th_img;
	}

	public String getIss_title() {
		return iss_title;
	}

	public void setIss_title(String iss_title) {
		this.iss_title = iss_title;
	}

	public String getIss_writer() {
		return iss_writer;
	}

	public void setIss_writer(String iss_writer) {
		this.iss_writer = iss_writer;
	}

	public String getIss_content() {
		return iss_content;
	}

	public void setIss_content(String iss_content) {
		this.iss_content = iss_content;
	}

	public int getIss_con_count() {
		return iss_con_count;
	}

	public void setIss_con_count(int iss_con_count) {
		this.iss_con_count = iss_con_count;
	}

	public Date getIss_regdate() {
		return iss_regdate;
	}

	public void setIss_regdate(Date iss_regdate) {
		this.iss_regdate = iss_regdate;
	}

	public String getIss_source() {
		return iss_source;
	}

	public void setIss_source(String iss_source) {
		this.iss_source = iss_source;
	}

	public int getIss_view_count() {
		return iss_view_count;
	}

	public void setIss_view_count(int iss_view_count) {
		this.iss_view_count = iss_view_count;
	}

	public String getIss_note() {
		return iss_note;
	}

	public void setIss_note(String iss_note) {
		this.iss_note = iss_note;
	}

	@Override
	public String toString() {
		return "Vo_Issue [iss_no=" + iss_no + ", iss_catd_no=" + iss_catd_no + ", iss_front_img=" + iss_front_img
				+ ", iss_th_img=" + iss_th_img + ", iss_title=" + iss_title + ", iss_writer=" + iss_writer
				+ ", iss_content=" + iss_content + ", iss_con_count=" + iss_con_count + ", iss_regdate=" + iss_regdate
				+ ", iss_source=" + iss_source + ", iss_view_count=" + iss_view_count + ", iss_note=" + iss_note + "]";
	}

}
