package com.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import static common.JDBCTemplate.*;

import com.mvc.vo.Vo_Account;

public class AccountDaoImp implements AccountDao {

	@Override
	public Vo_Account A_selectAccount(String acc_id, String acc_pw) {

		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		Vo_Account accvo = new Vo_Account();

		String sql = "SELECT * FROM ACCOUNT WHERE ACC_ID = ? AND ACC_PW = ? AND ACC_ISREG = ?";
		System.out.println("쿼리 준비");
		
		try {
			pstm = con.prepareStatement(sql);
			pstm.setString(1, acc_id);
			pstm.setString(2, acc_pw);
			pstm.setString(3, "Y");
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
	public boolean A_delete(int aseq) {
		// TODO Auto-generated method stub
		return false;
	}

}
