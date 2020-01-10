package com.mvc.vo;

import java.sql.Date;

public class Vo_QnA {

	private int qna_no;				//qna 글번호 (DB COLUMN)
	private int catd_no;			//카테고리 번호  14-배송, 15-취소/교환/환불문의, 16-상품 - 글쓰기 시 옵션추가(DB COLUMN)
	private int qna_seq_no;			//prod_option의 prodid (DB COLUMN)
	private int qna_acc_no;			//계정번호 - 작성자 (DB COLUMN)
	private String qna_front_img;	//대표이미지 (DB COLUMN)
	private String qna_title;		//제목 (DB COLUMN)
	private String qna_content;		//내용 (DB COLUMN)
	private int qna_con_count;		//(DB COLUMN)
	private Date qna_regdate;		//작성일  (DB COLUMN)
	private String qna_re_yn; 		//답글이 n이면 최근글   (DB COLUMN)
	private int qna_view_count;		//조회수
	private int qna_pno; 			//현재 어떤 QnA글번호에 답글을 달았는지 알 수 있는 부모넘버   (DB COLUMN)
	private String qna_acc_id;		//계정아이디 - 작성자
	private int qna_prod_no;		//상품번호
	
	public Vo_QnA() {
		super();
	}

	
	public Vo_QnA(int qna_no, int catd_no, int qna_seq_no, int qna_acc_no, String qna_front_img, String qna_title,
			String qna_content, int qna_con_count, Date qna_regdate, String qna_re_yn, int qna_view_count, int qna_pno,
			String qna_acc_id, int qna_prod_no) {
		super();
		this.qna_no = qna_no;
		this.catd_no = catd_no;
		this.qna_seq_no = qna_seq_no;
		this.qna_acc_no = qna_acc_no;
		this.qna_front_img = qna_front_img;
		this.qna_title = qna_title;
		this.qna_content = qna_content;
		this.qna_con_count = qna_con_count;
		this.qna_regdate = qna_regdate;
		this.qna_re_yn = qna_re_yn;
		this.qna_view_count = qna_view_count;
		this.qna_pno = qna_pno;
		this.qna_acc_id = qna_acc_id;
		this.qna_prod_no = qna_prod_no;
	}


	//답글 쓰기 생성자
	public Vo_QnA(int catd_no, int qna_seq_no, int qna_acc_no, String qna_front_img, String qna_title, String qna_content, int qna_con_count,
			int qna_pno, String qna_acc_id, int qna_prod_no) {
		super();
		this.catd_no = catd_no;
		this.qna_seq_no = qna_seq_no;
		this.qna_acc_no = qna_acc_no;
		this.qna_front_img = qna_front_img;
		this.qna_title = qna_title;
		this.qna_content = qna_content;
		this.qna_con_count = qna_con_count;
		this.qna_pno = qna_pno;
		this.qna_acc_id = qna_acc_id;
		this.qna_prod_no = qna_prod_no;
	}
	
	//답글 수정 생성장
	public Vo_QnA(int qna_no, String qna_title, String qna_content) {
		super();
		this.qna_no = qna_no;
		this.qna_title = qna_title;
		this.qna_content = qna_content;
	}


	//글쓰기 생성자
	public Vo_QnA(int catd_no, int qna_seq_no, int qna_acc_no, String qna_front_img, String qna_title, String qna_content,
			String qna_acc_id) {
		this.catd_no = catd_no;
		this.qna_seq_no = qna_seq_no;
		this.qna_acc_no = qna_acc_no;
		this.qna_front_img = qna_front_img;
		this.qna_title = qna_title;
		this.qna_content = qna_content;
		this.qna_acc_id = qna_acc_id;
	}


	public int getQna_no() {
		return qna_no;
	}

	public void setQna_no(int qna_no) {
		this.qna_no = qna_no;
	}

	public int getCatd_no() {
		return catd_no;
	}

	public void setCatd_no(int catd_no) {
		this.catd_no = catd_no;
	}

	public int getQna_seq_no() {
		return qna_seq_no;
	}

	public void setQna_seq_no(int qna_seq_no) {
		this.qna_seq_no = qna_seq_no;
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

	public int getQna_con_count() {
		return qna_con_count;
	}

	public void setQna_con_count(int qna_con_count) {
		this.qna_con_count = qna_con_count;
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

	public int getQna_pno() {
		return qna_pno;
	}

	public void setQna_pno(int qna_pno) {
		this.qna_pno = qna_pno;
	}

	public int getQna_view_count() {
		return qna_view_count;
	}

	public void setQna_view_count(int qna_view_count) {
		this.qna_view_count = qna_view_count;
	}

	public int getQna_acc_no() {
		return qna_acc_no;
	}

	public void setQna_acc_no(int qna_acc_no) {
		this.qna_acc_no = qna_acc_no;
	}

	public String getQna_acc_id() {
		return qna_acc_id;
	}

	public void setQna_acc_id(String qna_acc_id) {
		this.qna_acc_id = qna_acc_id;
	}

	public int getQna_prod_no() {
		return qna_prod_no;
	}

	public void setQna_prod_no(int qna_prod_no) {
		this.qna_prod_no = qna_prod_no;
	}

	@Override
	public String toString() {
		return "Vo_QnA [qna_no=" + qna_no + ", catd_no=" + catd_no + ", qna_seq_no=" + qna_seq_no + ", qna_acc_no="
				+ qna_acc_no + ", qna_front_img=" + qna_front_img + ", qna_title=" + qna_title + ", qna_content="
				+ qna_content + ", qna_con_count=" + qna_con_count + ", qna_regdate=" + qna_regdate + ", qna_re_yn="
				+ qna_re_yn + ", qna_pno=" + qna_pno + ", qna_view_count=" + qna_view_count + ", qna_acc_id="
				+ qna_acc_id + ", qna_prod_no=" + qna_prod_no + "]";
	}



}
