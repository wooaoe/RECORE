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

//		1. PROD_OPTION 쿼리 실행문장 (Vo_Product에서 옵션을 리스트로 관리하기 때문에) 

		try {

			String sql = "SELECT * FROM PROD_OPTION WHERE PROD_NO IN(122,105,110,116,147,149,161,162,200,202,165,169,228,231,246)";
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

//		2. PRODUCT 쿼리 실행문장 (위에서 옵션 리스트를 마지막 인덱스값에 넣어주기)

		try {

			String sql2 = "SELECT * FROM PRODUCT WHERE PROD_NO IN(122,105,110,116,147,149,161,162,200,202,165,169,228,231,246)";

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

//		1. PROD_OPTION 쿼리 실행문장 (Vo_Product에서 옵션을 리스트로 관리하기 때문에)

		try {

			String sql = "SELECT * FROM PROD_OPTION WHERE PROD_ID BETWEEN 1001 AND 1019 ORDER BY PROD_ID DESC";
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

//		2. PRODUCT 쿼리 실행문장 (위에서 옵션 리스트를 마지막 인덱스값에 넣어주기)

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

		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		List<Vo_Product> clolist = new ArrayList<Vo_Product>();
		List<Vo_Prod_option> polist = new ArrayList<Vo_Prod_option>();

//		1. PROD_OPTION 쿼리 실행문장 (Vo_Product에서 옵션을 리스트로 관리하기 때문에)

		try {

			String sql = "SELECT * FROM PROD_OPTION WHERE PROD_NO IN(161, 162, 202, 210, 213, 216, 218, 221, 222)";
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

//		2. PRODUCT 쿼리 실행문장 (위에서 옵션 리스트를 마지막 인덱스값에 넣어주기)

		try {

			String sql = "SELECT * FROM PRODUCT WHERE PROD_NO IN(161, 162, 202, 210, 213, 216, 218, 221, 222)";

			pstm = con.prepareStatement(sql);
			rs = pstm.executeQuery();

			while (rs.next()) {
				Vo_Product tmp = new Vo_Product(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4),
						rs.getString(5), rs.getString(6), rs.getInt(7), rs.getString(8), rs.getInt(9), rs.getString(10),
						rs.getDouble(11), rs.getDate(12), rs.getString(13), polist);

				clolist.add(tmp);
			}

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			close(rs, pstm, con);
		}

		return clolist;
	}

	@Override
	public List<Vo_Product> Outer_selectAll() {

		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		List<Vo_Product> outlist = new ArrayList<Vo_Product>();
		List<Vo_Prod_option> polist = new ArrayList<Vo_Prod_option>();

//		1. PROD_OPTION 쿼리 실행문장 (Vo_Product에서 옵션을 리스트로 관리하기 때문에)

		try {

			String sql = "SELECT * FROM PROD_OPTION WHERE PROD_ID BETWEEN 1019 AND 1028 ORDER BY PROD_ID DESC";
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

//		2. PRODUCT 쿼리 실행문장 (위에서 옵션 리스트를 마지막 인덱스값에 넣어주기)

		try {

			String sql = "SELECT * FROM PRODUCT WHERE PROD_NO IN(161,162,163,164) ORDER BY PROD_NO DESC";

			pstm = con.prepareStatement(sql);
			rs = pstm.executeQuery();

			while (rs.next()) {
				Vo_Product tmp = new Vo_Product(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4),
						rs.getString(5), rs.getString(6), rs.getInt(7), rs.getString(8), rs.getInt(9), rs.getString(10),
						rs.getDouble(11), rs.getDate(12), rs.getString(13), polist);

				outlist.add(tmp);
			}

		} catch (SQLException e) {

			e.printStackTrace();

		} finally {

			close(rs, pstm, con);
		}

		return outlist;
	}

	@Override
	public List<Vo_Product> Top_selectAll() {

		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		List<Vo_Product> toplist = new ArrayList<Vo_Product>();
		List<Vo_Prod_option> polist = new ArrayList<Vo_Prod_option>();

//		1. PROD_OPTION 쿼리 실행문장 (Vo_Product에서 옵션을 리스트로 관리하기 때문에)

		try {

			String sql = "SELECT * FROM PROD_OPTION WHERE PROD_NO IN(200, 201, 202, 210, 211, 212, 213, 214, 215) ORDER BY PROD_ID DESC";
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

//		2. PRODUCT 쿼리 실행문장 (위에서 옵션 리스트를 마지막 인덱스값에 넣어주기)

		try {

			String sql = "SELECT * FROM PRODUCT WHERE CATD_NO = 8 ORDER BY PROD_NO DESC";

			pstm = con.prepareStatement(sql);
			rs = pstm.executeQuery();

			while (rs.next()) {
				Vo_Product tmp = new Vo_Product(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4),
						rs.getString(5), rs.getString(6), rs.getInt(7), rs.getString(8), rs.getInt(9), rs.getString(10),
						rs.getDouble(11), rs.getDate(12), rs.getString(13), polist);

				toplist.add(tmp);
			}

		} catch (SQLException e) {

			e.printStackTrace();

		} finally {

			close(rs, pstm, con);
		}

		return toplist;
	}

	@Override
	public List<Vo_Product> Bottom_selectAll() {

		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		List<Vo_Product> bottlist = new ArrayList<Vo_Product>();
		List<Vo_Prod_option> polist = new ArrayList<Vo_Prod_option>();

//		1. PROD_OPTION 쿼리 실행문장 (Vo_Product에서 옵션을 리스트로 관리하기 때문에)

		try {

			String sql = "SELECT * FROM PROD_OPTION WHERE PROD_ID BETWEEN 1059 AND 1097 ORDER BY PROD_ID DESC";
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

//		2. PRODUCT 쿼리 실행문장 (위에서 옵션 리스트를 마지막 인덱스값에 넣어주기)

		try {

			String sql = "SELECT * FROM PRODUCT WHERE CATD_NO = 9 ORDER BY PROD_NO DESC";

			pstm = con.prepareStatement(sql);
			rs = pstm.executeQuery();

			while (rs.next()) {
				Vo_Product tmp = new Vo_Product(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4),
						rs.getString(5), rs.getString(6), rs.getInt(7), rs.getString(8), rs.getInt(9), rs.getString(10),
						rs.getDouble(11), rs.getDate(12), rs.getString(13), polist);

				bottlist.add(tmp);
			}

		} catch (SQLException e) {

			e.printStackTrace();

		} finally {

			close(rs, pstm, con);
		}

		return bottlist;
	}

	@Override
	public List<Vo_Product> Wallet_selectAll() {

		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		List<Vo_Product> walist = new ArrayList<Vo_Product>();
		List<Vo_Prod_option> polist = new ArrayList<Vo_Prod_option>();

//		1. PROD_OPTION 쿼리 실행문장 (Vo_Product에서 옵션을 리스트로 관리하기 때문에)

		try {

			String sql = "SELECT * FROM PROD_OPTION WHERE PROD_ID BETWEEN 1029 AND 1037 ORDER BY PROD_ID DESC";
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

//		2. PRODUCT 쿼리 실행문장 (위에서 옵션 리스트를 마지막 인덱스값에 넣어주기)

		try {

			String sql = "SELECT * FROM PRODUCT WHERE CATD_NO = 10 ORDER BY PROD_NO DESC";

			pstm = con.prepareStatement(sql);
			rs = pstm.executeQuery();

			while (rs.next()) {
				Vo_Product tmp = new Vo_Product(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4),
						rs.getString(5), rs.getString(6), rs.getInt(7), rs.getString(8), rs.getInt(9), rs.getString(10),
						rs.getDouble(11), rs.getDate(12), rs.getString(13), polist);

				walist.add(tmp);
			}

		} catch (SQLException e) {

			e.printStackTrace();

		} finally {

			close(rs, pstm, con);
		}

		return walist;
	}

	@Override
	public List<Vo_Product> Life_selectAll() {

		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		List<Vo_Product> lifelist = new ArrayList<Vo_Product>();
		List<Vo_Prod_option> polist = new ArrayList<Vo_Prod_option>();

//		1. PROD_OPTION 쿼리 실행문장 (Vo_Product에서 옵션을 리스트로 관리하기 때문에)

		try {

			String sql = "SELECT * FROM PROD_OPTION WHERE PROD_NO IN(228,229,230,231,232,246,247,248,249) ORDER BY PROD_ID DESC";
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

//		2. PRODUCT 쿼리 실행문장 (위에서 옵션 리스트를 마지막 인덱스값에 넣어주기)

		try {

			String sql = "SELECT * FROM PRODUCT WHERE PROD_NO IN(228,229,230,231,232,246,247,248,249) ORDER BY PROD_NO DESC";

			pstm = con.prepareStatement(sql);
			rs = pstm.executeQuery();

			while (rs.next()) {
				Vo_Product tmp = new Vo_Product(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4),
						rs.getString(5), rs.getString(6), rs.getInt(7), rs.getString(8), rs.getInt(9), rs.getString(10),
						rs.getDouble(11), rs.getDate(12), rs.getString(13), polist);

				lifelist.add(tmp);
			}

		} catch (SQLException e) {

			e.printStackTrace();

		} finally {

			close(rs, pstm, con);
		}

		return lifelist;
	}

	@Override
	public List<Vo_Product> Supply_selectAll() {

		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		List<Vo_Product> supplylist = new ArrayList<Vo_Product>();
		List<Vo_Prod_option> polist = new ArrayList<Vo_Prod_option>();

//		1. PROD_OPTION 쿼리 실행문장 (Vo_Product에서 옵션을 리스트로 관리하기 때문에) 

		try {

			String sql = "SELECT * FROM PROD_OPTION WHERE PROD_NO BETWEEN 228 AND 235 ORDER BY PROD_ID DESC";
			System.out.println(sql);

			pstm = con.prepareStatement(sql);
			rs = pstm.executeQuery();

			while (rs.next()) {
				Vo_Prod_option tmp2 = new Vo_Prod_option(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4),
						rs.getInt(5));

				polist.add(tmp2);
				System.out.println("polist의 vo 값: " + tmp2);
			}

		} catch (SQLException e1) {

		}

//		2. PRODUCT 쿼리 실행문장 

		try {

			String sql = "SELECT * FROM PRODUCT WHERE PROD_NO BETWEEN 228 AND 236 ORDER BY PROD_NO DESC";

			pstm = con.prepareStatement(sql);
			rs = pstm.executeQuery();

			while (rs.next()) {
				Vo_Product tmp = new Vo_Product(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4),
						rs.getString(5), rs.getString(6), rs.getInt(7), rs.getString(8), rs.getInt(9), rs.getString(10),
						rs.getDouble(11), rs.getDate(12), rs.getString(13), polist);

				supplylist.add(tmp);
			}

		} catch (SQLException e) {

			e.printStackTrace();

		} finally { // 마지막 catch문에 close

			close(rs, pstm, con);
		}

		return supplylist;
	}

	@Override
	public List<Vo_Product> Home_selectAll() {

		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		List<Vo_Product> homelist = new ArrayList<Vo_Product>();
		List<Vo_Prod_option> polist = new ArrayList<Vo_Prod_option>();

//		1. PROD_OPTION 쿼리 실행문장 (Vo_Product에서 옵션을 리스트로 관리하기 때문에) 

		try {

			String sql = "SELECT * FROM PROD_OPTION WHERE PROD_NO BETWEEN 246 AND 254 ORDER BY PROD_ID DESC";
			System.out.println(sql);

			pstm = con.prepareStatement(sql);
			rs = pstm.executeQuery();

			while (rs.next()) {
				Vo_Prod_option tmp2 = new Vo_Prod_option(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4),
						rs.getInt(5));

				polist.add(tmp2);
				System.out.println("polist의 vo 값: " + tmp2);
			}

		} catch (SQLException e1) {

		}

//		2. PRODUCT 쿼리 실행문장 

		try {

			String sql = "SELECT * FROM PRODUCT WHERE PROD_NO BETWEEN 246 AND 254 ORDER BY PROD_NO DESC";

			pstm = con.prepareStatement(sql);
			rs = pstm.executeQuery();

			while (rs.next()) {
				Vo_Product tmp = new Vo_Product(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4),
						rs.getString(5), rs.getString(6), rs.getInt(7), rs.getString(8), rs.getInt(9), rs.getString(10),
						rs.getDouble(11), rs.getDate(12), rs.getString(13), polist);

				homelist.add(tmp);
			}

		} catch (SQLException e) {

			e.printStackTrace();

		} finally { // 마지막 catch문에 close

			close(rs, pstm, con);
		}

		return homelist;
	}
	
	
	@Override
	public Vo_Product P_selectOne(int pseq) {
		
		
		
		
		
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
