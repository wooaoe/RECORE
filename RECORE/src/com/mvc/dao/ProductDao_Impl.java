package com.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import com.mvc.vo.Vo_Cart;
import com.mvc.vo.Vo_Product;
import com.mvc.vo.Vo_Wish;

import static common.JDBCTemplate.*;

public class ProductDao_Impl implements ProductDao{

	@Override
	public List<Vo_Product> P_selectAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Vo_Product P_selectOne(int pseq) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean P_insert(Vo_Product pvo) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean P_insertCart(int acc_no, int prod_id) {
		Connection con = getConnection();
		PreparedStatement pstmt = null;
		int res = 0;
		String sql = "INSERT INTO CART VALUES(?,?,?)";
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, acc_no);
			pstmt.setInt(2, prod_id);
			pstmt.setInt(3, 1); //wishlist에서 장바구니 추가할 때 수량은 기본값으로 1로 한다.
			res = pstmt.executeUpdate();
			
			if(res>0) {
				commit(con);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt,con);
		}
		
		return (res>0)?true:false;
	}

	@Override
	public boolean P_insertWish(int acc_no, int prod_no) {
		Connection con = getConnection();
		PreparedStatement pstmt = null;
		int res = 0;
		String sql = "INSERT INTO WISH VALUES(?,?)";
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, acc_no);
			pstmt.setInt(2, prod_no);
			res = pstmt.executeUpdate();
			
			if(res>0) {
				commit(con);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt,con);
		}
		
		return (res>0)?true:false;
	}

	@Override
	public boolean P_update(Vo_Product pvo) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean P_delete(int aseq) {
		// TODO Auto-generated method stub
		return false;
	}

}
