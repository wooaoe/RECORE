package com.mvc.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.ws.Response;

import com.mvc.dao.AccountDaoImpl;
import com.mvc.dao.MypageDao_Impl;
import com.mvc.vo.Vo_Account;
import com.mvc.vo.Vo_Cart;
import com.mvc.vo.Vo_Wish;

@WebServlet("/mypage.do")
public class Mypage_Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Mypage_Controller() {
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String command = request.getParameter("command");
		//임의로 로그인 세션 set
		AccountDaoImpl dao = new AccountDaoImpl();
		Vo_Account vo = dao.A_selectAccount("user1", "user1");
		HttpSession session = request.getSession();
		session.setAttribute("vo", vo);
		
		//map 가져오기
		MypageDao_Impl mdao = new MypageDao_Impl();
		System.out.println("계정넘버 : " + vo.getAcc_no());
		Map<String,Object> map = mdao.selectMypage(vo.getAcc_no());
		
		if(command.equals("orderlist")) {
			dispatch("./RECOREMain/RECOREMypage/Mypage_OrderList.jsp", request, response);
			
		}else if(command.equals("fundinglist")) {
			dispatch("./RECOREMain/RECOREMypage/Mypage_FundingList.jsp", request, response);
			
		}else if(command.equals("wishlist")) {
			request.setAttribute("list_wish", map.get("list_wish"));
			System.out.println("서블릿 map의 wish : " + map.get("list_wish"));
			dispatch("./RECOREMain/RECOREMypage/Mypage_WishList.jsp", request, response);
			
		}else if(command.equals("mileage")) {
			dispatch("./RECOREMain/RECOREMypage/Mypage_Mileage2.jsp", request, response);
			
		}else if(command.equals("board")) {
			dispatch("./RECOREMain/RECOREMypage/Mypage_BoardList.jsp", request, response);
			
		}
		
	}
	
	private void dispatch(String url, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatch = request.getRequestDispatcher(url);
		dispatch.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
