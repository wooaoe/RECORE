package com.mvc.vo;

import java.sql.Date;

public class Vo_QnA {

	private int qna_no; //qna 번호
	private int qna_catd_no; //카테고리 번호
	private int qna_acc_no; //계정 번호
	private int qna_acc_id; //계정 아이디
	private int qna_prod_no; //상품 번호
	private String qna_front_img; //대표 이미지
	private String qna_title; //제목
	private String qna_content; //내용
	private Date qna_regdate; //게시날짜
	private String qna_re_yn; //답글이 n이면 최근글, 답글여부
	private int qna_view_count; //조회수
	private int qna_pno; //현재 어떤 QnA글번호에 답글을 달았는지 알 수 있는 부모넘버 
	
	
	public Vo_QnA() {
		super();
	}

	public Vo_QnA(int qna_no, int qna_catd_no, int qna_acc_no, int qna_acc_id, int qna_prod_no, String qna_front_img,
			String qna_title, String qna_content, Date qna_regdate, String qna_re_yn, int qna_view_count, int qna_pno) {
		super();
		this.qna_no = qna_no;
		this.qna_catd_no = qna_catd_no;
		this.qna_acc_no = qna_acc_no;
		this.qna_acc_id = qna_acc_id;
		this.qna_prod_no = qna_prod_no;
		this.qna_front_img = qna_front_img;
		this.qna_title = qna_title;
		this.qna_content = qna_content;
		this.qna_regdate = qna_regdate;
		this.qna_re_yn = qna_re_yn;
		this.qna_view_count = qna_view_count;
		this.qna_pno = qna_pno;
	}

	public int getQna_no() {
		return qna_no;
	}

	public void setQna_no(int qna_no) {
		this.qna_no = qna_no;
	}

	public int getQna_catd_no() {
		return qna_catd_no;
	}

	public void setQna_catd_no(int qna_catd_no) {
		this.qna_catd_no = qna_catd_no;
	}

	public int getQna_acc_no() {
		return qna_acc_no;
	}

	public void setQna_acc_no(int qna_acc_no) {
		this.qna_acc_no = qna_acc_no;
	}

	public int getQna_acc_id() {
		return qna_acc_id;
	}

	public void setQna_acc_id(int qna_acc_id) {
		this.qna_acc_id = qna_acc_id;
	}

	public int getQna_prod_no() {
		return qna_prod_no;
	}

	public void setQna_prod_no(int qna_prod_no) {
		this.qna_prod_no = qna_prod_no;
	}

	public String getQna_front_img() {
		return qna_front_img;
	}

	public void setQna_front_img(String qna_front_img) {
		this.qna_front_img = qna_front_img;
	}

	public String getQna_title() {
		return qna_title;
	}

	public void setQna_title(String qna_title) {
		this.qna_title = qna_title;
	}

	public String getQna_content() {
		return qna_content;
	}

	public void setQna_content(String qna_content) {
		this.qna_content = qna_content;
	}

	public Date getQna_regdate() {
		return qna_regdate;
	}

	public void setQna_regdate(Date qna_regdate) {
		this.qna_regdate = qna_regdate;
	}

	public String getQna_re_yn() {
		return qna_re_yn;
	}

	public void setQna_re_yn(String qna_re_yn) {
		this.qna_re_yn = qna_re_yn;
	}

	public int getQna_view_count() {
		return qna_view_count;
	}

	public void setQna_view_count(int qna_view_count) {
		this.qna_view_count = qna_view_count;
	}

	public int getQna_pno() {
		return qna_pno;
	}

	public void setQna_pno(int qna_pno) {
		this.qna_pno = qna_pno;
	}

	@Override
	public String toString() {
		return "Vo_QnA [qna_no=" + qna_no + ", qna_catd_no=" + qna_catd_no + ", qna_acc_no=" + qna_acc_no
				+ ", qna_acc_id=" + qna_acc_id + ", qna_prod_no=" + qna_prod_no + ", qna_front_img=" + qna_front_img
				+ ", qna_title=" + qna_title + ", qna_content=" + qna_content + ", qna_regdate=" + qna_regdate
				+ ", qna_re_yn=" + qna_re_yn + ", qna_view_count=" + qna_view_count + ", qna_pno=" + qna_pno + "]";
	}
	
}
