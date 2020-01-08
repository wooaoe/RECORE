package com.mvc.dao;

import java.util.List;

import com.mvc.vo.Vo_Account;
import com.mvc.vo.Vo_Issue;
import com.mvc.vo.Vo_Manager_Payment;
import com.mvc.vo.Vo_Manager_ProdOption;
import com.mvc.vo.Vo_QnA;
import com.mvc.vo.Vo_QnA_Paging;

public interface ManagerDao {

	public List<Vo_Manager_Payment> M_selectAll(); // 상품 전체 조회(관리자페이지)

	public Vo_Manager_Payment M_selectOne(int mseq); // 선택 조회

	public boolean M_insert(Vo_Manager_Payment mp); // 입력

	public boolean M_update(Vo_Manager_Payment mp); // 수정

	public boolean M_delete(int mseq); // 삭제
	
	/*재고 관리 상품 전체 조회*/
	public List<Vo_Manager_ProdOption> P_selectAll(Vo_QnA_Paging paging, String category, String searchsubject, String keyword);
	
	/*재고 관리 상품 전체 Row Count*/
	public int P_selectAllCount(String category, String searchsubject, String keyword);
	
}
