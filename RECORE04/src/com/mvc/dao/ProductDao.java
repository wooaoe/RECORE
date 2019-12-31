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
	
	public List<Vo_Product> BC_selectAll(); // 가방,악세사리 조회
	
	public List<Vo_Product> Clo_selectAll(); // 옷 전체 조회
	
	public List<Vo_Product> Outer_selectAll(); // 외투 전체 조회
	
	public List<Vo_Product> Top_selectAll(); // 상의 전체 조회
	
	public List<Vo_Product> Bottom_selectAll(); // 바지 전체 조회 
	
	public List<Vo_Product> Wallet_selectAll(); // 지갑 전체 조회

	public List<Vo_Product> Life_selectAll(); // 라이프 전체 조회
	
	public List<Vo_Product> Supply_selectAll(); // 문구류 전체 조회
	
	public List<Vo_Product> Home_selectAll(); // 리빙 전체 조회
	
	public List<Vo_Prod_option> option_selectAll(); //상품 옵션 

	public Vo_Product P_selectOne(int pseq); // 상품 선택 조회
	
	public Vo_Category_Detail CD_selectOne(Vo_Product pvo); //카테고리 선택 조회
	
//	public List<Vo_Prod_option> po_selectOne(Vo_Product pvo); //상품 옵션 선택 조회
	public ArrayList<Vo_Prod_option> po_selectOne(Vo_Product pvo); //상품 옵션 선택 조회

	public boolean P_insert(Vo_Product pvo); // 상품 등록
	
	public boolean O_insert(Vo_Prod_option povo, Vo_Product prod); //상품 결제페이지 

	public boolean P_insert(Vo_Cart cvo); // 장바구니

	public boolean P_insert(Vo_Wish wvo); // 관심상품

	public boolean P_update(Vo_Product pvo); // 상품 수정

	public boolean P_delete(int aseq); // 상품 삭제


	

}
