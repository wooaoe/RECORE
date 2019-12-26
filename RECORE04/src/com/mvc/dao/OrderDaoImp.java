package com.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.mvc.vo.Vo_Order;

public class OrderDaoImp implements OrderDao {

	@Override
	public List<Vo_Order> O_selectAll() {
		
		Connection con = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		List<Vo_Order> order = new ArrayList<>();
		
		
		
		
			
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
