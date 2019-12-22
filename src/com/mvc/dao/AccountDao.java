package com.mvc.dao;

import java.util.List;

import com.mvc.vo.Vo_Account;

public interface AccountDao {

	String selectAllSql = "SELECT * FROM ACCOUNT";
	String selectOneSql = "SELECT * FROM ACCOUNT WHERE ACC_NO = ?";
	String insertSql = "INSERT INTO ACCOUNT VALUES(ACC_NO.NEXTVAL, ?, ?, ?, ?, ?, ?, ?, 'N', 2000, 'N')";
	String updateSql = "UPDATE ACCOUNT SET ACC_PW = ?, ACC_NAME = ? ACC_BIRTH = ?, ACC_PHONE = ?, ACC_EMAIL = ?, ACC_ADDR = ?";
	
	public List<Vo_Account> selectAll(); //회원정보 전체 조회 

	public Vo_Account selectOne(int acc_no); //계정번호로 조회해서 쓰기 

	public boolean insert(Vo_Account acc); //회원가입

	public boolean update(Vo_Account acc); //회원정보 수정 //id는 바꿀 수 없음

	public boolean delete(int acc_no); //회원 탈퇴 

}
