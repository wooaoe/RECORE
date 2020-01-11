package com.mvc.dao;

import java.util.List;

import com.mvc.vo.Vo_Order;
import com.mvc.vo.Vo_Order_Num;
import com.mvc.vo.Vo_Prod_option;
import com.mvc.vo.Vo_Product;

public interface OrderDao {

	public Vo_Order O_selectOne(int oseq); // 선택 상품 결제시

	public boolean O_insert(Vo_Order ovo); //계정값 가져오고 수정시 새로 입력되게? (이름, 주소, 휴대폰번호 등) 
	

}
