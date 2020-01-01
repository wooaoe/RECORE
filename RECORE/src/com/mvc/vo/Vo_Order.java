package com.mvc.vo;

public class Vo_Order {

	private int prod_id; // 상품 아이디
	private int order_amount; // 주문 수량
	private int order_price; // 금액
	private String order_tno; // 송장번호
	private String order_status; // 상태

	public Vo_Order() {
		super();
	}

	public Vo_Order(int prod_id, int order_amount, int order_price, String order_tno, String order_status) {
		super();
		this.prod_id = prod_id;
		this.order_amount = order_amount;
		this.order_price = order_price;
		this.order_tno = order_tno;
		this.order_status = order_status;
	}

	public int getProd_id() {
		return prod_id;
	}

	public void setProd_id(int prod_id) {
		this.prod_id = prod_id;
	}

	public int getOrder_amount() {
		return order_amount;
	}

	public void setOrder_amount(int order_amount) {
		this.order_amount = order_amount;
	}

	public int getOrder_price() {
		return order_price;
	}

	public void setOrder_price(int order_price) {
		this.order_price = order_price;
	}

	public String getOrder_tno() {
		return order_tno;
	}

	public void setOrder_tno(String order_tno) {
		this.order_tno = order_tno;
	}

	public String getOrder_status() {
		return order_status;
	}

	public void setOrder_status(String order_status) {
		this.order_status = order_status;
	}

	@Override
	public String toString() {
		return "Vo_Order [prod_id=" + prod_id + ", order_amount=" + order_amount + ", order_price=" + order_price
				+ ", order_tno=" + order_tno + ", order_status=" + order_status + "]";
	}

}
