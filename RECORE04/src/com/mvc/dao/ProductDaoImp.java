package com.mvc.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import static common.JDBCTemplate.*;

import com.mvc.vo.Vo_Cart;
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
			
			
			
		} catch (IOException e) {
			
			e.printStackTrace();
			
		}catch(SQLException e) {
			
			e.printStackTrace();
			
		}
		
		
		
		
		
		
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
