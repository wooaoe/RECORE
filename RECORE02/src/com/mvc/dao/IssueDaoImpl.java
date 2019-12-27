package com.mvc.dao;

import java.io.FileInputStream;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import static common.JDBCTemplate.*;

import com.mvc.vo.Vo_Issue;

public class IssueDaoImpl implements IssueDao {

	@Override
	public List<Vo_Issue> I_selectAll() {
		
		Connection con = getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Vo_Issue> list = new ArrayList<Vo_Issue>();
		
		
		try {
//			prop.load(new FileReader("C:\\Users\\gofnv\\git\\RECORE\\RECORE_semi_project02\\src\\common\\query.properties"));
//			prop.load(new FileReader("\\issue.properties"));
//			String sql = prop.getProperty("selectAllNews");
			
//			String sql = "SELECT * FROM ISSUE ORDER BY ISS_NO DESC";
			
			
			Properties prop = new Properties();
			String filePath = properties();
			prop.load(new FileInputStream(filePath));
			String sql = prop.getProperty("selectAllNews");

			
			
			System.out.println(sql);
			
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Vo_Issue tmp = new Vo_Issue(
						rs.getInt(1),
						rs.getInt(2),
						rs.getString(3),
						rs.getString(4),
						rs.getString(5),
						rs.getString(6),
						rs.getString(7),
						rs.getInt(8),
						rs.getDate(9),
						rs.getString(10),
						rs.getInt(11),
						rs.getString(12));
				
				list.add(tmp);
				
			}
		} catch (IOException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs,pstmt,con);
		}
		
		return list;
	}

	public List<Vo_Issue> I_selectAllExhibition(){
		
		Connection con = getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Vo_Issue> list = new ArrayList<Vo_Issue>();
		
		
		try {
			
			Properties prop = new Properties();
			String filePath = properties();
			prop.load(new FileInputStream(filePath));
			String sql = prop.getProperty("selectAllExhibition");

			
			
			System.out.println(sql);
			
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Vo_Issue tmp = new Vo_Issue(
						rs.getInt(1),
						rs.getInt(2),
						rs.getString(3),
						rs.getString(4),
						rs.getString(5),
						rs.getString(6),
						rs.getString(7),
						rs.getInt(8),
						rs.getDate(9),
						rs.getString(10),
						rs.getInt(11),
						rs.getString(12));
				
				list.add(tmp);
				
			}
		} catch (IOException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs,pstmt,con);
		}
		
		return list;
		
	}
	
	
	
	
	@Override
	public Vo_Issue I_selectOne(int iseq) {
		
		Connection con = getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		Vo_Issue vo = null;
		
		try {
			Properties prop = new Properties();
			String filePath = properties();
			prop.load(new FileInputStream(filePath));
			String sql = prop.getProperty("selectOneNews");
			
			System.out.println(sql);

			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, iseq);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				vo = new Vo_Issue(
						rs.getInt(1),
						rs.getInt(2),
						rs.getString(3),
						rs.getString(4),
						rs.getString(5),
						rs.getString(6),
						rs.getString(7),
						rs.getInt(8),
						rs.getDate(9),
						rs.getString(10),
						rs.getInt(11),
						rs.getString(12));
			}

			
		} catch (IOException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs,pstmt,con);
		}

		return vo;
	}

	@Override
	public boolean I_insert(Vo_Issue ivo) {

		
		
		return false;
	}

	@Override
	public boolean I_delete(int iseq) {


		
		return false;
	}

}
