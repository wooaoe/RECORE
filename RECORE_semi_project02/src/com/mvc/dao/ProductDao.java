package com.mvc.dao;

import java.util.List;

import com.mvc.vo.Vo_Cart;
import com.mvc.vo.Vo_Product;
import com.mvc.vo.Vo_Wish;

public interface ProductDao {

	public List<Vo_Product> P_selectAll(); // 상품 리스트 전체 조회

	public Vo_Product P_selectOne(int pseq); // 상품 선택 조회

	public boolean P_insert(Vo_Product pvo); // 상품 등록

	public boolean P_insert(Vo_Cart cvo); // 장바구니

	public boolean P_insert(Vo_Wish wvo); // 관심상품

	public boolean P_update(Vo_Product pvo); // 상품 수정

	public boolean P_delete(int accseq); // 상품 삭제

}
