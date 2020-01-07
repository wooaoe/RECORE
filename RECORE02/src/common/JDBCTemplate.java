package common;

import java.net.URL;
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
	
	   
	   /*
	       @ 기능 : properties 파일 경로 구하는 메서드
	   */
	   public static String properties(String queryname) {
	      String filePath = "";
	      ClassLoader classLoader = Thread.currentThread().getContextClassLoader();
	      if (classLoader == null) {
	         classLoader = ClassLoader.getSystemClassLoader();
	      }

	      URL url2 = classLoader.getResource("/common/" + queryname);
	      
	      if (url2 == null) {
	         System.out.println("query.properties 파일 찾기 실패");
	      } else {
	         filePath = url2.getPath();
	      }
	      System.out.println("query.properties path: " + filePath);
	      
	      return filePath;
	   }
	   
	/*
	 * Properties prop = new Properties(); 
	 * String filePath = properties();
	 * prop.load(new FileInputStream(filePath)); 
	 * String sql = prop.getProperty("selectAllNews");
	 */
	   //dao에서 할 때 마다 쓰기 
	
}
