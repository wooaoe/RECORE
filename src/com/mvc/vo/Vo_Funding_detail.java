package com.mvc.vo;

public class Vo_Funding_detail {

	private int fpm_no; //펀딩내역 번호
	private int fund_no; //펀딩 번호
	private int acc_no; //계정 번호
	private int fpm_price; //결제금액
	private String fpm_card_name; //카드번호
	private String fpm_card_pw; //카드 비밀번호
	private String fpm_card_valid; //카드 유효기간
	private String fpm_card_cvc; //cvc번호
	private String fpm_c_yn; //취소여부
	
	public Vo_Funding_detail() {
		super();
	}
	
	public Vo_Funding_detail(int fpm_no, int fund_no, int acc_no, int fpm_price, String fpm_card_name,
			String fpm_card_pw, String fpm_card_valid, String fpm_card_cvc, String fpm_c_yn) {
		super();
		this.fpm_no = fpm_no;
		this.fund_no = fund_no;
		this.acc_no = acc_no;
		this.fpm_price = fpm_price;
		this.fpm_card_name = fpm_card_name;
		this.fpm_card_pw = fpm_card_pw;
		this.fpm_card_valid = fpm_card_valid;
		this.fpm_card_cvc = fpm_card_cvc;
		this.fpm_c_yn = fpm_c_yn;
	}

	public int getFpm_no() {
		return fpm_no;
	}

	public void setFpm_no(int fpm_no) {
		this.fpm_no = fpm_no;
	}

	public int getFund_no() {
		return fund_no;
	}

	public void setFund_no(int fund_no) {
		this.fund_no = fund_no;
	}

	public int getAcc_no() {
		return acc_no;
	}

	public void setAcc_no(int acc_no) {
		this.acc_no = acc_no;
	}

	public int getFpm_price() {
		return fpm_price;
	}

	public void setFpm_price(int fpm_price) {
		this.fpm_price = fpm_price;
	}

	public String getFpm_card_name() {
		return fpm_card_name;
	}

	public void setFpm_card_name(String fpm_card_name) {
		this.fpm_card_name = fpm_card_name;
	}

	public String getFpm_card_pw() {
		return fpm_card_pw;
	}

	public void setFpm_card_pw(String fpm_card_pw) {
		this.fpm_card_pw = fpm_card_pw;
	}

	public String getFpm_card_valid() {
		return fpm_card_valid;
	}

	public void setFpm_card_valid(String fpm_card_valid) {
		this.fpm_card_valid = fpm_card_valid;
	}

	public String getFpm_card_cvc() {
		return fpm_card_cvc;
	}

	public void setFpm_card_cvc(String fpm_card_cvc) {
		this.fpm_card_cvc = fpm_card_cvc;
	}

	public String getFpm_c_yn() {
		return fpm_c_yn;
	}

	public void setFpm_c_yn(String fpm_c_yn) {
		this.fpm_c_yn = fpm_c_yn;
	}

	@Override
	public String toString() {
		return "Vo_Funding_detail [fpm_no=" + fpm_no + ", fund_no=" + fund_no + ", acc_no=" + acc_no + ", fpm_price="
				+ fpm_price + ", fpm_card_name=" + fpm_card_name + ", fpm_card_pw=" + fpm_card_pw + ", fpm_card_valid="
				+ fpm_card_valid + ", fpm_card_cvc=" + fpm_card_cvc + ", fpm_c_yn=" + fpm_c_yn + "]";
	}
	
	
}
