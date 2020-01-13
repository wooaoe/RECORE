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

import com.mvc.vo.Vo_Manager_Payment;
import com.mvc.vo.Vo_Manager_ProdOption;
import com.mvc.vo.Vo_QnA_Paging;
import com.sun.org.apache.regexp.internal.RE;

import static common.JDBCTemplate.*;

public class ManagerDaoImpl implements ManagerDao {

	@Override
	public List<Vo_Manager_Payment> M_selectAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Vo_Manager_Payment M_selectOne(int mseq) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean M_insert(Vo_Manager_Payment mp) {
		Connection con = getConnection();
		PreparedStatement pstmt = null;
		Properties prop = new Properties();
		String filePath = properties("query_community.properties");
		int res = 0;
		
		try {
			prop.load(new FileInputStream(filePath));
			//INSERT INTO P_PM VALUES(PPM_SEQ.NEXTVAL,1000,1,'O',1,SYSDATE,NULL);

			String sql = prop.getProperty("manger_p_pm_in");
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, mp.getProd_id());
			pstmt.setInt(2, mp.getAcc_no());
			pstmt.setString(3, mp.getPpm_io());
			pstmt.setInt(4, mp.getPpm_amount());
			
			res = pstmt.executeUpdate();
			
			if(res>0) {
				commit(con);
			}
			
		} catch (IOException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt, con);
		}
		
		return (res>0)? true:false;
	}

	@Override
	public boolean M_update(Vo_Manager_Payment mp) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean M_delete(int mseq) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<Vo_Manager_ProdOption> P_selectAll(Vo_QnA_Paging paging, String category, String searchsubject, String keyword) {
		Connection con = getConnection();
		PreparedStatement pstmt = null;
		Properties prop = new Properties();
		String filePath = properties("query_community.properties");
		ResultSet rs = null;
		List<Vo_Manager_ProdOption> list = null;
		String sql = "";
		
		int catdNum = 0;
		int startNum = paging.getStartNum();
		int endNum = paging.getEndNum();
		
		try {
			prop.load(new FileInputStream(filePath));
			//sql = prop.getProperty("manager_product_selectAll");
			if(searchsubject==null || searchsubject=="" || keyword==null ||keyword=="") {
				if(category.equals("all")) {
					sql = prop.getProperty("manager_product_selectAll");
				}else if(category.equals("bag_acc")) {
					sql = prop.getProperty("manager_product_selectCategoryAll");
					catdNum = 6;
				}else if(category.equals("outer")) {
					sql = prop.getProperty("manager_product_selectCategoryAll");
					catdNum = 7;
				}else if(category.equals("top")) {
					sql = prop.getProperty("manager_product_selectCategoryAll");
					catdNum = 8;
				}else if(category.equals("bottom")) {
					sql = prop.getProperty("manager_product_selectCategoryAll");
					catdNum = 9;
				}else if(category.equals("wallet")) {
					sql = prop.getProperty("manager_product_selectCategoryAll");
					catdNum = 10;
				}else if(category.equals("office")) {
					sql = prop.getProperty("manager_product_selectCategoryAll");
					catdNum = 11;
				}else if(category.equals("home")) {
					sql = prop.getProperty("manager_product_selectCategoryAll");
					catdNum = 12;
				}else if(category.equals("furniture")) {
					sql = prop.getProperty("manager_product_selectCategoryAll");
					catdNum = 13;
				}
				
				if(catdNum > 0){
					System.out.println("catdNum : " + catdNum + " ================================" + "검색조건 없고 카테고리만 있음");
					pstmt = con.prepareStatement(sql);
					pstmt.setInt(1, catdNum);
					pstmt.setInt(2, startNum);
					pstmt.setInt(3, endNum);
				}else{
					System.out.println("================================" + "검색조건 없고 카테고리도 없음");
					pstmt = con.prepareStatement(sql);
					pstmt.setInt(1, startNum);
					pstmt.setInt(2, endNum);
				}
				System.out.println("Cr_selectAll 검색조건 없을경우: "+sql);
			}else {
				keyword=keyword.toUpperCase();
				System.out.println("대문자:" + keyword);
				if(category.equals("all")) { 
					sql = prop.getProperty("manager_product_searchselectAll") + " WHERE "+searchsubject+" LIKE '%' || ? || '%' ) WHERE row_num >= ?) WHERE row_num <= ?";
				}else if(category.equals("bag_acc")) {
					sql = prop.getProperty("manager_product_searchselectAll") + " WHERE "+searchsubject+" LIKE '%' || ? || '%' AND CATD_NO = 6) WHERE row_num >= ?) WHERE row_num <= ?";
				}else if(category.equals("outer")) {
					sql = prop.getProperty("manager_product_searchselectAll") + " WHERE "+searchsubject+" LIKE '%' || ? || '%' AND CATD_NO = 7) WHERE row_num >= ?) WHERE row_num <= ?";
				}else if(category.equals("top")) {
					sql = prop.getProperty("manager_product_searchselectAll") + " WHERE "+searchsubject+" LIKE '%' || ? || '%' AND CATD_NO = 8) WHERE row_num >= ?) WHERE row_num <= ?";
				}else if(category.equals("bottom")) {
					sql = prop.getProperty("manager_product_searchselectAll") + " WHERE "+searchsubject+" LIKE '%' || ? || '%' AND CATD_NO = 9) WHERE row_num >= ?) WHERE row_num <= ?";
				}else if(category.equals("wallet")) {
					sql = prop.getProperty("manager_product_searchselectAll") + " WHERE "+searchsubject+" LIKE '%' || ? || '%' AND CATD_NO = 10) WHERE row_num >= ?) WHERE row_num <= ?";
				}else if(category.equals("office")) {
					sql = prop.getProperty("manager_product_searchselectAll") + " WHERE "+searchsubject+" LIKE '%' || ? || '%' AND CATD_NO = 11) WHERE row_num >= ?) WHERE row_num <= ?";
				}else if(category.equals("home")) {
					sql = prop.getProperty("manager_product_searchselectAll") + " WHERE "+searchsubject+" LIKE '%' || ? || '%' AND CATD_NO = 12) WHERE row_num >= ?) WHERE row_num <= ?";
				}else if(category.equals("furniture")) {
					sql = prop.getProperty("manager_product_searchselectAll") + " WHERE "+searchsubject+" LIKE '%' || ? || '%' AND CATD_NO = 13) WHERE row_num >= ?) WHERE row_num <= ?";
				}
						
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, keyword);
				pstmt.setInt(2, startNum);
				pstmt.setInt(3, endNum);
				System.out.println("Cr_selectAll 검색조건 있을경우 읭5??????444?????????: "+sql);
			}
			
			rs = pstmt.executeQuery();
			
			if(rs!=null) {
				list = new ArrayList<Vo_Manager_ProdOption>();
				while(rs.next()) {
					Vo_Manager_ProdOption tmp = new Vo_Manager_ProdOption();
					tmp.setProd_name(rs.getString(2));
					tmp.setCatd_no(rs.getInt(3));
					tmp.setProd_no(rs.getInt(4));
					tmp.setProd_id(rs.getInt(5));
					tmp.setProd_color(rs.getString(6));
					tmp.setProd_size(rs.getString(7));
					tmp.setProd_stock(rs.getInt(8));
					
					list.add(tmp);
				}
			}
			
		} catch (IOException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs, pstmt, con);
		}
		 System.out.println("*****리스트입니다: ******");
		 System.out.println(list);
		return list;
	}

	@Override
	public int P_selectAllCount(String category, String searchsubject, String keyword) {
		Connection con = getConnection();
		PreparedStatement pstmt = null;
		Properties prop = new Properties();
		String filePath = properties("query_community.properties");
		String sql="";
		ResultSet rs = null;
		int res = 0;
		
		try {
			prop.load(new FileInputStream(filePath));
			//sql = prop.getProperty("review_selectAllCount");
			if(searchsubject==null || searchsubject=="" || keyword==null ||keyword=="") {
				if(category.equals("all")) {
					sql = prop.getProperty("manager_product_selectCategoryAllCount") + ")";
				}else if(category.equals("bag_acc")) {
					sql = prop.getProperty("manager_product_selectCategoryAllCount")+" WHERE CATD_NO = 6)";
				}else if(category.equals("outer")) {
					sql = prop.getProperty("manager_product_selectCategoryAllCount")+" WHERE CATD_NO = 7)";
				}else if(category.equals("top")) {
					sql = prop.getProperty("manager_product_selectCategoryAllCount")+" WHERE CATD_NO = 8)";
				}else if(category.equals("bottom")) {
					sql = prop.getProperty("manager_product_selectCategoryAllCount")+" WHERE CATD_NO = 9)";
				}else if(category.equals("wallet")) {
					sql = prop.getProperty("manager_product_selectCategoryAllCount")+" WHERE CATD_NO = 10)";
				}else if(category.equals("office")) {
					sql = prop.getProperty("manager_product_selectCategoryAllCount")+" WHERE CATD_NO = 11)";
				}else if(category.equals("home")) {
					sql = prop.getProperty("manager_product_selectCategoryAllCount")+" WHERE CATD_NO = 12)";
				}else if(category.equals("furniture")) {
					sql = prop.getProperty("manager_product_selectCategoryAllCount")+" WHERE CATD_NO = 13)";
				}
				
				pstmt = con.prepareStatement(sql);
				
				System.out.println("cr검색조건 없을경우: "+sql);
				
			}else {
				keyword=keyword.toUpperCase();
				if(category.equals("all")) {
					sql = prop.getProperty("manager_product_searchselectAllCount") +" "+searchsubject+" LIKE '%' || ? || '%')";
				}else if(category.equals("bag_acc")) {
					sql = prop.getProperty("manager_product_searchselectAllCount") +" "+searchsubject+" LIKE '%' || ? || '%' AND CATD_NO=6)";
				}else if(category.equals("outer")) {
					sql = prop.getProperty("manager_product_searchselectAllCount") +" "+searchsubject+" LIKE '%' || ? || '%' AND CATD_NO=7)";
				}else if(category.equals("top")) {
					sql = prop.getProperty("manager_product_searchselectAllCount") +" "+searchsubject+" LIKE '%' || ? || '%' AND CATD_NO=8)";
				}else if(category.equals("bottom")) {
					sql = prop.getProperty("manager_product_searchselectAllCount") +" "+searchsubject+" LIKE '%' || ? || '%' AND CATD_NO=9)";
				}else if(category.equals("wallet")) {
					sql = prop.getProperty("manager_product_searchselectAllCount") +" "+searchsubject+" LIKE '%' || ? || '%' AND CATD_NO=10)";
				}else if(category.equals("office")) {
					sql = prop.getProperty("manager_product_searchselectAllCount") +" "+searchsubject+" LIKE '%' || ? || '%' AND CATD_NO=11)";
				}else if(category.equals("home")) {
					sql = prop.getProperty("manager_product_searchselectAllCount") +" "+searchsubject+" LIKE '%' || ? || '%' AND CATD_NO=12)";
				}else if(category.equals("furniture")) {
					sql = prop.getProperty("manager_product_searchselectAllCount") +" "+searchsubject+" LIKE '%' || ? || '%' AND CATD_NO=13)";
				}
				
				
				System.out.println("cr검색조건 있을경우: "+sql);
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, keyword);
				
			}
			//pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				res = rs.getInt(1);
			}
				
		} catch (IOException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return res;
	}

	@Override
	public boolean P_update_In(int prod_id, int stock) {
		Connection con = getConnection();
		PreparedStatement pstmt = null;
		Properties prop = new Properties();
		String filePath = properties("query_community.properties");
		int res = 0;
		
		try {
			prop.load(new FileInputStream(filePath));
			String sql = prop.getProperty("manager_prod_option_in")+stock+" WHERE PROD_ID = ?";
			//String sql = "UPDATE PROD_OPTION SET PROD_STOCK = PROD_STOCK + 1";
			
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, prod_id);
			res = pstmt.executeUpdate();
			
			if(res>0) {
				commit(con);
			}
			
		} catch (IOException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt, con);
		}
		
		
		return (res>0)? true:false;
	}

	@Override
	public boolean P_update_Out(int prod_id, int stock) {
		Connection con = getConnection();
		PreparedStatement pstmt = null;
		Properties prop = new Properties();
		String filePath = properties("query_community.properties");
		int res = 0;
		
		try {
			prop.load(new FileInputStream(filePath));
			String sql = prop.getProperty("manager_prod_option_out")+stock+" WHERE PROD_ID = ?";
			//String sql = "UPDATE PROD_OPTION SET PROD_STOCK = PROD_STOCK + 1";
			
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, prod_id);
			res = pstmt.executeUpdate();
			
			if(res>0) {
				commit(con);
			}
			
		} catch (IOException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt, con);
		}
		
		
		return (res>0)? true:false;
	}

	@Override
	public Vo_Manager_ProdOption P_selectOne(int prod_id) {
		Connection con = getConnection();
		PreparedStatement pstmt = null;
		Properties prop = new Properties();
		String filePath = properties("query_community.properties");
		ResultSet rs = null;
		
		Vo_Manager_ProdOption res = new Vo_Manager_ProdOption();
		
		try {
			prop.load(new FileInputStream(filePath));
			String sql = "SELECT P.PROD_NAME, P.CATD_NO, O.* FROM PROD_OPTION O JOIN PRODUCT P ON(O.PROD_NO=P.PROD_NO) WHERE PROD_ID=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, prod_id);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				res.setProd_name(rs.getString(1));
				res.setCatd_no(rs.getInt(2));
				res.setProd_no(rs.getInt(3));
				res.setProd_id(rs.getInt(4));
				res.setProd_color(rs.getString(5));
				res.setProd_size(rs.getString(6));
				res.setProd_stock(rs.getInt(7));
			}
			
		} catch (IOException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			
			close(rs, pstmt, con);
			
		}
		
		return res;
	}

}
