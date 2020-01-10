package com.mvc.dao;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.mvc.vo.Vo_Account;
import com.mvc.vo.Vo_Cart;
import com.mvc.vo.Vo_Category_Detail;
import com.mvc.vo.Vo_Order;
import com.mvc.vo.Vo_Order_Num;
import com.mvc.vo.Vo_Prod_option;
import com.mvc.vo.Vo_Product;
import com.mvc.vo.Vo_Review;

public class ProductDaoImp implements ProductDao {

	@Override
	public List<Vo_Product> P_selectAll() {

		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		List<Vo_Product> plist = new ArrayList<Vo_Product>();

		try {

			String sql = "SELECT * FROM PRODUCT ORDER BY PROD_NO DESC";

			pstm = con.prepareStatement(sql);
			System.out.println("prod_all query 준비 : " + sql);
			rs = pstm.executeQuery();
			System.out.println("prod_all query 실행 : " + sql);

			while (rs.next()) {

				Vo_Product tmp = new Vo_Product(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4),
						rs.getString(5), rs.getString(6), rs.getInt(7), rs.getString(8), rs.getInt(9), rs.getString(10),
						rs.getDouble(11), rs.getDate(12), rs.getString(13));

				plist.add(tmp);
				System.out.println("product All : " + plist);

			}
		} catch (SQLException e) {

			e.printStackTrace();

		} finally {
			close(rs, pstm, con);
		}

		return plist;
	}

	@Override
	public List<Vo_Product> P_topSelectOne(int catdno) {

		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		List<Vo_Product> toplist = new ArrayList<Vo_Product>();

		String sql = "SELECT * FROM PRODUCT WHERE CATD_NO = ? AND ROWNUM <= 4 ORDER BY PROD_NO DESC";

		try {
			pstm = con.prepareStatement(sql);
			pstm.setInt(1, catdno);
			System.out.println("query 준비 : " + sql);
			rs = pstm.executeQuery();
			System.out.println("query 실행 : " + sql);

			while (rs.next()) {

				Vo_Product tmp = new Vo_Product(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4),
						rs.getString(5), rs.getString(6), rs.getInt(7), rs.getString(8), rs.getInt(9), rs.getString(10),
						rs.getDouble(11), rs.getDate(12), rs.getString(13));

				toplist.add(tmp);
				System.out.println("toplist : " + toplist);

			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs, pstm, con);
		}

		return toplist;
	}

	@Override
	public Map option_selectAll(String prod_id[]) {

		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		List<Vo_Prod_option> polist = new ArrayList<Vo_Prod_option>();
		List<Vo_Product> plist = new ArrayList<Vo_Product>();
		Map map = new HashMap();
		Vo_Prod_option povo = null;
		Vo_Product pvo = null;

		String sql = "SELECT * FROM PROD_OPTION JOIN PRODUCT USING(PROD_NO) WHERE PROD_ID = ?";

		try {

			pstm = con.prepareStatement(sql);
			for (int i = 0; i < prod_id.length; i++) {
				pstm.setString(1, prod_id[i]);
				rs = pstm.executeQuery();

				while (rs.next()) {
					povo = new Vo_Prod_option(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4),
							rs.getInt(5));

					polist.add(povo);

					pvo = new Vo_Product(rs.getInt(1), rs.getInt(6), rs.getString(7), rs.getString(8), rs.getString(9),
							rs.getString(10), rs.getInt(11), rs.getString(12), rs.getInt(13), rs.getString(14),
							rs.getDouble(15), rs.getDate(16), rs.getString(17));

					plist.add(pvo);
				}
				System.out.println("imp polist : " + polist);
				System.out.println("imp plist : " + plist);

			}
			map.put("polist", polist);
			map.put("plist", plist);

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs, pstm, con);
		}

		return map;
	}

	@Override
	public List<Vo_Product> Parent_selectAll(int catdid) {

		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		List<Vo_Product> prntlist = new ArrayList<Vo_Product>();

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
						rs.getDouble(11), rs.getDate(12), rs.getString(13));

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

		try {

			String sql = "SELECT * FROM PRODUCT P JOIN CATEGORY_DETAIL CD \r\n"
					+ "ON (P.CATD_NO = CD.CATD_NO) WHERE P.CATD_NO = ? ORDER BY PROD_NO DESC";

			pstm = con.prepareStatement(sql);
			pstm.setInt(1, catdno);
			rs = pstm.executeQuery();

			while (rs.next()) {
				Vo_Product tmp = new Vo_Product(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4),
						rs.getString(5), rs.getString(6), rs.getInt(7), rs.getString(8), rs.getInt(9), rs.getString(10),
						rs.getDouble(11), rs.getDate(12), rs.getString(13));

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
						rs.getDouble(11), rs.getDate(12), rs.getString(13));

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
	public Map<String, String> choice_selectOption(ArrayList<Vo_Prod_option> povo, Vo_Product pvo) {

		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		Map<String, String> choice = new HashMap<>();
		List<Vo_Prod_option> polist = new ArrayList<Vo_Prod_option>();

		String sql = "SELECT * FROM PROD_OPTION WHERE PROD_NO = ?";

		try {
			pstm = con.prepareStatement(sql);
			pstm.setInt(1, pvo.getProd_no());
			rs = pstm.executeQuery();

			while (rs.next()) {
				Vo_Prod_option tmp = new Vo_Prod_option(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4),
						rs.getInt(5));

				polist.add(tmp);
			}

			for (int i = 0; i < polist.size(); i++) {

				choice.put(polist.get(i).getProd_color(), polist.get(i).getProd_size());
			}
			System.out.println("productimp choice map 값 : " + choice);

		} catch (SQLException e) {

			e.printStackTrace();

		} finally {

			close(rs, pstm, con);
		}

		return choice;
	}

	@Override
	public List<Vo_Review> Review_selectOne(Vo_Product pvo) {

		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		List<Vo_Review> rev = new ArrayList<>();

		String sql = "";

		return null;
	}

	@Override
	public boolean P_insert(Vo_Product pvo) {

		// insert 메소드 만들거임 from 김성일

		Connection con = getConnection();
		PreparedStatement pstm = null;
		int res = 0;

		String sql = "INSERT INTO PRODUCT VALUES(PROD_SEQ.NEXTVAL,?,'f_img','th_img',?,?,?,'con_img',?,?,?,SYSDATE,?)";
		System.out.println(sql);

		try {
			pstm = con.prepareStatement(sql);
			pstm.setInt(1, pvo.getProd_catd());
			pstm.setString(2, pvo.getProd_name());
			pstm.setString(3, pvo.getProd_brand());
			pstm.setInt(4, pvo.getProd_price());
			pstm.setInt(5, pvo.getProd_con_count());
			pstm.setString(6, pvo.getProd_dc_yn());
			pstm.setDouble(7, pvo.getProd_dc());
			pstm.setString(8, pvo.getProd_note());

			res = pstm.executeUpdate();

			if (res > 0) {
				commit(con);
				System.out.println("커밋완료");
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstm, con);
		}

		return (res > 0) ? true : false;
	}

	@Override
	public boolean O_insert(int prod_id, int price, Vo_Account acc, int amount) {

		Connection con = getConnection();
		PreparedStatement pstm = null;
		int res = 0;

		String sql = "INSERT INTO PROD_ORDER VALUES(ORDER_NUM.NEXTVAL, ?, ?, ?, 0, ?, N)";
		String sql2 = "INSERT INTO ORDER_NUM VALUES(ORDER_NUM.NEXTVAL, ?, ?, ?, ?, SYSDATE, ?)";

		try {

			pstm = con.prepareStatement(sql);
			pstm.setInt(1, prod_id);
			pstm.setInt(2, amount);
			pstm.setInt(3, price);
			pstm.setString(4, "입금 완료");

			res = pstm.executeUpdate();

			if (res > 0) {
				commit(con);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		try {
			pstm = con.prepareStatement(sql2);
			pstm.setInt(1, acc.getAcc_no());
			pstm.setString(2, acc.getAcc_zipcode());
			pstm.setString(3, acc.getAcc_addr());
			pstm.setString(4, acc.getAcc_addr2());
			pstm.setInt(5, price);

			if (res > 0) {
				commit(con);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstm, con);
		}

		return res > 0 ? true : false;
	}

	@Override
	public boolean O_insert(String[] prod_id, int price, Vo_Account acc, String[] prod_amount) {

		
		
		
		return false;
	}
	
	
	@Override
	public boolean P_insertCart(int acc_no, int prod_id, int amount) {

		Connection con = getConnection();
		PreparedStatement pstmt = null;
		int res = 0;
		String sql = "INSERT INTO CART VALUES(?,?,?)";

		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, acc_no);
			pstmt.setInt(2, prod_id);
			pstmt.setInt(3, amount); 
			res = pstmt.executeUpdate();

			if (res > 0) {
				commit(con);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt, con);
		}

		return (res > 0) ? true : false;
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

			if (res > 0) {
				commit(con);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt, con);
		}

		return (res > 0) ? true : false;
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

	@Override
	public int P_getSeqCurrval() {
		// 현재 prod_seq 의 시퀀스 번호를 가져오는 메소드

		Connection con = getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		int p_seq = 0;

		try {

			String sql = "SELECT LAST_NUMBER FROM USER_SEQUENCES  WHERE SEQUENCE_NAME = 'PROD_SEQ'";
			System.out.println(sql);

			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {

				p_seq = rs.getInt(1);

			}

			p_seq--;

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs, pstmt, con);
		}

		System.out.println(p_seq);

		return p_seq;
	}

	@Override
	public boolean POinsert(int pseq, Vo_Prod_option povo) {

		// prod_option insert하는 메소드 따로 만들거임 from 김성일

		Connection con = getConnection();
		PreparedStatement pstm = null;
		int res = 0;

		String sql = "INSERT INTO PROD_OPTION VALUES(?,PROD_ID_SEQ.NEXTVAL,?,?,?)";

		try {
			pstm = con.prepareStatement(sql);
			pstm.setInt(1, pseq);
			pstm.setString(2, povo.getProd_color());
			pstm.setString(3, povo.getProd_size());
			pstm.setInt(4, povo.getProd_stock());

			res = pstm.executeUpdate();

			if (res > 0) {
				commit(con);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstm, con);
		}

		return (res > 0) ? true : false;
	}


}
