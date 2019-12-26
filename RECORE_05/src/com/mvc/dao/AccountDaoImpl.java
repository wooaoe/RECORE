package com.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mvc.vo.Vo_Account;
import static common.JDBCTemplate.*;

public class AccountDaoImpl implements AccountDao{

	@Override
	public Vo_Account A_selectAccount(String acc_id, String acc_pw) {
		Connection con = getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Vo_Account vo = null;
		
		String sql = "SELECT * FROM ACCOUNT WHERE ACC_ID=? AND ACC_PW=?";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, acc_id);
			pstmt.setString(2, acc_pw);
			rs = pstmt.executeQuery();
			System.out.println("3. sql실행" + sql);
			
			while(rs.next()) {
				vo = new Vo_Account(
						rs.getInt(1),rs.getString(2),
						rs.getString(3),rs.getString(4),
						rs.getString(5),rs.getString(6),
						rs.getString(7),rs.getString(8),
						rs.getString(9),rs.getString(10),
						rs.getString(11),rs.getInt(12),
						rs.getString(13)
						);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs,pstmt,con);
		}
		
		return vo;
	}

	@Override
	public boolean A_insert(Vo_Account acc) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean A_update(Vo_Account acc) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean A_delete(int seq) {
		// TODO Auto-generated method stub
		return false;
	}

}
