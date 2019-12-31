package com.mvc.dao;

import java.util.Map;

import com.mvc.vo.Vo_Cart;
import com.mvc.vo.Vo_Order;

public interface MyPageDao {

	public Map selectMypage(int accseq); //Map 사용

	public Vo_Order My_orderStatus(Vo_Order sts); //배송상태(주문처리상태) - 배송이 완료됐을 때 적립금 추가까지 사용 

	public boolean My_deleteWish_One(int accseq, int prod_no); //관심상품 하나 해제시 
	
	public boolean My_deleteWish_All(int accseq); //관심상품 전체 해제시

	public boolean My_updateCart(int prod_id, int cart_amount); //장바구니 수정시 
	
	public boolean My_deleteCart_One(int accseq, int prod_no); //장바구니 하나 삭제시
	
	public boolean My_deleteCart_All(int accseq); //장바구니 전체 삭제시

	
}
