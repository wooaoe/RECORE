package com.mvc.vo;

public class Vo_Account {

	private int acc_no; // 계정 번호
	private String acc_id; // 계정 아이디
	private String acc_pw; // 계정 비밀번호
	private String acc_name; // 이름
	private String acc_birth; // 나이
	private String acc_email; // 이메일
	private String acc_phone; // 휴대폰
	private String acc_zipcode; // 우편번호
	private String acc_addr; // 주 주소
	private String acc_addr2; // 세부 주소
	private String acc_isReg; // 가입여부
	private int acc_point; // 적립금
	private String acc_m_c; // 관리자 유무
	

	public Vo_Account() {
	}

	public Vo_Account(int acc_no, String acc_id, String acc_pw, String acc_name, String acc_birth, String acc_phone,
			String acc_email, String acc_zipcode, String acc_addr, String acc_addr2, String acc_isReg, int acc_point,
			String acc_m_c) {
		super();
		this.acc_no = acc_no;
		this.acc_id = acc_id;
		this.acc_pw = acc_pw;
		this.acc_name = acc_name;
		this.acc_birth = acc_birth;
		this.acc_phone = acc_phone;
		this.acc_email = acc_email;
		this.acc_zipcode = acc_zipcode;
		this.acc_addr = acc_addr;
		this.acc_addr2 = acc_addr2;
		this.acc_isReg = acc_isReg;
		this.acc_point = acc_point;
		this.acc_m_c = acc_m_c;
	}

	public int getAcc_no() {
		return acc_no;
	}

	public void setAcc_no(int acc_no) {
		this.acc_no = acc_no;
	}

	public String getAcc_id() {
		return acc_id;
	}

	public void setAcc_id(String acc_id) {
		this.acc_id = acc_id;
	}

	public String getAcc_pw() {
		return acc_pw;
	}

	public void setAcc_pw(String acc_pw) {
		this.acc_pw = acc_pw;
	}

	public String getAcc_name() {
		return acc_name;
	}

	public void setAcc_name(String acc_name) {
		this.acc_name = acc_name;
	}

	public String getAcc_birth() {
		return acc_birth;
	}

	public void setAcc_birth(String acc_birth) {
		this.acc_birth = acc_birth;
	}

	public String getAcc_phone() {
		return acc_phone;
	}

	public void setAcc_phone(String acc_phone) {
		this.acc_phone = acc_phone;
	}

	public String getAcc_email() {
		return acc_email;
	}

	public void setAcc_email(String acc_email) {
		this.acc_email = acc_email;
	}

	public String getAcc_zipcode() {
		return acc_zipcode;
	}

	public void setAcc_zipcode(String acc_zipcode) {
		this.acc_zipcode = acc_zipcode;
	}

	public String getAcc_addr() {
		return acc_addr;
	}

	public void setAcc_addr(String acc_addr) {
		this.acc_addr = acc_addr;
	}

	public String getAcc_addr2() {
		return acc_addr2;
	}

	public void setAcc_addr2(String acc_addr2) {
		this.acc_addr2 = acc_addr2;
	}

	public String getAcc_isReg() {
		return acc_isReg;
	}

	public void setAcc_isReg(String acc_isReg) {
		this.acc_isReg = acc_isReg;
	}

	public int getAcc_point() {
		return acc_point;
	}

	public void setAcc_point(int acc_point) {
		this.acc_point = acc_point;
	}

	public String getAcc_m_c() {
		return acc_m_c;
	}

	public void setAcc_m_c(String acc_m_c) {
		this.acc_m_c = acc_m_c;
	}

	@Override
	public String toString() {
		return "Vo_Account [acc_no=" + acc_no + ", acc_id=" + acc_id + ", acc_pw=" + acc_pw + ", acc_name=" + acc_name
				+ ", acc_birth=" + acc_birth + ", acc_phone=" + acc_phone + ", acc_email=" + acc_email
				+ ", acc_zipcode=" + acc_zipcode + ", acc_addr=" + acc_addr + ", acc_addr2=" + acc_addr2
				+ ", acc_isReg=" + acc_isReg + ", acc_point=" + acc_point + ", acc_m_c=" + acc_m_c + "]";
	}

}
