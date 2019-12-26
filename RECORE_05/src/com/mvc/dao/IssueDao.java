package com.mvc.dao;

import java.util.List;

import com.mvc.vo.Vo_Issue;

public interface IssueDao {

	public List<Vo_Issue> I_selectAll(); //이슈 전체 조회

	public Vo_Issue I_selectOne(int iseq); //이슈 선택 조회

	public boolean I_insert(Vo_Issue ivo); //이슈 등록 

	public boolean I_delete(int iseq); //이슈 삭제 

	
}
