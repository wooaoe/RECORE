package com.mvc.dao;

import java.util.List;

import com.mvc.vo.Vo_Qna_Paging;
import com.mvc.vo.Vo_Product;
import com.mvc.vo.Vo_QnA;
import com.mvc.vo.Vo_Review;

public interface CommunityDao {
	
	/*****QnA*****/
	
	/*QnA 전체 조회*/
	public List<Vo_QnA> Cq_selectAll(Vo_Qna_Paging paging, String catd, String searchsubject, String keyword); // QnA 전체 조회
	/*QnA 한개 조회*/
	public Vo_QnA Cq_selectOne(int qna_no);
	/*QnA 글 등록*/
	public boolean Cq_insert(Vo_QnA qnaVo);
	/*QnA 답글 등록*/
	public boolean Cq_insert_re(Vo_QnA qnaVo);
	/*QnA 글/답글 수정*/
	public boolean Cq_update(Vo_QnA qnaVo);
	/*QnA 조회 글 전체 ROW 개수 조회*/
	public int Cq_selectAllCount(String catd, String searchsubject, String keyword);
	/*QnA 글 조회수*/
	public void Cq_updateViewCount(int qna_no);
	/*QnA product 전체 조회*/
	public List<Vo_Product> Cp_selectAll(Vo_Qna_Paging paging, String keyword);
	/*QnA product 조회 글 전체 ROW 개수 조회*/
	public int Cp_selectAllCount(String keyword);
		
	
	
	/*Review*/
		
	public List<Vo_Review> Cr_selectAll(); // Review 전체 조회
	
	public boolean Cr_insert(Vo_Review rev); // Review 등록
	
	public boolean Cr_update(Vo_Review rev); //Review 수정
	
	public boolean C_delete(int seq); //삭제 
	
}
