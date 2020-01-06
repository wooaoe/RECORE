package com.mvc.dao;

import static common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mvc.vo.Vo_Order;
import com.mvc.vo.Vo_OrderTDD;
import com.mvc.vo.Vo_Order_Num;
import com.mvc.vo.Vo_Prod_option;
import com.mvc.vo.Vo_Product;

public class OrderDaoImp implements OrderDao {

	@Override
	public List<Vo_Order_Num> O_selectAll() {

		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		List<Vo_Order_Num> orderNum = new ArrayList<>();
		List<Vo_Order> order = new ArrayList<>();
		
		

		String sql = "SELECT * FROM PROD_ORDER Ord \n" + 
				"JOIN PROD_OPTION opt ON (ord.PROD_ID = opt.PROD_ID)\n" + 
				"JOIN PRODUCT prod ON(opt.PROD_NO = prod.PROD_NO)";

		try {
			pstm = con.prepareStatement(sql);
			rs = pstm.executeQuery();

			while (rs.next()) {
				Vo_Order tmp = new Vo_Order(
						rs.getInt(1), 
						rs.getInt(2), 
						rs.getString(20),
						rs.getString(14), 
						rs.getString(15), 
						rs.getInt(6), 
						rs.getInt(7),
						rs.getString(8), 
						rs.getString(9));

				order.add(tmp);
				System.out.println("orderlist join value : " + order);
			}

		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		String sql2 = "SELECT * FROM ORDER_NUM";

		try {
			pstm = con.prepareStatement(sql2);
			rs = pstm.executeQuery();

			while (rs.next()) {
				Vo_Order_Num tmp2 = new Vo_Order_Num(
						rs.getInt(1), 
						rs.getInt(2), 
						rs.getString(3), 
						rs.getString(4),
						rs.getString(5), 
						rs.getDate(6), 
						rs.getInt(7), 
						order);

				orderNum.add(tmp2);
				System.out.println("orderNum : " + orderNum);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return orderNum;
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
