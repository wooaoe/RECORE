package com.mvc.dao;

import java.util.List;

import com.mvc.vo.Vo_QnA;
import com.mvc.vo.Vo_Review;

public interface CommunityDao {

	public List<Vo_QnA> Cq_selectAll(); // QnA 전체 조회

	public List<Vo_Review> Cr_selectAll(); // Review 전체 조회

	public boolean Cq_insert(Vo_QnA qna); // QnA 등록

	public boolean Cr_insert(Vo_Review rev); // Review 등록

	public boolean Cq_update(Vo_QnA qna); //QnA 수정

	public boolean Cr_update(Vo_Review rev); //Review 수정

	public boolean C_delete(int seq); //삭제 

}
