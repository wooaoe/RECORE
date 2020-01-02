package com.mvc.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mvc.dao.AccountDaoImp;
import com.mvc.dao.MyPageDaoImp;
import com.mvc.dao.ProductDaoImp;
import com.mvc.vo.Vo_Account;

@WebServlet("/mypage.do")
public class Mypage_Controller extends HttpServlet {
   private static final long serialVersionUID = 1L;

   
    public Mypage_Controller() {
    }

   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      request.setCharacterEncoding("UTF-8");
      response.setContentType("text/html; charset=UTF-8");
      
      String command = request.getParameter("command");
      //임의로 로그인 세션 set
      AccountDaoImp dao = new AccountDaoImp();
      Vo_Account vo = dao.A_selectAccount("user1", "user1");
      HttpSession session = request.getSession();
      session.setAttribute("vo", vo);
      
      //map 가져오기
      MyPageDaoImp mdao = new MyPageDaoImp();
      System.out.println("계정넘버 : " + vo.getAcc_no());
      Map<String,Object> map = mdao.selectMypage(vo.getAcc_no());
      
      //wish, cart insert
      ProductDaoImp pdao = new ProductDaoImp();
      
      if(command.equals("orderlist")) {
         System.out.println(map.get("list_order"));
         List test = (List)map.get("list_order");
         if(test.isEmpty()) {
            response.sendRedirect("RECOREMain/RECOREMypage/Mypage_OrderList.jsp");
         }else {
            request.setAttribute("list_order", map.get("list_order"));
            dispatch("./RECOREMain/RECOREMypage/Mypage_OrderList.jsp", request, response);
         }
         
      }else if(command.equals("main")){
         List test = (List)map.get("list_order");
         System.out.println("main에 넘어갈 사이즈"+test.size());
         request.setAttribute("list_order", map.get("list_order"));
         dispatch("./RECOREMain/RECOREMypage/Mypage_Main.jsp", request, response);
         
      }else if(command.equals("fundinglist")) {
         dispatch("./RECOREMain/RECOREMypage/Mypage_FundingList.jsp", request, response);
         
      }else if(command.equals("wishlist")) {
         System.out.println(map.get("list_wish"));
         List test = (List)map.get("list_wish");
         if(test.isEmpty()) {
            response.sendRedirect("RECOREMain/RECOREMypage/Mypage_WishList.jsp");
         }else {
            request.setAttribute("list_wish", map.get("list_wish"));
            System.out.println("서블릿 map의 wish : " + map.get("list_wish"));
            dispatch("./RECOREMain/RECOREMypage/Mypage_WishList.jsp", request, response);
         }
         
      }else if(command.equals("deletewishone")){
         int prod_no = Integer.parseInt(request.getParameter("prod_no"));
         boolean res = mdao.My_deleteWish_One(vo.getAcc_no(), prod_no);
         
         if(res) {
            jsResponse("삭제 성공", "mypage.do?command=wishlist", response);
         }else {
            jsResponse("삭제 실패", "mypage.do?command=wishlist", response);
         }
         
      }else if(command.equals("deletecheckedwish")) {
         String prod_no = request.getParameter("arr_chk");
         String[] list_prod_no = prod_no.split(",");
         System.out.println("넘어온 arr" + list_prod_no[0]);
         boolean res = false;
         for(int i=0;i<list_prod_no.length;i++) {
            res = mdao.My_deleteWish_One(vo.getAcc_no(), Integer.parseInt(list_prod_no[i]));
         }
         
         if(res) {
            jsResponse("삭제 성공", "mypage.do?command=cartlist", response);
         }else {
            jsResponse("삭제 실패", "mypage.do?command=cartlist", response);
         }
         
      }else if(command.equals("deletewishall")) {
         boolean res = mdao.My_deleteWish_All(vo.getAcc_no());
         
         if(res) {
//            jsResponse("삭제 성공", "RECOREMain/RECOREMypage/Mypage_WishList.jsp", response);
            jsResponse("삭제 성공", "mypage.do?command=wishlist", response);
         }else {
            jsResponse("삭제 실패", "mypage.do?command=wishlist", response);
         }
         
      }else if(command.equals("mileage")) {
         request.setAttribute("acc_point", vo.getAcc_point());
         request.setAttribute("list_order", map.get("list_order"));
         List test = (List)map.get("list_order");
         System.out.println(test.size());
         dispatch("./RECOREMain/RECOREMypage/Mypage_Mileage2.jsp", request, response);
         
      }else if(command.equals("board")) {
         dispatch("./RECOREMain/RECOREMypage/Mypage_BoardList.jsp", request, response);
         
      }else if(command.equals("cartlist")) {
         System.out.println("command : " + command);
         List test = (List)map.get("list_cart");
         
         if(test.isEmpty()) {
            response.sendRedirect("./RECOREMain/RECOREMypage/Mypage_Cart.jsp");
//            dispatch("./RECOREMain/RECOREMypage/Mypage_Cart.jsp", request, response);
         }else {
            request.setAttribute("list_cart", map.get("list_cart"));
            System.out.println("서블릿에서 listcart : " + map.get("list_cart"));
            dispatch("./RECOREMain/RECOREMypage/Mypage_Cart.jsp", request, response);
         }
         
      }else if(command.equals("deletecartone")) {
         int prod_id = Integer.parseInt(request.getParameter("prod_id"));
         boolean res = mdao.My_deleteCart_One(vo.getAcc_no(), prod_id);
         
         if(res) {
            jsResponse("삭제 성공", "mypage.do?command=cartlist", response);
         }else {
            jsResponse("삭제 실패", "mypage.do?command=cartlist", response);
         }
         
      }else if(command.equals("deletecartall")) {
         boolean res = mdao.My_deleteCart_All(vo.getAcc_no());
         if(res) {
            jsResponse("삭제 성공", "./RECOREMain/RECOREMypage/Mypage_Cart.jsp", response);
         }else {
            jsResponse("삭제 실패", "mypage.do?command=cartlist", response);
         }
         
      }else if(command.equals("deletecheckedcart")) {
         String prod_id = request.getParameter("arr_chk");
         String[] list_prod_id = prod_id.split(",");
         System.out.println("넘어온 arr" + list_prod_id[0]);
         boolean res = false;
         for(int i=0;i<list_prod_id.length;i++) {
            res = mdao.My_deleteCart_One(vo.getAcc_no(), Integer.parseInt(list_prod_id[i]));
         }
         
         if(res) {
            jsResponse("삭제 성공", "mypage.do?command=cartlist", response);
         }else {
            jsResponse("삭제 실패", "mypage.do?command=cartlist", response);
         }
         
      }else if(command.equals("cartupdate")) {
         int prod_id = Integer.parseInt(request.getParameter("prod_id"));
         System.out.println("업데이트 할 prod_id" + prod_id);
         int cart_amount = Integer.parseInt(request.getParameter("cart_amount"));
         System.out.println("업데이트 할 수량 : " + cart_amount);
         boolean res = mdao.My_updateCart(prod_id, cart_amount);
         
         if(res) {
            jsResponse("변경 성공", "mypage.do?command=cartlist", response);
         }else {
            jsResponse("변경 실패", "mypage.do?command=cartlist", response);
         }
         
      }else if(command.equals("insertwish")) {
         int prod_no = Integer.parseInt(request.getParameter("prod_no"));
         boolean res = pdao.P_insertWish(vo.getAcc_no(), prod_no);
         
         if(res) {
            jsResponse("등록 성공", "mypage.do?command=cartlist", response);
         }else {
            jsResponse("등록 실패", "mypage.do?command=cartlist", response);
         }
         
      }else if(command.equals("insertcart")) {
         int prod_id = 0; //수정@@@@@
         boolean res = pdao.P_insertCart(vo.getAcc_no(), prod_id);
         
         if(res) {
            jsResponse("등록 성공", "mypage.do?command=wishlist", response);
         }else {
            jsResponse("등록 실패", "mypage.do?command=wishlist", response);
         }
         
      }
      
   }
   
   private void dispatch(String url, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      RequestDispatcher dispatch = request.getRequestDispatcher(url);
      dispatch.forward(request, response);
      
   }
   
   private void jsResponse(String msg, String url, HttpServletResponse response) throws IOException {
      String s = "<script type='text/javascript'>"+"alert('"+msg+"');" + "location.href='" + url +"';" + "</script>";
      
      PrintWriter out = response.getWriter();
      out.print(s);
   }

   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      doGet(request, response);
   }

}