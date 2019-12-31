package com.mvc.dao;

import static common.JDBCTemplate.*;
import static common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mvc.vo.Vo_Cart;
import com.mvc.vo.Vo_Category_Detail;
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

//		1. PRODUCT 쿼리 실행문장 (위에서 옵션 리스트를 마지막 인덱스값에 넣어주기)

		try {

			String sql2 = "SELECT * FROM PRODUCT ORDER BY PROD_NO DESC";

			pstm = con.prepareStatement(sql2);
			rs = pstm.executeQuery();

			while (rs.next()) {

				Vo_Product tmp = new Vo_Product(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4),
						rs.getString(5), rs.getString(6), rs.getInt(7), rs.getString(8), rs.getInt(9), rs.getString(10),
						rs.getDouble(11), rs.getDate(12), rs.getString(13), rs.getString(14));

				plist.add(tmp);

			}
		} catch (SQLException e) {

			e.printStackTrace();

		} finally {
			close(rs, pstm, con);
		}

		return plist;
	}

	@Override
	public List<Vo_Prod_option> option_selectAll() {

		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		List<Vo_Prod_option> polist = new ArrayList<Vo_Prod_option>();

		String sql = "SELECT * FROM PROD_OPTION";

		try {
			pstm = con.prepareStatement(sql);
			rs = pstm.executeQuery();

			System.out.println("옵션 query 실행 : " + sql);

			while (rs.next()) {
				Vo_Prod_option opt = new Vo_Prod_option(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4),
						rs.getInt(5));

				polist.add(opt);

				System.out.println("상품 옵션 리스트 값 : " + polist);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs, pstm, con);
		}

		return polist;
	}

	@Override
	public List<Vo_Product> Parent_selectAll(int catdid) {

		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		List<Vo_Product> prntlist = new ArrayList<Vo_Product>();

//		1. PRODUCT 쿼리 실행문장 (위에서 옵션 리스트를 마지막 인덱스값에 넣어주기)

		try {

			String sql = "SELECT * FROM PRODUCT p JOIN CATEGORY_DETAIL c ON(p.CATD_NO = c.CATD_NO) WHERE c.CAT_ID = ? "
					+ "ORDER BY PROD_NO DESC";

			pstm = con.prepareStatement(sql);
			pstm.setInt(1, catdid);
			rs = pstm.executeQuery();

			System.out.println("parent 쿼리 실행 : " + sql);
			
			while (rs.next()) {
				Vo_Product tmp = new Vo_Product(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4),
						rs.getString(5), rs.getString(6), rs.getInt(7), rs.getString(8), rs.getInt(9), rs.getString(10),
						rs.getDouble(11), rs.getDate(12), rs.getString(13), rs.getString(14));

				prntlist.add(tmp);
				System.out.println("parent 쿼리 실행 값 : " + prntlist);
			}

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			close(rs, pstm, con);
		}

		return prntlist;
	}

	@Override
	public List<Vo_Product> Child_selectAll(int catdno) {

		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		List<Vo_Product> childlist = new ArrayList<Vo_Product>();

//		1. PRODUCT 쿼리 실행문장 (위에서 옵션 리스트를 마지막 인덱스값에 넣어주기)

		try {

			String sql = "SELECT * FROM PRODUCT P JOIN CATEGORY_DETAIL CD \r\n"
					+ "ON (P.CATD_NO = CD.CATD_NO) WHERE P.CATD_NO = ? ORDER BY PROD_NO DESC";

			pstm = con.prepareStatement(sql);
			pstm.setInt(1, catdno);
			rs = pstm.executeQuery();

			while (rs.next()) {
				Vo_Product tmp = new Vo_Product(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4),
						rs.getString(5), rs.getString(6), rs.getInt(7), rs.getString(8), rs.getInt(9), rs.getString(10),
						rs.getDouble(11), rs.getDate(12), rs.getString(13), rs.getString(14));

				childlist.add(tmp);
			}

		} catch (SQLException e) {

			e.printStackTrace();

		} finally {

			close(rs, pstm, con);
		}

		return childlist;
	}


	@Override
	public List<Vo_Category_Detail> CD_selectAll(int catdid) {

		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;

		List<Vo_Category_Detail> cdlist = new ArrayList<Vo_Category_Detail>();

		String sql = "SELECT * FROM CATEGORY_DETAIL WHERE CAT_ID = ?";

		try {

			pstm = con.prepareStatement(sql);
			pstm.setInt(1, catdid);
			rs = pstm.executeQuery();

			while (rs.next()) {
				Vo_Category_Detail tmp = new Vo_Category_Detail(rs.getInt(1), rs.getInt(2), rs.getString(3),
						rs.getString(4), rs.getString(5));

				cdlist.add(tmp);
				System.out.println("카테고리 디테일 값 : " + cdlist);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {

			close(rs, pstm, con);
		}

		return cdlist;
	}

	@Override
	public Vo_Category_Detail CD_selectAll2(int catdno) {

		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;

		Vo_Category_Detail cdvo2 = new Vo_Category_Detail();

		String sql = "SELECT * FROM CATEGORY_DETAIL WHERE CATD_NO = ?";

		try {

			pstm = con.prepareStatement(sql);
			pstm.setInt(1, catdno);
			rs = pstm.executeQuery();

			while (rs.next()) {
				cdvo2 = new Vo_Category_Detail(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4),
						rs.getString(5));

				System.out.println("카테고리 디테일 값2 : " + cdvo2);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {

			close(rs, pstm, con);
		}

		return cdvo2;
	}

	@Override
	public Vo_Product P_selectOne(int pseq) {

		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		Vo_Product pvo = new Vo_Product();

		try {

			String sql = "SELECT * FROM PRODUCT P JOIN CATEGORY_DETAIL CD ON (P.CATD_NO = CD.CATD_NO)\r\n"
					+ "WHERE PROD_NO = ?";

			pstm = con.prepareStatement(sql);
			pstm.setInt(1, pseq);
			rs = pstm.executeQuery();
			System.out.println("product query 실행 : " + sql);

			while (rs.next()) {
				pvo = new Vo_Product(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getString(6), rs.getInt(7), rs.getString(8), rs.getInt(9), rs.getString(10),
						rs.getDouble(11), rs.getDate(12), rs.getString(13), rs.getString(14));

				System.out.println("pvo 값: " + pvo);

				/* System.out.println(pvo.getPlist().get(pseq)); */
			}

		} catch (SQLException e) {

			e.printStackTrace();

		} finally {

			close(rs, pstm, con);

		}

		return pvo;
	}

	@Override
	public Vo_Category_Detail CD_selectOne(Vo_Product pvo) {

		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;

		Vo_Category_Detail cdvo = new Vo_Category_Detail();

		String sql = "SELECT * FROM CATEGORY_DETAIL WHERE CATD_NO = ?";

		try {

			pstm = con.prepareStatement(sql);
			pstm.setInt(1, pvo.getProd_catd());
			rs = pstm.executeQuery();

			while (rs.next()) {
				cdvo = new Vo_Category_Detail(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4),
						rs.getString(5));

				System.out.println("카테고리 디테일 값 : " + cdvo);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {

			close(rs, pstm, con);
		}

		return cdvo;
	}

	@Override
	public ArrayList<Vo_Prod_option> po_selectOne(Vo_Product pvo) {

		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		ArrayList<Vo_Prod_option> povo = new ArrayList<Vo_Prod_option>();

		String sql = "SELECT * FROM PROD_OPTION WHERE PROD_NO = ?";

		try {

			pstm = con.prepareStatement(sql);
			pstm.setInt(1, pvo.getProd_no());
			rs = pstm.executeQuery();

			System.out.println("옵션 query 실행 값 : " + sql);

			while (rs.next()) {
				Vo_Prod_option tmp = new Vo_Prod_option(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4),
						rs.getInt(5));

				povo.add(tmp);
				System.out.println("상품 옵션 값: " + povo);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return povo;
	}

	@Override
	public boolean P_insert(Vo_Product pvo) {

		/*
		 * Connection con = getConnection(); PreparedStatement pstm = null; int res = 0;
		 * 
		 * String sql = "INSERT INTO PRODUCT VALUES()";
		 */

		return false;
	}

	@Override
	public boolean O_insert(Vo_Prod_option povo, Vo_Product prod) {

		Connection con = getConnection();
		PreparedStatement pstm = null;
		int res = 0;

		String sql = "INSERT INTO PROD_ORDER VALUES(ORDER_NUM.NEXTVAL, ?, ?, ?, ORDER_TNO.NEXTVAL, ?)";

		try {

			pstm = con.prepareStatement(sql);
			pstm.setInt(1, povo.getProd_id());
			pstm.setInt(2, povo.getProd_stock());
			pstm.setInt(3, prod.getProd_price());
			pstm.setString(4, "입금 전");

		} catch (SQLException e) {
			e.printStackTrace();
		}

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
