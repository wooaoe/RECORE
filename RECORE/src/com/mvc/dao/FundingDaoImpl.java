package com.mvc.dao;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.getConnection;
import static common.JDBCTemplate.properties;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import com.mvc.vo.Vo_Funding;
import com.mvc.vo.Vo_Funding_Payment;


public class FundingDaoImpl implements FundingDao {

	@Override
	public List<Vo_Funding> F_selectAll() {
		
		Connection con = getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Vo_Funding> list = new ArrayList<Vo_Funding>();
		
		
		try {

			
			
			Properties prop = new Properties();
			String filePath = properties("query_funding.properties");
			prop.load(new FileInputStream(filePath));
			String sql = prop.getProperty("selectAllFunding");

			
			
			System.out.println(sql);
			
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Vo_Funding tmp = new Vo_Funding(rs.getInt(1), rs.getString(2), rs.getString(3),
						rs.getString(4), rs.getString(5), rs.getInt(6), rs.getInt(7), rs.getDate(8), rs.getDate(9),
						rs.getString(10));
				
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
	public Vo_Funding F_selectOne(int fseq) {
		
		Connection con = getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		Vo_Funding vo = null;
		
		try {
			Properties prop = new Properties();
			String filePath = properties("query_funding.properties");
			prop.load(new FileInputStream(filePath));
			String sql = prop.getProperty("selectOneFunding");
			
			System.out.println(sql);

			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, fseq);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				vo = new Vo_Funding(rs.getInt(1), rs.getString(2), rs.getString(3),
						rs.getString(4), rs.getString(5), rs.getInt(6), rs.getInt(7), rs.getDate(8), rs.getDate(9),
						rs.getString(10));
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
	public boolean F_insert(Vo_Funding reg) {

		Connection con = getConnection();
		PreparedStatement pstmt = null;
		int res = 0;
		
		
		try {
			Properties prop = new Properties();
			String filePath = properties("query_funding.properties");
			prop.load(new FileInputStream(filePath));
			String sql = prop.getProperty("insertFunding");
			
			System.out.println(sql);

			pstmt = con.prepareStatement(sql);
			
			
			pstmt.setString(1, reg.getFund_title());
			pstmt.setString(2, reg.getFund_creator());
			pstmt.setInt(3, reg.getFund_con_count());
			pstmt.setInt(4, reg.getFund_target_price());
			pstmt.setDate(5, reg.getFund_deadline());
			
			
			res = pstmt.executeUpdate();
			
			if(res>0) {
				System.out.println("insert 성공");
				commit(con);
			}
			
			
		} catch (IOException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt, con);
		}
		
		return res>0 ? true : false;
	}

	@Override
	public boolean F_delete(int fseq) {

		
		
		Connection con = getConnection();
		PreparedStatement pstmt = null;
		int res = 0;
		
		
		try {
			Properties prop = new Properties();
			String filePath = properties("query_funding.properties");
			prop.load(new FileInputStream(filePath));
			String sql = prop.getProperty("deleteFunding");
			
			System.out.println(sql);

			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, fseq);


			res = pstmt.executeUpdate();
			
			if(res>0) {
				System.out.println("delete 성공");
				commit(con);
			}

			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt, con);
		}
		
		return res>0 ? true : false;
	}
	
	
	public int F_getSeqCurrval() {
	
		Connection con = getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		int f_seq = 0;
		
		
		try {
			Properties prop = new Properties();
			String filePath = properties("query_funding.properties");
			prop.load(new FileInputStream(filePath));
			
			String sql = prop.getProperty("selectFund_seq");
			System.out.println(sql);
			
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				f_seq = rs.getInt(1);
				
			}
			
			f_seq--;
			
		} catch (IOException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs,pstmt,con);
		}
		
		System.out.println(f_seq);
		
		return f_seq;
	}

	@Override
	public boolean F_expire(Vo_Funding sof) {
		// TODO Auto-generated method stub
		return false;
	}




	@Override
	public boolean F_insert(Vo_Funding_Payment fvo) {
		// TODO Auto-generated method stub
		return false;
	}
	
}
