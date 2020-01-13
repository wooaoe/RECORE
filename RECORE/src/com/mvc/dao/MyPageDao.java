package com.mvc.dao;

import java.util.List;
import java.util.Map;

import com.mvc.vo.Vo_Account;
import com.mvc.vo.Vo_Order;
import com.mvc.vo.Vo_QnA;
import com.mvc.vo.Vo_Review;

public interface MyPageDao {

   public Map selectMypage(int accseq); //Map 사용
   
   public List<Vo_Order> selectOlist(int accseq, int order_no); //olist만 가져오기

   public boolean My_updateOrder_Status(int order_no, int prod_id, String status); //주문상태 변경

   public boolean My_deleteWish_One(int accseq, int prod_no); //관심상품 하나 해제시 
   
   public boolean My_deleteWish_All(int accseq); //관심상품 전체 해제시

   public boolean My_updateCart(int prod_id, int cart_amount); //장바구니 수정시 
   
   public boolean My_deleteCart_One(int accseq, int prod_no); //장바구니 하나 삭제시
   
   public boolean My_deleteCart_All(int accseq); //장바구니 전체 삭제시
   
   public Vo_QnA My_selectBoardOne(int qna_no); //board 하나 select
   
   public boolean My_updateBoard(int qna_no, String title, String content); //board 수정
   
   public boolean My_updateBoard_Viewcount(int qna_no); //조회수 수정
   
   public boolean My_deleteBoard(int qna_no); //board 삭제
   
   public List My_searchBoard(int accseq, String catd, String keyword); //board 검색
   
   public boolean My_insertReview(int order_no, int prod_id, String title, String content, int rating); //리뷰 등록
   
   public void My_updateIsReview(int order_no, int prod_id); //리뷰 존재 여부 확인
   
   public List selectAllOrder(); //관리자 로그인시 모든 주문정보 가져오기
   
   public List selectAllOlist(int order_no); //관리자 로그인시 모든 주문상세 가져오기
   
   public Vo_Account selectAccount(int acc_no); //계정 정보 가져오기
   
   public boolean managerUpdate(int order_no, int prod_id, String tno); //관리자 계정으로 운송장번호 등록
   
//   public List<Vo_QnA> My_categoryBoard(int accseq, String catd); //게시글 분류 조회
   
}