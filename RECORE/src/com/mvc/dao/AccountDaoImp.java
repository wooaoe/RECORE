package com.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import static common.JDBCTemplate.*;

import com.mvc.vo.Vo_Account;

public class AccountDaoImp implements AccountDao {

	@Override
	public Vo_Account A_selectAccount(String acc_id, String acc_pw) {

		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		Vo_Account accvo = new Vo_Account();

		String sql = "SELECT * FROM ACCOUNT WHERE ACC_ID = ? AND ACC_PW = ? ";
		System.out.println("쿼리 준비");
		
		try {
			pstm = con.prepareStatement(sql);
			pstm.setString(1, acc_id);
			pstm.setString(2, acc_pw);
			rs = pstm.executeQuery();
			System.out.println("account query 실행 : " + sql);
			while (rs.next()) {
				accvo = new Vo_Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getString(7), rs.getString(6), rs.getString(8), rs.getString(9), rs.getString(10),
						rs.getString(11), rs.getInt(12), rs.getString(13));

				System.out.println("accvo 값 : " + accvo);
			}

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			close(rs, pstm, con);
		}

		return accvo;
	}

	@Override
	public boolean A_insert(Vo_Account vo) {
		Connection con = getConnection();
		PreparedStatement pstmt = null;
		String sql = "INSERT INTO ACCOUNT VALUES(ACC_SEQ.NEXTVAL, ?, ?, ?, ?, ?, ?, ?, ?, ?, 'Y', 10000, 'C') ";
		int res = 0;
		System.out.println(vo);
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, vo.getAcc_id());
			pstmt.setString(2, vo.getAcc_pw());
			pstmt.setString(3, vo.getAcc_name());
			pstmt.setString(4, vo.getAcc_birth());
			pstmt.setString(5, vo.getAcc_email());
			pstmt.setString(6, vo.getAcc_phone());
			pstmt.setString(7, vo.getAcc_zipcode());
			pstmt.setString(8, vo.getAcc_addr());
			pstmt.setString(9, vo.getAcc_addr2());
			
			res = pstmt.executeUpdate();
			
			if(res>0) {
				commit(con);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt,con);
		}		
		return res>0?true:false;
	}

	@Override
	public boolean A_update(Vo_Account vo) {
		Connection con = getConnection();
		PreparedStatement pstmt = null;
		int res = 0;
		String sql = " UPDATE ACCOUNT SET ACC_PW=?, ACC_EMAIL=?, ACC_PHONE=?, ACC_ZIPCODE=?, ACC_ADDR=?, ACC_ADDR2=? WHERE ACC_NO=? ";
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, vo.getAcc_pw());
			pstmt.setString(2, vo.getAcc_email());
			pstmt.setString(3, vo.getAcc_phone());
			pstmt.setString(4, vo.getAcc_zipcode());
			pstmt.setString(5, vo.getAcc_addr());
			pstmt.setString(6, vo.getAcc_addr2());
			pstmt.setInt(7, vo.getAcc_no());
			
			
			res = pstmt.executeUpdate();

			if(res>0) {
				commit(con);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt, con);
		}
		return (res>0)?true:false;
	}

	@Override
	public boolean A_delete(int aseq) {
		Connection con = getConnection();
		PreparedStatement pstmt = null;
		int res = 0;
		String sql = " UPDATE ACCOUNT SET ACC_ISREG = 'N' WHERE ACC_NO=? " ;
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, aseq);
			res = pstmt.executeUpdate();
			if(res>0) {
				commit(con);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt, con);
		}
		return (res>0)?true:false;
	}

	@Override
	public boolean A_selectAccountOne(String acc_id) {
		Connection con = getConnection();
		PreparedStatement pstmt = null;
		String sql = " SELECT * FROM ACCOUNT WHERE ACC_ID=? ";
		ResultSet rs = null;
		boolean res = false;
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, acc_id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				res = true;
			} else {
				res = false;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs, pstmt, con);
		}
		
		
		return res;
	}

	@Override
	public boolean A_selectAccountphone(String acc_phone) {
		Connection con = getConnection();
		PreparedStatement pstmt = null;
		String sql = " SELECT * FROM ACCOUNT WHERE ACC_PHONE=? ";
		ResultSet rs = null;
		boolean pres = false;
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, acc_phone);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				pres = true;
			} else {
				pres = false;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs, pstmt, con);
		}
		
		return pres;
	}
	
	


}
