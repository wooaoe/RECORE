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
		List<Vo_Cart> list_cart = new ArrayList<Vo_Cart>();
		List<Vo_Funding_detail> list_fun = new ArrayList<Vo_Funding_detail>();
		List<Vo_Order_Num> list_order = new ArrayList<Vo_Order_Num>();
		List<Vo_Order> list_order_option = new ArrayList<Vo_Order>();
		List<Vo_QnA> list_qna = new ArrayList<Vo_QnA>();
		List<Vo_Wish> list_wish = new ArrayList<Vo_Wish>();
		Vo_Cart vo_cart = null;
		Vo_Funding_detail vo_fun = null;
		Vo_Order vo_order_option = null;
		Vo_Order_Num vo_order = null;
		Vo_QnA vo_qna = null;
		Vo_Wish vo_wish = null;
		
//		String sql_acc = "SELECT * FROM ACCOUNT WHERE ACC_NO=?"; //session에 있어서 필요없음
		String sql_cart = "SELECT * FROM CART JOIN PROD_OPTION USING(PROD_ID) JOIN PRODUCT USING(PROD_NO) WHERE ACC_NO=?";
		String sql_fun = "SELECT * FROM F_PM WHERE ACC_NO=?";
		String sql_order = "SELECT * FROM ORDER_NUM JOIN PROD_ORDER USING(ORDER_NO) WHERE ACC_NO=?";
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
				vo_cart = new Vo_Cart(rs.getInt(3),rs.getInt(2), rs.getInt(1),
						rs.getString(9),rs.getString(12),
						rs.getString(11),rs.getInt(13),
						rs.getInt(4));
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
		
		try {
			pstmt = con.prepareStatement(sql_order);
			pstmt.setInt(1, accseq);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				vo_order_option = new Vo_Order(rs.getInt(8),rs.getInt(10),
											rs.getInt(9),rs.getString(11),
											rs.getString(12));
				list_order_option.add(vo_order_option);
				
				vo_order = new Vo_Order_Num(rs.getInt(1),rs.getInt(2),
											rs.getString(3),rs.getString(4),
											rs.getString(5),rs.getDate(6),rs.getInt(7),
											list_order_option);
				list_order.add(vo_order);
			}
			map.put("list_order", list_order);
			System.out.println("list_order" + list_order);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
//		try {
//			pstmt = con.prepareStatement(sql_qna);
//			pstmt.setInt(1, accseq);
//			rs = pstmt.executeQuery();
//			
//			while(rs.next()) {
//				vo_qna = new Vo_QnA(
//							rs.getInt(1),rs.getInt(2),rs.getString(6),rs.getDate(9)
//							);
//				list_qna.add(vo_qna);
//			}
//			map.put("list_qna", list_qna);
//			
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
		
		try {
			pstmt = con.prepareStatement(sql_wish);
			pstmt.setInt(1, accseq);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				vo_wish = new Vo_Wish(rs.getInt(1),rs.getInt(2),rs.getString(4),rs.getString(7),rs.getString(6),rs.getInt(8));
				list_wish.add(vo_wish);
			}
			
			map.put("list_wish", list_wish);
			System.out.println("dao에서 map<wish> : " + map.get("list_wish"));
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs,pstmt,con);
		}
		
		return map;
	}

	@Override
	public Vo_Order My_orderStatus(Vo_Order sts) {
		return null;
	}
	
	@Override
	public boolean My_deleteWish_All(int accseq) {
		Connection con = getConnection();
		PreparedStatement pstmt = null;
		int res = 0;
		String sql = "DELETE FROM WISH WHERE ACC_NO=?";
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, accseq);
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
	public boolean My_deleteWish_One(int accseq, int prod_no) {
		Connection con = getConnection();
		PreparedStatement pstmt = null;
		int res = 0;
		String sql = "DELETE FROM WISH WHERE ACC_NO=? AND PROD_NO=?";
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, accseq);
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
	public boolean My_updateCart(int prod_id, int cart_amount) {
		Connection con = getConnection();
		PreparedStatement pstmt = null;
		int res = 0;
		String sql = "UPDATE CART SET CART_AMOUNT=? WHERE PROD_ID=?";
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, cart_amount);
			pstmt.setInt(2, prod_id);
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
	public boolean My_deleteCart_One(int accseq, int prod_id) {
		Connection con = getConnection();
		PreparedStatement pstmt = null;
		int res = 0;
		String sql = "DELETE FROM CART WHERE ACC_NO=? AND PROD_ID=?";
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, accseq);
			pstmt.setInt(2, prod_id);
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
	public boolean My_deleteCart_All(int accseq) {
		Connection con = getConnection();
		PreparedStatement pstmt = null;
		int res = 0;
		String sql = "DELETE FROM CART WHERE ACC_NO=?";
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, accseq);
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

}
