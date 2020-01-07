package com.mvc.dao;

import java.util.ArrayList;
import java.util.List;

import com.mvc.vo.Vo_Cart;
import com.mvc.vo.Vo_Category_Detail;
import com.mvc.vo.Vo_Order_Num;
import com.mvc.vo.Vo_Prod_option;
import com.mvc.vo.Vo_Product;
import com.mvc.vo.Vo_Wish;

public interface ProductDao {

	public List<Vo_Product> P_selectAll(); // 상품 리스트 전체 조회
	
	public List<Vo_Product> P_topSelectOne(int catdno);
	
	public List<Vo_Product> Parent_selectAll(int catdid);
	
	public List<Vo_Product> Child_selectAll(int pseq); // 옷 전체 조회
	
	public List<Vo_Prod_option> option_selectAll(); //상품 옵션 
	
	public Vo_Product P_selectOne(int pseq); // 상품 선택 조회
	
	public List<Vo_Category_Detail> CD_selectAll(int catid); //카테고리 아이디 받아서 Clothing, Life 구분하기 
	
	public Vo_Category_Detail CD_selectAll2(int catdno); //카테고리 번호 받아서 Bag,Wallet,outer 등 구분하기 
	
	public Vo_Category_Detail CD_selectOne(Vo_Product pvo); //카테고리 선택 조회
	
	public ArrayList<Vo_Prod_option> po_selectOne(Vo_Product pvo); //상품 옵션 선택 조회

	public boolean P_insert(Vo_Product pvo); // 상품 등록
	
	public boolean O_insert(Vo_Prod_option povo, Vo_Product pvo); //상품 결제페이지 

	public boolean P_insertCart(int acc_no, int prod_id); // 장바구니

	public boolean P_insertWish(int acc_no, int prod_no); // 관심상품

	public boolean P_update(Vo_Product pvo); // 상품 수정

	public boolean P_delete(int aseq); // 상품 삭제

	


	

}
