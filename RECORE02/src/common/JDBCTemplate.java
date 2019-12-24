package common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class JDBCTemplate {
	
	
	public static Connection getConnection() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("1. 드라이버 연결");
		} catch (ClassNotFoundException e) {
			System.out.println("1. 드라이버 연결 실패");
			e.printStackTrace();
		}
		
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String id = "RECORE";
		String pw = "RECORE";
		
		Connection con = null;
		
		try {
			con = DriverManager.getConnection(url,id,pw);
			System.out.println("2. 계정 연결");
		} catch (SQLException e) {
			System.out.println("2. 계정 연결 실패");
			e.printStackTrace();
		}
		
		return con;
	}
	
	public static void close(Connection con) {
		try {
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void close(PreparedStatement pstmt) {
		try {
			pstmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void close(ResultSet rs) {
		try {
			rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void close(Statement stmt) {
		try {
			stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void close(Statement stmt, Connection con) {
		close(stmt);
		close(con);
	}
	
	public static void close(ResultSet set, Statement stmt, Connection con) {
		close(set);
		close(stmt);
		close(con);
	}
	
	public static void close(PreparedStatement pstmt, Connection con) {
		close(pstmt);
		close(con);
	}
	
	public static void close(ResultSet set, PreparedStatement pstmt, Connection con) {
		close(set);
		close(pstmt);
		close(con);
	}
	
	public static void commit(Connection con) {
		try {
			con.commit();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void rollback(Connection con) {
		try {
			con.rollback();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
