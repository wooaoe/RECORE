package com.mvc.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import static common.JDBCTemplate.*;

import com.mvc.vo.Vo_Cart;
import com.mvc.vo.Vo_Prod_option;
import com.mvc.vo.Vo_Product;
import com.mvc.vo.Vo_Wish;

public class ProductDaoImp implements ProductDao {

	@Override
	public List<Vo_Product> P_selectAll() {

		Connection con = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		List<Vo_Product> Plist = new ArrayList<Vo_Product>();

		try {

			Properties prop = new Properties();
			String filePath = properties();
			prop.load(new FileInputStream(filePath));

			String sql = prop.getProperty("ProdSelectAll");

			System.out.println("query 실행: " + sql);

			pstm = con.prepareStatement(sql);
			rs = pstm.executeQuery();

			while (rs.next()) {

				Vo_Product tmp = new Vo_Product(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4),
						rs.getString(5), rs.getString(6), rs.getInt(7), rs.getString(8), rs.getInt(9), rs.getString(10),
						rs.getDouble(11), rs.getDate(12), rs.getString(13), (List<Vo_Prod_option>) rs.getArray(0));

				Plist.add(tmp);
			}
			
			System.out.println(Plist);

		} catch (IOException e) {

			e.printStackTrace();

		} catch (SQLException e) {

			e.printStackTrace();

		} finally {
			close(rs, pstm, con);
		}

		return Plist;
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
