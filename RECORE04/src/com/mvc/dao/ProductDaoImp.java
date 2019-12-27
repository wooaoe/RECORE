package com.mvc.dao;

import static common.JDBCTemplate.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mvc.vo.Vo_Cart;
import com.mvc.vo.Vo_Prod_option;
import com.mvc.vo.Vo_Product;
import com.mvc.vo.Vo_Wish;

public class ProductDaoImp implements ProductDao {

	@Override
	public List<Vo_Product> P_selectAll() {

		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		List<Vo_Product> plist = new ArrayList<Vo_Product>();
		List<Vo_Prod_option> polist = new ArrayList<Vo_Prod_option>();

		System.out.println(plist);

		try {

			String sql = "SELECT * FROM PROD_OPTION WHERE PROD_NO IN(100,105,110,116,147,149,161,162,200,202,165,169,228,231,246)";
			System.out.println(sql);

			pstm = con.prepareStatement(sql);
			rs = pstm.executeQuery();

			while (rs.next()) {
				Vo_Prod_option tmp2 = new Vo_Prod_option(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4),
						rs.getInt(5));

				polist.add(tmp2);
				System.out.println("polist의 vo 값: " + tmp2);
			}

			System.out.println("polist 값" + polist);

		} catch (SQLException e1) {

		}

		try {

			String sql2 = "SELECT * FROM PRODUCT WHERE PROD_NO IN(100,105,110,116,147,149,161,162,200,202,165,169,228,231,246)";

			pstm = con.prepareStatement(sql2);
			rs = pstm.executeQuery();

			while (rs.next()) {

				Vo_Product tmp = new Vo_Product(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4),
						rs.getString(5), rs.getString(6), rs.getInt(7), rs.getString(8), rs.getInt(9), rs.getString(10),
						rs.getDouble(11), rs.getDate(12), rs.getString(13), polist);

				plist.add(tmp);
				System.out.println("plist 값 : " + plist);

			}
		} catch (SQLException e) {

			e.printStackTrace();

		} finally {
			close(rs, pstm, con);
		}

		return plist;
	}

	@Override
	public List<Vo_Product> BC_selectAll() {

		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		List<Vo_Product> bclist = new ArrayList<Vo_Product>();
		List<Vo_Prod_option> polist = new ArrayList<Vo_Prod_option>();

		try {

			String sql = "SELECT * FROM PROD_OPTION WHERE PROD_ID BETWEEN 1000 AND 1018 ORDER BY PROD_ID DESC";
			System.out.println(sql);

			pstm = con.prepareStatement(sql);
			rs = pstm.executeQuery();

			while (rs.next()) {
				Vo_Prod_option tmp2 = new Vo_Prod_option(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4),
						rs.getInt(5));

				polist.add(tmp2);
				System.out.println("polist의 vo 값: " + tmp2);
			}

			System.out.println("polist 값" + polist);

		} catch (SQLException e1) {

		}

		try {

			String sql = "SELECT * FROM PRODUCT WHERE CATD_NO = 6 ORDER BY PROD_NO DESC";

			pstm = con.prepareStatement(sql);
			rs = pstm.executeQuery();

			while (rs.next()) {
				Vo_Product tmp = new Vo_Product(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4),
						rs.getString(5), rs.getString(6), rs.getInt(7), rs.getString(8), rs.getInt(9), rs.getString(10),
						rs.getDouble(11), rs.getDate(12), rs.getString(13), polist);

				bclist.add(tmp);
			}

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			close(rs, pstm, con);
		}

		return bclist;
	}

	@Override
	public List<Vo_Product> Clo_selectAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Vo_Product> Outer_selectAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Vo_Product> Top_selectAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Vo_Product> Bottom_selectAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Vo_Product> Wallet_selectAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Vo_Product> Life_selectAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Vo_Product> Supply_selectAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Vo_Product> Home_selectAll() {
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
	public boolean P_insert(Vo_Cart cvo) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean P_insert(Vo_Wish wvo) {
		// TODO Auto-generated method stub
		return false;
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
