package com.mvc.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.mvc.vo.Vo_Category_Detail;
import com.mvc.vo.Vo_Order;
import com.mvc.vo.Vo_Order_Num;
import com.mvc.vo.Vo_Order_Num2;
import com.mvc.vo.Vo_Order_Prod;
import com.mvc.vo.Vo_Prod_option;
import com.mvc.vo.Vo_Product;
import com.mvc.vo.Vo_Review;

public interface ProductDao {

	public List<Vo_Product> P_selectAll(); // 상품 리스트 전체 조회
	
	public List<Vo_Product> P_topSelectOne(int catdno);
	
	public List<Vo_Product> Parent_selectAll(int catdid);
	
	public List<Vo_Product> Child_selectAll(int pseq); // 옷 전체 조회
	
	public Map option_selectAll(List prod_id); //상품 옵션 
	
	public Vo_Product P_selectOne(int pseq); // 상품 선택 조회
	
	public List<Vo_Category_Detail> CD_selectAll(int catid); //카테고리 아이디 받아서 Clothing, Life 구분하기 
	
	public List<Vo_Review> Review_selectOne(Vo_Product pvo); // 해당 상품 리뷰글 가져오기
	
	public Vo_Category_Detail CD_selectAll2(int catdno); //카테고리 번호 받아서 Bag,Wallet,outer 등 구분하기 
	
	public Vo_Category_Detail CD_selectOne(Vo_Product pvo); //카테고리 선택 조회
	
	public ArrayList<Vo_Prod_option> po_selectOne(Vo_Product pvo); //상품 옵션 선택 조회
	
	public List<Vo_Order_Num> Order_selectAll(); //ORDER_NUM 전체 조회
	
	public List<Vo_Order_Prod> Order_selectAll(int order_seq); //주문번호 찾아서 prod_order 조회
	
	public Vo_Order_Num Order_selectOne(int order_seq); //주문번호 찾아서 order_num 조회
	
	public Vo_Order ProdOrder_selectOne(int order_seq); //주문번호 찾아서 prod_order 조회 
	
	public Vo_Order_Num2 O_selectOne(int order_seq); // 주문번호 조회해오자 
	
	public boolean P_insert(Vo_Product pvo); // 상품 등록
	
	public boolean POrder_insert(int order_seq, int prod_id, int price, int amount); //PROD_ORDER insert  
	
	public boolean O_insert(int acc_no, String acc_addrs[], int acc_pont); //ORDER_NUM insert 
	
	public boolean AllPOrder_insert(int order_seq, String prod_id, String price, String prod_amount); //상품 결제페이지 (전체구매) 

	public boolean P_insertCart(int acc_no, int prod_id, int amount); // 장바구니 insert

	public boolean P_insertWish(int acc_no, int prod_no); // 관심상품 insert
	
	public boolean P_update(Vo_Product pvo); // 상품 수정

	public boolean P_delete(int aseq); // 상품 삭제
	
	public boolean Order_delete(int order_no); // 결제 완료 취소시 ORDER_NUM의 ORDER_NO에 해당하는 데이터 삭제 
	
	public int O_CurrVal(); // 결제 완료 취소시 마지막 시퀀스 넘버 가져오기 
	
	public int P_getSeqCurrval(); //현재 시퀀스 번호 가져오기
	
	public boolean POinsert(int pseq, Vo_Prod_option povo); //prod_option insert하는 메소드
	


	

}
