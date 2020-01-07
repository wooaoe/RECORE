package com.mvc.dao;

import static common.JDBCTemplate.*;
import static common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mvc.vo.Vo_Funding;
import com.mvc.vo.Vo_Funding_detail;

public class FundingDaoImp implements FundingDao {

	@Override
	public List<Vo_Funding> F_selectAll() {

		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		List<Vo_Funding> flist = new ArrayList<Vo_Funding>();

		try {

			String sql = "SELECT * FROM FUNDING ORDER BY FUND_NO DESC";

			pstm = con.prepareStatement(sql);
			System.out.println("FUND_all 준비 : " + sql);
			rs = pstm.executeQuery();
			System.out.println("FUND_all 실행 : " + sql);

			while (rs.next()) {

				Vo_Funding tmp = new Vo_Funding(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4),
						rs.getString(5), rs.getString(6), rs.getInt(7), rs.getInt(8), rs.getDate(9), rs.getDate(10),
						rs.getString(11));

				flist.add(tmp);
				System.out.println("FUNDING All : " + flist);

			}
		} catch (SQLException e) {

			e.printStackTrace();

		} finally {
			close(rs, pstm, con);
		}

		return flist;
	}


	@Override
	public List<Vo_Funding> Parent_selectAll(int catdid) {

		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		List<Vo_Funding> prntlist = new ArrayList<Vo_Funding>();

		try {

			String sql = ;

			pstm = con.prepareStatement(sql);
			pstm.setInt(1, catdid);
			rs = pstm.executeQuery();

			System.out.println("parent 실행 : " + sql);
			
			while (rs.next()) {
				Vo_Funding tmp = new Vo_Funding(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4),
						rs.getString(5), rs.getString(6), rs.getInt(7), rs.getInt(8), rs.getDate(9), rs.getDate(10),
						rs.getString(11));

				prntlist.add(tmp);
				System.out.println("parent  실행 값 : " + prntlist);
			}

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			close(rs, pstm, con);
		}

		return prntlist;
	}

	@Override
	public List<Vo_Funding> Child_selectAll(int catdid) {

		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		List<Vo_Funding> childlist = new ArrayList<Vo_Funding>();

		try {

			String sql = ;

			pstm = con.prepareStatement(sql);
			pstm.setInt(1, catdid);
			rs = pstm.executeQuery();

			while (rs.next()) {
				Vo_Funding tmp = new Vo_Funding(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4),
						rs.getString(5), rs.getString(6), rs.getInt(7), rs.getInt(8), rs.getDate(9), rs.getDate(10),
						rs.getString(11));

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
	public Vo_Funding F_selectOne(int fseq) {

		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		Vo_Funding fvo = new Vo_Funding();

		try {

			String sql =;

			pstm = con.prepareStatement(sql);
			pstm.setInt(1, fseq);
			rs = pstm.executeQuery();
			System.out.println("query 실행 : " + sql);

			while (rs.next()) {
				fvo = new Vo_Funding(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4),
						rs.getString(5), rs.getString(6), rs.getInt(7), rs.getInt(8), rs.getDate(9), rs.getDate(10),
						rs.getString(11));

				System.out.println("fvo: " + fvo);

				
			}

		} catch (SQLException e) {

			e.printStackTrace();

		} finally {

			close(rs, pstm, con);

		}

		return fvo;
	}


	@Override
	public boolean F_insert(Vo_Funding fvo) {

	

		return false;
	}



	@Override
	public boolean F_expire(Vo_Funding sof) {
		// TODO Auto-generated method stub
		return false;
	}


	@Override
	public boolean F_insert(Vo_Funding_detail fvo) {
		// TODO Auto-generated method stub
		return false;
	}



}