package com.mvc.dao;

import java.util.List;

import com.mvc.vo.Vo_Funding;

public interface FundingDao {
	
	String selectAllSql = "SELECT * FROM FUNDING";
	String selectOneSql = "SELECT * FROM FUNDING WHERE FUND_NO";
	String insertSql = "INSERT INTO FUNDING VALUES(FUND_NO.NEXTVAL, CATD_NO.NEXTVAL, "
			+ "?, ?, ?, ?, ?, ?, SYSDATE, ?, 'N')";
	String updateSql = "";
	String deleteSql = "";
	
	public List<Vo_Funding> selectAll();
	public Vo_Funding selectOne(int fund_no);
	public boolean insert(Vo_Funding fund);
	public boolean update(Vo_Funding fund);
	public boolean delete(int fund_no);
	
	
	
	
	
	

}
