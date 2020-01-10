package com.mvc.dao;

import static common.JDBCTemplate.close;

import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.mvc.vo.Vo_Account;
import com.mvc.vo.Vo_Cart;
import com.mvc.vo.Vo_Funding;
import com.mvc.vo.Vo_Funding_Payment;
import com.mvc.vo.Vo_Order;
import com.mvc.vo.Vo_Order_Num;
import com.mvc.vo.Vo_QnA;
import com.mvc.vo.Vo_Wish;

public class MyPageDaoImp implements MyPageDao{

   @Override
   public Map<String,Object> selectMypage(int accseq) {
      Connection con = getConnection();
      PreparedStatement pstmt = null;
      ResultSet rs = null;
      Map<String,Object> map = new HashMap<String,Object>();
      List<Vo_Cart> list_cart = new ArrayList<Vo_Cart>();
      List<Vo_Funding> list_fun = new ArrayList<Vo_Funding>();
      List<Vo_Funding_Payment> list_fun_d = new ArrayList<Vo_Funding_Payment>();
      List<Vo_Order_Num> list_order = new ArrayList<Vo_Order_Num>();
      List<Vo_QnA> list_qna = new ArrayList<Vo_QnA>();
      List<Vo_Wish> list_wish = new ArrayList<Vo_Wish>();
      Vo_Cart vo_cart = null;
      Vo_Funding vo_fun = null;
      Vo_Funding_Payment vo_fun_d = null;
      Vo_Order_Num vo_order = null;
      Vo_QnA vo_qna = null;
      Vo_Wish vo_wish = null;
      
      String sql_cart = "SELECT * FROM CART JOIN PROD_OPTION USING(PROD_ID) JOIN PRODUCT USING(PROD_NO) WHERE ACC_NO=?";
      String sql_fun = "SELECT * FROM FUNDING JOIN F_PM USING(FUND_NO) WHERE ACC_NO=? ORDER BY FPM_NO";
      String sql_order = "SELECT * FROM ORDER_NUM WHERE ACC_NO=? ORDER BY ORDER_NO ASC";
      String sql_qna = "SELECT * FROM QNA JOIN ACCOUNT USING(ACC_NO) WHERE ACC_NO=? ORDER BY QNA_NO DESC";
      String sql_wish = "SELECT * FROM WISH JOIN PRODUCT USING(PROD_NO) WHERE ACC_NO=?";
      
      System.out.println("쿼리준비");
      
      //cart
      try {
         pstmt = con.prepareStatement(sql_cart);
         pstmt.setInt(1, accseq);
         rs = pstmt.executeQuery();
         System.out.println("cart 쿼리실행");
         while(rs.next()) {
            vo_cart = new Vo_Cart(rs.getInt(3),rs.getInt(2), 
                           rs.getInt(1),rs.getInt(8),
                           rs.getString(9),rs.getString(12),
                           rs.getString(11),rs.getString(5),
                           rs.getString(6),rs.getInt(13),
                           rs.getInt(4));
            list_cart.add(vo_cart);
         }
         map.put("list_cart", list_cart);
         
      } catch (SQLException e) {
         e.printStackTrace();
      }
      
      //funding
      try {
         pstmt = con.prepareStatement(sql_fun);
         pstmt.setInt(1, accseq);
         rs = pstmt.executeQuery();
         
         while(rs.next()) {
           vo_fun = new Vo_Funding(rs.getInt(1),rs.getString(2),
                                rs.getString(3),rs.getString(4),
                                rs.getString(5),rs.getInt(6),
                                rs.getInt(7),rs.getDate(8),
                                rs.getDate(9),rs.getString(10)
                                );
            vo_fun_d  = new Vo_Funding_Payment(rs.getInt(11),rs.getInt(1),
                                          rs.getInt(12),rs.getInt(13),
                                          rs.getString(14),rs.getString(15),
                                          rs.getString(16),rs.getString(17),
                                          rs.getString(18)
                                         );
            list_fun.add(vo_fun);
            list_fun_d.add(vo_fun_d);
         }
         map.put("list_fun", list_fun);
         map.put("list_fun_d", list_fun_d);
         
      } catch (SQLException e) {
         e.printStackTrace();
      }
      
      //order
      try {
        pstmt = con.prepareStatement(sql_order);
        pstmt.setInt(1, accseq);
        rs = pstmt.executeQuery();
        
        while(rs.next()) {
           vo_order = new Vo_Order_Num(rs.getInt(1),rs.getInt(2),
                                rs.getString(3),rs.getString(4),
                                rs.getString(5),rs.getDate(6),
                                rs.getInt(7), selectOlist(accseq, rs.getInt(1)));
           list_order.add(vo_order);
        }
        map.put("list_order", list_order);
        
      } catch (SQLException e2) {
       e2.printStackTrace();
      }
      
      //qna
      try {
         pstmt = con.prepareStatement(sql_qna);
         pstmt.setInt(1, accseq);
         rs = pstmt.executeQuery();
         
         while(rs.next()) {
            vo_qna = new Vo_QnA(rs.getInt(2),rs.getInt(3),
                           rs.getInt(4),rs.getInt(1),
                           rs.getString(5),rs.getString(6),
                           rs.getString(7),rs.getInt(8),
                           rs.getDate(9),rs.getString(10),
                           rs.getInt(11),rs.getInt(12),
                           rs.getString(13),100); // 마지막 상품번호 수정필요?@@@@@@@@@
            list_qna.add(vo_qna);
         }
         map.put("list_qna", list_qna);
         
      } catch (SQLException e) {
         e.printStackTrace();
      }
      
      //wish
      try {
         pstmt = con.prepareStatement(sql_wish);
         pstmt.setInt(1, accseq);
         rs = pstmt.executeQuery();
         
         while(rs.next()) {
            vo_wish = new Vo_Wish(rs.getInt(1),rs.getInt(2),
                           rs.getInt(3),rs.getString(4),
                           rs.getString(7),rs.getString(6),
                           rs.getInt(8));
            list_wish.add(vo_wish);
         }
         
         map.put("list_wish", list_wish);
         
      } catch (SQLException e) {
         e.printStackTrace();
      }finally {
         close(rs,pstmt,con);
      }
      
      return map;
   }

   @Override
   public List<Vo_Order> selectOlist(int accno, int order_no) {
       Connection con = getConnection();
       PreparedStatement pstmt = null;
       ResultSet rs = null;
       Vo_Order vo_order_option = null;
       List<Vo_Order> list_order_option = new ArrayList<Vo_Order>();
       
       String sql_olist = "SELECT * FROM ORDER_NUM JOIN PROD_ORDER USING(ORDER_NO) JOIN PROD_OPTION USING(PROD_ID) JOIN PRODUCT USING(PROD_NO) WHERE ACC_NO=? AND ORDER_NO=? ORDER BY ORDER_NO, PROD_ID";
       
       try {
         pstmt = con.prepareStatement(sql_olist);
         pstmt.setInt(1, accno);
         pstmt.setInt(2, order_no);
         rs = pstmt.executeQuery();
         
         while(rs.next()) {
            vo_order_option = new Vo_Order(rs.getInt(1),rs.getInt(2),
                                 rs.getInt(18),rs.getString(22),
                                 rs.getString(21),rs.getString(15),
                                 rs.getString(16),rs.getInt(10),
                                 rs.getInt(11),rs.getString(12),
                                 rs.getString(13),rs.getString(14));
            
            list_order_option.add(vo_order_option);
         }
      } catch (SQLException e) {
         e.printStackTrace();
      }finally {
         close(rs,pstmt,con);
      }
      
      return list_order_option;
   }

   @Override
   public boolean My_updateOrder_Status(int order_no, int prod_id, String status) {
      Connection con = getConnection();
      PreparedStatement pstmt = null;
      int res = 0;
      String sql = "UPDATE PROD_ORDER SET ORDER_STATUS=? WHERE ORDER_NO=? AND PROD_ID=?";
      
      try {
         pstmt = con.prepareStatement(sql);
         pstmt.setString(1, status);
         pstmt.setInt(2, order_no);
         pstmt.setInt(3, prod_id);
         res = pstmt.executeUpdate();
         
         if(res>0) {
            commit(con);
         }
      } catch (SQLException e) {
         e.printStackTrace();
      }finally {
         close(pstmt,con);
      }
      
      return (res>0)?true:false;
   }
   
   @Override
   public boolean My_deleteWish_All(int accseq) {
      Connection con = getConnection();
      PreparedStatement pstmt = null;
      int res = 0;
      String sql = "DELETE FROM WISH WHERE ACC_NO=?";
      
      try {
         pstmt = con.prepareStatement(sql);
         pstmt.setInt(1, accseq);
         res = pstmt.executeUpdate();
         
         if(res>0) {
            commit(con);
         }
      } catch (SQLException e) {
         e.printStackTrace();
      }finally {
         close(pstmt,con);
      }
      
      return (res>0)?true:false;
   }

   @Override
   public boolean My_deleteWish_One(int accseq, int prod_no) {
      Connection con = getConnection();
      PreparedStatement pstmt = null;
      int res = 0;
      String sql = "DELETE FROM WISH WHERE ACC_NO=? AND PROD_NO=?";
      
      try {
         pstmt = con.prepareStatement(sql);
         pstmt.setInt(1, accseq);
         pstmt.setInt(2, prod_no);
         res = pstmt.executeUpdate();
         
         if(res>0) {
            commit(con);
         }
      } catch (SQLException e) {
         e.printStackTrace();
      }finally {
         close(pstmt,con);
      }
      
      return (res>0)?true:false;
   }

   @Override
   public boolean My_updateCart(int prod_id, int cart_amount) {
      Connection con = getConnection();
      PreparedStatement pstmt = null;
      int res = 0;
      String sql = "UPDATE CART SET CART_AMOUNT=? WHERE PROD_ID=?";
      
      try {
         pstmt = con.prepareStatement(sql);
         pstmt.setInt(1, cart_amount);
         pstmt.setInt(2, prod_id);
         res = pstmt.executeUpdate();
         
         if(res>0) {
            commit(con);
         }
      } catch (SQLException e) {
         e.printStackTrace();
      }finally {
         close(pstmt,con);
      }
            
      return (res>0)?true:false;
   }

   @Override
   public boolean My_deleteCart_One(int accseq, int prod_id) {
      Connection con = getConnection();
      PreparedStatement pstmt = null;
      int res = 0;
      String sql = "DELETE FROM CART WHERE ACC_NO=? AND PROD_ID=?";
      
      try {
         pstmt = con.prepareStatement(sql);
         pstmt.setInt(1, accseq);
         pstmt.setInt(2, prod_id);
         res = pstmt.executeUpdate();
         
         if(res>0) {
            commit(con);
         }
      } catch (SQLException e) {
         e.printStackTrace();
      }finally {
         close(pstmt,con);
      }
      
      return (res>0)?true:false;
   }

   @Override
   public boolean My_deleteCart_All(int accseq) {
      Connection con = getConnection();
      PreparedStatement pstmt = null;
      int res = 0;
      String sql = "DELETE FROM CART WHERE ACC_NO=?";
      
      try {
         pstmt = con.prepareStatement(sql);
         pstmt.setInt(1, accseq);
         res = pstmt.executeUpdate();
         
         if(res>0) {
            commit(con);
         }
      } catch (SQLException e) {
         e.printStackTrace();
      }finally {
         close(pstmt,con);
      }
      
      return (res>0)?true:false;
   }

   @Override
   public Vo_QnA My_selectBoardOne(int qna_no) {
      Connection con = getConnection();
      PreparedStatement pstmt = null;
      ResultSet rs = null;
      Vo_QnA vo_qna = null;
      String sql = "SELECT * FROM QNA JOIN PROD_OPTION ON(QNA_SEQ_NO=PROD_ID) JOIN PRODUCT USING(PROD_NO) WHERE QNA_NO=?";
      
      try {
         pstmt = con.prepareStatement(sql);
         pstmt.setInt(1, qna_no);
         rs = pstmt.executeQuery();
         
         while(rs.next()) {
            vo_qna = new Vo_QnA(rs.getInt(2),rs.getInt(3),
                           rs.getInt(4),rs.getInt(5),
                           rs.getString(19),rs.getString(7),
                           rs.getString(8),rs.getInt(9),
                           rs.getDate(10),rs.getString(11),
                           rs.getInt(12),rs.getInt(13),
                           "user1",rs.getInt(1)); //수정필요@@@@id, prodno
         }
      } catch (SQLException e) {
         e.printStackTrace();
      }finally {
         close(rs,pstmt,con);
      }
      
      return vo_qna;
   }
   
   @Override
   public boolean My_deleteBoard(int qna_no) {
      Connection con = getConnection();
      PreparedStatement pstmt = null;
      int res = 0;
      String sql = "DELETE FROM QNA WHERE QNA_NO=?";
      try {
         pstmt = con.prepareStatement(sql);
         pstmt.setInt(1, qna_no);
         res = pstmt.executeUpdate();
         
         if(res>0) {
            commit(con);
         }
      } catch (SQLException e) {
         e.printStackTrace();
      }finally {
         close(pstmt,con);
      }
      return (res>0)?true:false;
   }
   

   @Override
   public List My_searchBoard(int accseq, String catd, String keyword) {
      Connection con = getConnection();
      PreparedStatement pstmt = null;
      ResultSet rs = null;
      List list_search = new ArrayList();
      Vo_QnA vo_qna = null;
      String sql = "SELECT * FROM QNA WHERE ACC_NO=? AND " + catd + " LIKE('%"+ keyword+ "%')";
      
      try {
         pstmt = con.prepareStatement(sql);
         pstmt.setInt(1, accseq);
         rs = pstmt.executeQuery();
         
         while(rs.next()) {
            vo_qna = new Vo_QnA(rs.getInt(1),rs.getInt(2),
                           rs.getInt(3),rs.getInt(4),
                           rs.getString(5),rs.getString(6),
                           rs.getString(7),rs.getInt(8),
                           rs.getDate(9),rs.getString(10),
                           rs.getInt(11),rs.getInt(12),
                           "",0); //수정필요@@@@id, prodno
            
            list_search.add(vo_qna);
         }
      } catch (SQLException e) {
         e.printStackTrace();
      }finally {
         close(rs,pstmt,con);
      }
      
      return list_search;
   }

   @Override
   public boolean My_updateBoard(int qna_no, String title, String content) {
      Connection con = getConnection();
      PreparedStatement pstmt = null;
      int res = 0;
      String sql = "UPDATE QNA SET QNA_TITLE=?, QNA_CONTENT=? WHERE QNA_NO=?";
      
      try {
         pstmt = con.prepareStatement(sql);
         pstmt.setString(1, title);
         pstmt.setString(2, content);
         pstmt.setInt(3, qna_no);
         
         res = pstmt.executeUpdate();
         
         if(res>0) {
            commit(con);
         }
      } catch (SQLException e) {
         e.printStackTrace();
      }finally {
         close(pstmt,con);
      }
      
      return (res>0)?true:false;
   }

   @Override
   public boolean My_updateBoard_Viewcount(int qna_no) {
      Connection con = getConnection();
      PreparedStatement pstmt = null;
      int res = 0;
      String sql = "UPDATE QNA SET QNA_VIEWCOUNT=QNA_VIEWCOUNT+1 WHERE QNA_NO=?";
      
      try {
         pstmt = con.prepareStatement(sql);
         pstmt.setInt(1, qna_no);
         res = pstmt.executeUpdate();
         
         if(res>0) {
            commit(con);
         }
      } catch (SQLException e) {
         e.printStackTrace();
      }finally {
         close(pstmt,con);
      }
      
      return (res>0)?true:false;
   }


   @Override
   public boolean My_insertReview(int order_no, int prod_id, String title, String content, int rating) {
      Connection con = getConnection();
      PreparedStatement pstmt = null;
      int res = 0;
      String sql = "INSERT INTO REVIEW (ORDER_NO,PROD_ID,REVIEW_TITLE,REVIEW_CONTENT,REVIEW_RATING,REVIEW_REGDATE) VALUES(?,?,?,?,?,SYSDATE)";
      
      try {
         pstmt = con.prepareStatement(sql);
         pstmt.setInt(1, order_no);
         pstmt.setInt(2, prod_id);
         pstmt.setString(3, title);
         pstmt.setString(4, content);
         pstmt.setInt(5, rating);
         res = pstmt.executeUpdate();
         
         if(res>0) {
            commit(con);
         }
      } catch (SQLException e) {
         e.printStackTrace();
      }finally {
         close(pstmt,con);
      }
      
      return (res>0)?true:false;
   }

   @Override
   public void My_updateIsReview(int order_no, int prod_id) {
      Connection con = getConnection();
      PreparedStatement pstmt = null;
      int res = 0;
      String sql = "UPDATE PROD_ORDER SET ORDER_ISREVIEW=? WHERE ORDER_NO=? AND PROD_ID=?";
      
      try {
         pstmt = con.prepareStatement(sql);
         pstmt.setString(1, "Y");
         pstmt.setInt(2, order_no);
         pstmt.setInt(3, prod_id);
         res = pstmt.executeUpdate();
         
         if(res>0) {
            commit(con);
         }
      } catch (SQLException e) {
         e.printStackTrace();
      }finally {
         close(pstmt,con);
      }
      
   }

   @Override
   public List selectAllOrder() {
      Connection con = getConnection();
      PreparedStatement pstmt = null;
      ResultSet rs = null;
      List list_order = new ArrayList();
      Vo_Order_Num vo_order = null;
      String sql = "SELECT * FROM ORDER_NUM";
      
      try {
         pstmt = con.prepareStatement(sql);
         rs = pstmt.executeQuery();
         
         while(rs.next()) {
            vo_order = new Vo_Order_Num(rs.getInt(1),rs.getInt(2),
                                 rs.getString(3),rs.getString(4),
                                 rs.getString(5),rs.getDate(6),
                                 rs.getInt(7),selectAllOlist(rs.getInt(1)));
            list_order.add(vo_order);
         }
         
      } catch (SQLException e) {
         e.printStackTrace();
      }finally {
         close(rs,pstmt,con);
      }
      return list_order;
   }

   @Override
   public List selectAllOlist(int order_no) {
      Connection con = getConnection();
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        Vo_Order vo_order_option = null;
        List<Vo_Order> list_order_option = new ArrayList<Vo_Order>();
       
        String sql_olist = "SELECT * FROM ORDER_NUM JOIN PROD_ORDER USING(ORDER_NO) JOIN PROD_OPTION USING(PROD_ID) JOIN PRODUCT USING(PROD_NO) WHERE ORDER_NO=? ORDER BY ORDER_NO";
       
        try {
           pstmt = con.prepareStatement(sql_olist);
           pstmt.setInt(1, order_no);
           rs = pstmt.executeQuery();
         
           while(rs.next()) {
              vo_order_option = new Vo_Order(rs.getInt(1),rs.getInt(2),
                                          rs.getInt(18),rs.getString(22),
                                          rs.getString(21),rs.getString(15),
                                          rs.getString(16),rs.getInt(10),
                                          rs.getInt(11),rs.getString(12),
                                          rs.getString(13),rs.getString(14));
            
              list_order_option.add(vo_order_option);
           }
        } catch (SQLException e) {
           e.printStackTrace();
        }finally {
           close(rs,pstmt,con);
        }
      
        return list_order_option;
   }

   @Override
   public Vo_Account selectAccount(int acc_no) {
      Connection con = getConnection();
      PreparedStatement pstmt = null;
      ResultSet rs = null;
      Vo_Account vo_acc = null;
      String sql = "SELECT * FROM ACCOUNT WHERE ACC_NO=?";
      
      try {
         pstmt = con.prepareStatement(sql);
         pstmt.setInt(1, acc_no);
         rs = pstmt.executeQuery();
         
         while(rs.next()) {
            vo_acc = new Vo_Account(rs.getInt(1),rs.getString(2),
                              rs.getString(3),rs.getString(4),
                              rs.getString(5),rs.getString(7),
                              rs.getString(6),rs.getString(8),
                              rs.getString(9),rs.getString(10),
                              rs.getString(11),rs.getInt(12),
                              rs.getString(13));
         }
      } catch (SQLException e) {
         e.printStackTrace();
      }finally {
         close(rs,pstmt,con);
      }
      
      return vo_acc;
   }

   @Override
   public boolean managerUpdate(int order_no, int prod_id, String tno) {
      Connection con = getConnection();
      PreparedStatement pstmt = null;
      int res = 0;
      String sql = "UPDATE PROD_ORDER SET ORDER_TNO=?, ORDER_STATUS='배송중' WHERE ORDER_NO=? AND PROD_ID=?";
      
      try {
         pstmt = con.prepareStatement(sql);
         pstmt.setString(1, tno);
         pstmt.setInt(2, order_no);
         pstmt.setInt(3, prod_id);
         res = pstmt.executeUpdate();
         
         if(res>0) {
            commit(con);
         }
      } catch (SQLException e) {
         e.printStackTrace();
      }finally {
         close(pstmt,con);
      }
      
      return (res>0)?true:false;
   }


//   @Override
//   public List<Vo_QnA> My_categoryBoard(int accseq, String catd) {
//      Connection con = getConnection();
//      PreparedStatement pstmt = null;
//      ResultSet rs = null;
//      Vo_QnA vo_qna = null;
//      List<Vo_QnA> list_qna = new ArrayList<Vo_QnA>();
//      String sql = "SELECT * FROM QNA JOIN ACCOUNT USING(ACC_NO) WHERE ACC_NO=? ORDER BY ? DESC";
//      
//      try {
//         pstmt = con.prepareStatement(sql);
//         pstmt.setInt(1, accseq);
//         pstmt.setString(2, catd);
//         rs = pstmt.executeQuery();
//         
//         while(rs.next()) {
//            vo_qna = new Vo_QnA(rs.getInt(2),rs.getInt(3),
//                                 rs.getInt(4),rs.getInt(1),
//                                 rs.getString(5),rs.getString(6),
//                                 rs.getString(7),rs.getInt(8),
//                                 rs.getDate(9),rs.getString(10),
//                                 rs.getInt(11),rs.getInt(12),
//                                 rs.getString(13),100); //마지막 번호 수정필요@@@@@@@@@@@@@@@@
//            list_qna.add(vo_qna);
//         }
//         
//      } catch (SQLException e) {
//         e.printStackTrace();
//      }finally {
//         close(rs,pstmt,con);
//      }
//      
//      return list_qna;
//   }

}