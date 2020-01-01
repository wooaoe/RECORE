package com.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import static common.JDBCTemplate.*;

import com.mvc.vo.Vo_Order;
import com.mvc.vo.Vo_Order_Num;

public class OrderDaoImp implements OrderDao {

	@Override
	public List<Vo_Order_Num> O_selectAll() {
		
		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		List<Vo_Order_Num> orderNum = new ArrayList<>();
		List<Vo_Order> order = new ArrayList<>();
		
		String sql = "SELECT * FROM PROD_ORDER";
		
		try {
			pstm = con.prepareStatement(sql);
			rs = pstm.executeQuery();
			
			while(rs.next()) {
				Vo_Order tmp = new Vo_Order(rs.getInt(1), rs.getInt(2),
						rs.getInt(3), rs.getString(4), rs.getString(5));
				
				order.add(tmp);
			}
			
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
				
		String sql2 = "SELECT * FROM ORDER_NUM";
		
//		try {
//			pstm = con.prepareStatement(sql2);
//			rs = pstm.executeQuery();
//			
//			while(rs.next()) {
//				Vo_Order_Num tmp2 = new Vo_Order_Num(rs.getInt(1), rs.getInt(2),
//						rs.getString(3), rs.getString(4), rs.getString(5),
//						rs.getDate(6), order);
//				
//				orderNum.add(tmp2);
//			}
//			
//			
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		
		
			
		return null;
	}

	@Override
	public Vo_Order O_selectOne(int oseq) {
		return null;
	}

	@Override
	public boolean O_insert(Vo_Order ovo) {
		return false;
	}

}
