package com.mvc.dao;

import java.util.List;

import com.mvc.vo.Vo_Order;

public interface OrderDao {

	public List<Vo_Order> O_selectAll(); // 장바구니 연동해서 전체 상품 가져오기

	public Vo_Order O_selectOne(int seq); // 선택 상품 결제시

	public boolean O_insert(Vo_Order ovo); //계정값 가져오고 수정시 새로 입력되게? (이름, 주소, 휴대폰번호 등) 

}
