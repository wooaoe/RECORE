package com.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static common.JDBCTemplate.*;

import com.mvc.vo.Vo_Account;
import com.mvc.vo.Vo_Cart;
import com.mvc.vo.Vo_Funding_detail;
import com.mvc.vo.Vo_Order;
import com.mvc.vo.Vo_Order_Num;
import com.mvc.vo.Vo_QnA;
import com.mvc.vo.Vo_Wish;

public class MypageDao_Impl implements MyPageDao{

	@Override
	public Map<String,Object> selectMypage(int accseq) {
		Connection con = getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Map<String,Object> map = new HashMap<String,Object>();
		List<Vo_Cart> list_cart = null;
		List<Vo_Funding_detail> list_fun = null;
		List<Vo_Order_Num> list_order = null;
		List<Vo_QnA> list_qna = null;
		List<Vo_Wish> list_wish = null;
		Vo_Cart vo_cart = null;
		Vo_Funding_detail vo_fun = null;
		Vo_Order_Num vo_order = null;
		Vo_QnA vo_qna = null;
		Vo_Wish vo_wish = null;
		
//		String sql_acc = "SELECT * FROM ACCOUNT WHERE ACC_NO=?"; //session에 있어서 필요없음
		String sql_cart = "SELECT * FROM CART WHERE ACC_NO=?";
		String sql_fun = "SELECT * FROM F_PM WHERE ACC_NO=?";
		String sql_order = "SELECT * FROM ORDER_NUM"; //order와 join?
		String sql_qna = "SELECT * FROM QNA WHERE ACC_NO=?";
		String sql_wish = "SELECT * FROM WISH JOIN PRODUCT USING(PROD_NO) WHERE ACC_NO=?";
		
		System.out.println("쿼리준비");
		
		//cart 실행
		try {
			pstmt = con.prepareStatement(sql_cart);
			pstmt.setInt(1, accseq);
			rs = pstmt.executeQuery();
			System.out.println("cart 쿼리실행");
			while(rs.next()) {
				list_cart = new ArrayList<Vo_Cart>();
				vo_cart = new Vo_Cart(rs.getInt(1),rs.getInt(2),rs.getInt(3));
				list_cart.add(vo_cart);
			}
			map.put("list_cart", list_cart);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		try {
			pstmt = con.prepareStatement(sql_fun);
			pstmt.setInt(1, accseq);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				list_fun = new ArrayList<Vo_Funding_detail>();
				vo_fun  = new Vo_Funding_detail(
						rs.getInt(1),rs.getInt(2),rs.getInt(3),rs.getInt(4),
						rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8),
						rs.getString(9)
						);
				list_fun.add(vo_fun);
			}
			map.put("list_fun", list_fun);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
//		try {
//			pstmt = con.prepareStatement(sql_order);
//			pstmt.setInt(1, accseq);
//			rs = pstmt.executeQuery();
//			
//			while(rs.next()) {
//				list_order = new ArrayList<Vo_Order_Num>();
//				//??????????????????????????????????????????????????
//				vo_order = new Vo_Order_Num();
//			}
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
		
		try {
			pstmt = con.prepareStatement(sql_qna);
			pstmt.setInt(1, accseq);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				list_qna = new ArrayList<Vo_QnA>();
				vo_qna = new Vo_QnA(
							rs.getInt(1),rs.getInt(2),rs.getInt(3),rs.getInt(4),
							rs.getInt(5),rs.getString(6),rs.getString(7),rs.getString(8),
							rs.getDate(9),rs.getString(10),rs.getInt(11),rs.getInt(12)
						);
				list_qna.add(vo_qna);
			}
			map.put("list_qna", list_qna);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		try {
			pstmt = con.prepareStatement(sql_wish);
			pstmt.setInt(1, accseq);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				list_wish = new ArrayList<Vo_Wish>();
				vo_wish = new Vo_Wish(rs.getInt(1),rs.getInt(2),rs.getString(4),rs.getString(6),rs.getInt(8));
				list_wish.add(vo_wish);
			}
			map.put("list_wish", list_wish);
			System.out.println("dao에서 list_wish의 2번째 인덱스 : " + list_wish.get(0));
			System.out.println("dao에서 map<wish> : " + map.get("list_wish"));
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs,pstmt,con);
		}
		
		return map;
	}
	
//	@Override
//	public List<Vo_Cart> selectCart(int accseq) {
//		Connection con = getConnection();
//		PreparedStatement pstmt = null;
//		ResultSet rs = null;
//		List<Vo_Cart> list_cart = null;
//		Vo_Cart vo_cart = null;
//
//		String sql_cart = "SELECT * FROM CART WHERE ACC_NO=?";
//
//		//cart 실행
//		try {
//			pstmt = con.prepareStatement(sql_cart);
//			pstmt.setInt(1, accseq);
//			rs = pstmt.executeQuery();
//			System.out.println("cart실행");
//			while(rs.next()) {
//				list_cart = new ArrayList<Vo_Cart>();
//				vo_cart = new Vo_Cart(rs.getInt(1),rs.getInt(2),rs.getInt(3));
//				System.out.println("vo_cart : " + vo_cart.getAcc_no());
//				list_cart.add(vo_cart);
//				System.out.println("list_cart amount : " + list_cart.get(0).getCart_amount());
//			}
//			
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//		return list_cart;
//	}
//	
//	@Override
//	public List<Vo_Funding_detail> selectFun(int accseq) {
//		Connection con = getConnection();
//		PreparedStatement pstmt = null;
//		ResultSet rs = null;
//		
//		return null;
//	}
//	
//	@Override
//	public List<Vo_Order> selectOrder(int accseq) {
//		Connection con = getConnection();
//		PreparedStatement pstmt = null;
//		ResultSet rs = null;
//		return null;
//	}
//	
//	@Override
//	public List<Vo_QnA> selectQna(int accseq) {
//		Connection con = getConnection();
//		PreparedStatement pstmt = null;
//		ResultSet rs = null;
//		return null;
//	}
//	
//	@Override
//	public List<Vo_Wish> selectWish(int accseq) {
//		Connection con = getConnection();
//		PreparedStatement pstmt = null;
//		ResultSet rs = null;
//		return null;
//	}

	@Override
	public Vo_Order My_orderStatus(Vo_Order sts) {
		return null;
	}

	@Override
	public boolean My_deleteCart(int accseq) {
		return false;
	}

	@Override
	public boolean My_deleteWish(int accseq) {
		return false;
	}

	@Override
	public boolean My_updateCart(Vo_Order cart) {
		return false;
	}

}
