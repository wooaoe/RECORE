package com.mvc.dao;

import java.util.List;

import com.mvc.vo.Vo_Funding;
import com.mvc.vo.Vo_Funding_Payment;


public interface FundingDao {

	public List<Vo_Funding> F_selectAll(); //펀딩 내역 전체 조회

	public Vo_Funding F_selectOne(int fseq); //펀딩 선택 조회

	public boolean F_insert(Vo_Funding reg); //펀딩 등록
	
	public boolean F_insert(Vo_Funding_Payment fvo); //펀딩 참여 내역 / 카드정보 입력받기

	public boolean F_expire(Vo_Funding sof); // 펀딩 성공/실패 여부 판단
	
	
	public boolean F_delete(int fseq);//삭제기능(테스트용)
	
}
