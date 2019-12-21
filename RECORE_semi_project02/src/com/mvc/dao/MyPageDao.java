package com.mvc.dao;

import java.util.Map;

import com.mvc.vo.Vo_Order;

public interface MyPageDao {

	public Map selectMypage(int accseq); //Map 사용

	public Vo_Order My_orderStatus(Vo_Order sts); //배송상태(주문처리상태) - 배송이 완료됐을 때 적립금 추가까지 사용 

	public boolean My_deleteCart(int accseq); //장바구니 비울 때 

	public boolean My_deleteWish(int accseq); //관심상품 해제시 

	public boolean My_updateCart(Vo_Order cart); //장바구니 수정시 

}
