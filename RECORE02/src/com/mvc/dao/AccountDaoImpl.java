package com.mvc.dao;

import static common.JDBCTemplate.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mvc.vo.Vo_Account;

public class AccountDaoImpl implements AccountDao {
	@Override
	public Vo_Account A_selectAccount(String acc_id, String acc_pw) {
		Connection con = getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Vo_Account vo = null;
		String sql = " SELECT * FROM ACCOUNT WHERE ACC_ID=? " ;
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, acc_id);
			
			
			rs = pstmt.executeQuery();
			System.out.println("3. sql실행" + sql);
			System.out.println(acc_id);
			System.out.println(acc_pw);
			
			while(rs.next()) {
				vo = new Vo_Account();
				
					vo.setAcc_no(rs.getInt(1));
					vo.setAcc_id(rs.getString(2));
					vo.setAcc_pw(rs.getString(3));
					vo.setAcc_name(rs.getString(4));
					vo.setAcc_birth(rs.getString(5));
					vo.setAcc_phone(rs.getString(6));
					vo.setAcc_email(rs.getString(7));
					vo.setAcc_zipcode(rs.getString(8));
					vo.setAcc_addr(rs.getString(9));
					vo.setAcc_addr2(rs.getString(10));
					vo.setAcc_isReg(rs.getString(11));
					vo.setAcc_point(rs.getInt(12));
					vo.setAcc_m_c(rs.getString(13));

			}
			
			if(!(vo.getAcc_pw().equals(acc_pw))) {
				vo = null;
			}

			System.out.println(vo);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
			close(con);
		}
		return vo;
	} 

	@Override
	public boolean A_insert(Vo_Account vo) {
		Connection con = getConnection();
		PreparedStatement pstmt = null;
		int res = 0;
		String sql = " INSERT INTO ACCOUNT VALUES(ACC_SEQ.NEXTVAL, ?, ?, ?, ?, ?, ?, ?, ?, ?, 'Y', 10000, 'C')";
		
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
	public boolean A_update(Vo_Account acc) {
		Connection con = getConnection();
		PreparedStatement pstmt = null;
		int res = 0;
		String sql = " UPDATE ACCOUNT SET ACC_PW=?, ACC_ZIPCODE=?, ACC_ADDR=?, ACC_ADDR2=? ACC_PHONE=?, ACC_EMAIL=? ";
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, acc.getAcc_pw());
			pstmt.setString(2, acc.getAcc_zipcode());
			pstmt.setString(3, acc.getAcc_addr());
			pstmt.setString(4, acc.getAcc_addr2());
			pstmt.setString(5, acc.getAcc_phone());
			pstmt.setString(6, acc.getAcc_email());
			
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
	public boolean A_delete(int seq) {
		Connection con = getConnection();
		PreparedStatement pstmt = null;
		int res = 0;
		String sql = " UPDATE ACCOUNT SET ACC_ISREG = 'Y' WHERE ACC_NO=? " ;
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, seq);
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

}
