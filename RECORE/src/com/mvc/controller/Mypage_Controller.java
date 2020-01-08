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
import com.mvc.vo.Vo_Funding;
import com.mvc.vo.Vo_Funding_detail;
import com.mvc.vo.Vo_Mypage_Paging;
import com.mvc.vo.Vo_Order;
import com.mvc.vo.Vo_Order_Num;
import com.mvc.vo.Vo_Product;
import com.mvc.vo.Vo_QnA;
import com.mvc.vo.Vo_Review;

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
//      AccountDaoImp dao = new AccountDaoImp();
//      Vo_Account vo = dao.A_selectAccount("user1", "user1");
      
      //로그인 객체 가져오기
      HttpSession session = request.getSession();
      Vo_Account vo = (Vo_Account)session.getAttribute("vo");
//      session.setAttribute("vo", vo);
      
      //map 가져오기
      MyPageDaoImp mdao = new MyPageDaoImp();
      System.out.println("계정넘버 : " + vo.getAcc_no());
      Map<String,Object> map = mdao.selectMypage(vo.getAcc_no());
      
      //wish, cart insert
      ProductDaoImp pdao = new ProductDaoImp();
      
      if(command.equals("main")){ //main
    	  List list = (List)map.get("list_order");
    	  System.out.println("main에 넘어갈 사이즈 : "+list.size());
    	  request.setAttribute("list_order", map.get("list_order"));
    	  dispatch("./RECOREMain/RECOREMypage/Mypage_Main.jsp", request, response);
    	  
   	  }else if(command.equals("orderlist")) { //주문내역조회
//         System.out.println(map.get("list_order"));
         List list = (List)map.get("list_order");
         System.out.println("orderlist 사이즈가??" + list.size());
         int pageNo = Integer.parseInt(request.getParameter("pageno"));
         System.out.println("pageNo : " + pageNo);
         
         Vo_Mypage_Paging paging = new Vo_Mypage_Paging();
         paging.setPageNo(pageNo);
         paging.setTotalCount(list.size());
         
//         Vo_Order_Num tmp = null;
//         int total = 0;
         
//         for(int i=0;i<list.size();i++) {
//        	 tmp = (Vo_Order_Num)list.get(i);
//        	 total += tmp.getOlist().size();
//         }
//         System.out.println("order 전체 사이즈??? : " + total);
//         paging.setTotalCount(total);
         System.out.println("paging vo의 startpage : " + paging.getStartPage());
         System.out.println("paging vo의 endpage : " + paging.getEndPage());
         
         if(list.isEmpty()) {
            response.sendRedirect("RECOREMain/RECOREMypage/Mypage_OrderList.jsp");
         }else {
            request.setAttribute("list_order", map.get("list_order"));
            request.setAttribute("page", paging);
            dispatch("./RECOREMain/RECOREMypage/Mypage_OrderList.jsp", request, response);
         }
         
      }else if(command.equals("orderdetail")) { //주문내역 상세조회
    	  int order_no = Integer.parseInt(request.getParameter("order_no"));
    	  List list = (List)map.get("list_order");
    	  Vo_Order_Num vo_order = null;

    	  for(int i=0;i<list.size();i++) {
    		  Vo_Order_Num tmp = (Vo_Order_Num)list.get(i);
    		  if(tmp.getOrder_no() == order_no) {
    			  vo_order = tmp;
    		  }
    	  }
    	  List olist = vo_order.getOlist();
    	  
//    	  int[] idArr = new int[olist.size()]; // 리뷰작성했는지 확인
//    	  for(int i=0;i<olist.size();i++) {
//    		  Vo_Order tmp2 = (Vo_Order)olist.get(i);
//    		  idArr[i] = tmp2.getProd_id();
//    	  }
//    	  
//    	  int[] resArr = new int[idArr.length];
//    	  for(int i=0;i<idArr.length;i++) {
//    		  resArr[i] = mdao.My_checkReview(order_no, idArr[i]);
//    	  }
//    	  
//    	  System.out.println("가져온 상품 아이디 첫번째 : " + idArr[0]);
//    	  System.out.println("db에서 가져온 결과 첫번째 상품 : " + resArr[0]);
//    	  
//    	  request.setAttribute("reviewcheck", resArr);
    	  request.setAttribute("vo_order", vo_order);
    	  request.setAttribute("vo_olist", olist);
    	  
    	  dispatch("./RECOREMain/RECOREMypage/Mypage_OrderList_Detail.jsp", request, response);
    	  
      }else if(command.equals("updateorder")) { //주문상태 수정
    	  int order_no = Integer.parseInt(request.getParameter("orderno"));
    	  int prod_id = Integer.parseInt(request.getParameter("prodid"));
    	  String status = request.getParameter("status");
    	  System.out.println("orderno,prodid,status : " + order_no + ", " + prod_id + ", " + status);
    	  
    	  boolean res = mdao.My_updateOrder_Status(order_no, prod_id, status);
    	  
    	  if(res) {
              jsResponse("변경 성공", "mypage.do?command=orderlist&pageno=1", response);
          }else {
              jsResponse("변경 실패", "mypage.do?command=orderlist&pageno=1", response);
          }
    	  
      }else if(command.equals("reviewform")) { //리뷰등록 폼
    	  int order_no = Integer.parseInt(request.getParameter("orderno"));
    	  int prod_id = Integer.parseInt(request.getParameter("prodid"));
    	  
    	  request.setAttribute("order_no", order_no);
    	  request.setAttribute("prod_id", prod_id);
    	  dispatch("./RECOREMain/RECOREMypage/Mypage_ReviewForm.jsp", request, response);
    	  
      }else if(command.equals("insertreview")) { //리뷰 db에 추가
    	  int order_no = Integer.parseInt(request.getParameter("orderno"));
    	  int prod_id = Integer.parseInt(request.getParameter("prodid"));
    	  String title = request.getParameter("title");
    	  String content = request.getParameter("content");
    	  int rating = Integer.parseInt(request.getParameter("rating"));
    	  
    	  boolean res = mdao.My_insertReview(order_no, prod_id, title, content, rating);
    	  
    	  if(res) {
    		  mdao.My_updateIsReview(order_no, prod_id);
              jsResponse("등록 성공", "mypage.do?command=orderdetail&order_no="+order_no, response);
           }else {
              jsResponse("등록 실패", "mypage.do?command=reviewform&orderno="+order_no+"&prodid="+prod_id, response);
           }
    	  
      }else if(command.equals("fundinglist")) { //펀딩내역 조회
    	  System.out.println(map.get("list_fun_d"));
          List list = (List)map.get("list_fun_d");
          int pageNo = Integer.parseInt(request.getParameter("pageno"));
          System.out.println("pageNo : " + pageNo);
          
          Vo_Mypage_Paging paging = new Vo_Mypage_Paging();
          paging.setPageNo(pageNo);
          paging.setTotalCount(list.size());
          
          Vo_Funding_detail test = (Vo_Funding_detail)list.get(0);
          System.out.println("fund_no????? : " + test.getFund_no());
          
          if(list.isEmpty()) {
             response.sendRedirect("RECOREMain/RECOREMypage/Mypage_FundingList.jsp");
          }else {
             request.setAttribute("list_fun", map.get("list_fun"));
             request.setAttribute("list_fun_d", map.get("list_fun_d"));
             request.setAttribute("page", paging);
             dispatch("./RECOREMain/RECOREMypage/Mypage_FundingList.jsp", request, response);
          }
         
      }else if(command.equals("wishlist")) { //위시리스트 조회
         System.out.println(map.get("list_wish"));
         List list = (List)map.get("list_wish");
         int pageNo = Integer.parseInt(request.getParameter("pageno"));
         System.out.println("pageNo : " + pageNo);
         
         Vo_Mypage_Paging paging = new Vo_Mypage_Paging();
         paging.setPageNo(pageNo);
         paging.setTotalCount(list.size());
         
         if(list.isEmpty()) {
            response.sendRedirect("RECOREMain/RECOREMypage/Mypage_WishList.jsp");
         }else {
            request.setAttribute("list_wish", map.get("list_wish"));
            System.out.println("서블릿 map의 wish : " + map.get("list_wish"));
            request.setAttribute("page", paging);
            dispatch("./RECOREMain/RECOREMypage/Mypage_WishList.jsp", request, response);
         }
         
      }else if(command.equals("deletewishone")){ //위시리스트 상품 개별 삭제
         int prod_no = Integer.parseInt(request.getParameter("prod_no"));
         boolean res = mdao.My_deleteWish_One(vo.getAcc_no(), prod_no);
         
         if(res) {
            jsResponse("삭제 성공", "mypage.do?command=wishlist", response);
         }else {
            jsResponse("삭제 실패", "mypage.do?command=wishlist", response);
         }
         
      }else if(command.equals("deletecheckedwish")) { //위시리스트 상품 선택 삭제
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
         
      }else if(command.equals("deletewishall")) { //위시리스트 상품 전체 삭제
         boolean res = mdao.My_deleteWish_All(vo.getAcc_no());
         
         if(res) {
//            jsResponse("삭제 성공", "RECOREMain/RECOREMypage/Mypage_WishList.jsp", response);
            jsResponse("삭제 성공", "mypage.do?command=wishlist", response);
         }else {
            jsResponse("삭제 실패", "mypage.do?command=wishlist", response);
         }
         
      }else if(command.equals("mileage")) { //마일리지 조회
         request.setAttribute("acc_point", vo.getAcc_point());
         request.setAttribute("list_order", map.get("list_order"));
         List list = (List)map.get("list_order");
         
         int pageNo = Integer.parseInt(request.getParameter("pageno"));
         System.out.println("pageNo : " + pageNo);
         
         Vo_Mypage_Paging paging = new Vo_Mypage_Paging();
         paging.setPageNo(pageNo);
         paging.setTotalCount(list.size());
         
         request.setAttribute("page", paging);
         
         System.out.println(list.size());
         dispatch("./RECOREMain/RECOREMypage/Mypage_Mileage2.jsp", request, response);
         
      }else if(command.equals("boardlist")) { //게시글 조회
    	 System.out.println("command : " + command);
    	 List list = (List)map.get("list_qna");
         int pageNo = Integer.parseInt(request.getParameter("pageno"));
         System.out.println("pageNo : " + pageNo);
         
         Vo_Mypage_Paging paging = new Vo_Mypage_Paging();
         paging.setPageNo(pageNo);
         paging.setTotalCount(list.size());
    	 
    	 if(list.isEmpty()) {
    		 response.sendRedirect("./RECOREMain/RECOREMypage/Mypage_BoardList2.jsp");
    	 }else {
    		 request.setAttribute("list_qna", map.get("list_qna"));
             request.setAttribute("page", paging);
//    		 System.out.println("서블릿에서 listqna : " + map.get("list_qna"));
    		 dispatch("./RECOREMain/RECOREMypage/Mypage_BoardList2.jsp", request, response);
    	 }
         
      }else if(command.equals("boarddetail")) { //게시글 상세조회
    	  int qna_no = Integer.parseInt(request.getParameter("qnano"));
    	  
    	  //조회수 업데이트
    	  boolean res = mdao.My_updateBoard_Viewcount(qna_no);
    	  
    	  //qna 객체 가져오기
    	  Vo_QnA vo_qna = mdao.My_selectBoardOne(qna_no);
    	  request.setAttribute("vo_qna", vo_qna);
    	  
    	  //상품 정보 뿌리기용
    	  Vo_Product vo_prod = pdao.P_selectOne(vo_qna.getQna_prod_no());
    	  request.setAttribute("vo_prod", vo_prod);
    	  request.setAttribute("catd", vo_prod.getProd_catd());
    	  
    	  
    	  dispatch("./RECOREMain/RECOREMypage/Mypage_Board_Detail.jsp", request, response);
    	  
      }else if(command.equals("updateboard")) { //게시글 수정form
    	  int qna_no = Integer.parseInt(request.getParameter("qnano"));
    	  Vo_QnA vo_qna = mdao.My_selectBoardOne(qna_no);
    	  
    	  request.setAttribute("vo_qna", vo_qna);
    	  dispatch("./RECOREMain/RECOREMypage/Mypage_BoardUpdate.jsp", request, response);
    	  
      }else if(command.equals("updateboardres")) { //게시글 수정 완료
    	  int qna_no = Integer.parseInt(request.getParameter("qnano"));
    	  String title = request.getParameter("title");
    	  String content = request.getParameter("content");
    	  
    	  System.out.println("qna_no 잘넘어옴? : " + qna_no);
    	  System.out.println("title 잘넘어옴? : " + title);
    	  System.out.println("content 잘넘어옴? : " + content);
    	  
    	  boolean res = mdao.My_updateBoard(qna_no, title, content);
    	  
    	  if(res) {
	          jsResponse("수정 성공", "mypage.do?command=boarddetail&qnano="+qna_no, response);
	      }else {
	    	  jsResponse("수정 실패", "mypage.do?command=updateboard&qnano="+qna_no, response);
	      }
    	  
      }else if(command.equals("deleteboard")) { //게시글 삭제
    	  boolean result = Boolean.valueOf(request.getParameter("result"));
    	  int qna_no = Integer.parseInt(request.getParameter("qnano"));
    	  if(result) {
    		  boolean res = mdao.My_deleteBoard(vo.getAcc_no(), qna_no);
    		  if(res) {
    	            jsResponse("삭제 성공", "mypage.do?command=boardlist&pageno=1", response);
    	         }else {
    	            jsResponse("삭제 실패", "mypage.do?command=boarddetail&qnano="+qna_no, response);
    	         }
    	  }else {
    		  dispatch("mypage.do?command=boarddetail&qnano="+qna_no, request, response);
    	  }
    	  
      }else if(command.equals("cartlist")) { //장바구니 조회
         System.out.println("command : " + command);
         List list = (List)map.get("list_cart");
         
         if(list.isEmpty()) {
            response.sendRedirect("./RECOREMain/RECOREMypage/Mypage_Cart.jsp");
//            dispatch("./RECOREMain/RECOREMypage/Mypage_Cart.jsp", request, response);
         }else {
            request.setAttribute("list_cart", map.get("list_cart"));
            System.out.println("서블릿에서 listcart : " + map.get("list_cart"));
            dispatch("./RECOREMain/RECOREMypage/Mypage_Cart.jsp", request, response);
         }
         
      }else if(command.equals("deletecartone")) { //장바구니 상품 개별 삭제
         int prod_id = Integer.parseInt(request.getParameter("prod_id"));
         boolean res = mdao.My_deleteCart_One(vo.getAcc_no(), prod_id);
         
         if(res) {
            jsResponse("삭제 성공", "mypage.do?command=cartlist", response);
         }else {
            jsResponse("삭제 실패", "mypage.do?command=cartlist", response);
         }
         
      }else if(command.equals("deletecartall")) { //장바구니 상품 전체 삭제
         boolean res = mdao.My_deleteCart_All(vo.getAcc_no());
         if(res) {
            jsResponse("삭제 성공", "./RECOREMain/RECOREMypage/Mypage_Cart.jsp", response);
         }else {
            jsResponse("삭제 실패", "mypage.do?command=cartlist", response);
         }
         
      }else if(command.equals("deletecheckedcart")) { //장바구니 상품 선택 삭제
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
         
      }else if(command.equals("cartupdate")) { //장바구니 수량 변경
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
         
      }else if(command.equals("insertwish")) { //위시리스트 등록
         int prod_no = Integer.parseInt(request.getParameter("prod_no"));
         boolean res = pdao.P_insertWish(vo.getAcc_no(), prod_no);
         
         if(res) {
            jsResponse("등록 성공", "mypage.do?command=cartlist", response);
         }else {
            jsResponse("등록 실패", "mypage.do?command=cartlist", response);
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