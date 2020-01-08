package com.mvc.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mvc.dao.CommunityDaoImpl;
import com.mvc.dao.ManagerDaoImpl;
import com.mvc.vo.Vo_Account;
import com.mvc.vo.Vo_Manager_ProdOption;
import com.mvc.vo.Vo_QnA;
import com.mvc.vo.Vo_QnA_Paging;

@WebServlet("/Community_Manager_Controller")
public class Community_Manager_Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ManagerDaoImpl mdao = new ManagerDaoImpl();

	public Community_Manager_Controller() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String command = "";
		command = request.getParameter("command");
		System.out.println("command: " + command);

		if (command.equals("manager_product")) {
			/**
			 * command 설명: Product 전체 리스트 로드 작성자: 주희진 Date: 2020. 01. 06.
			 */

			String category = "all";
			String searchsubject = null;
			String keyword = null;

			category = (String) request.getParameter("catd");
			searchsubject = (String) request.getParameter("searchsubject");
			keyword = (String) request.getParameter("keyword");
			
			if(searchsubject!=null) {
				if(searchsubject.equals("number")) {
					searchsubject="PROD_NO";
				}else if(searchsubject.equals("id")) {
					searchsubject="PROD_ID";
				}else if(searchsubject.equals("name")) {
					searchsubject="PROD_NAME";
				}
			}
			System.out.println("매니저: category" + category);
			System.out.println("매니저: searchsubject" + searchsubject);
			System.out.println("매니저 : keyword" + keyword);

			/* Page Code */
			int page = 1;
			if (request.getParameter("page") != null) {
				page = Integer.parseInt(request.getParameter("page"));
			}
			Vo_QnA_Paging paging = new Vo_QnA_Paging();
			paging.setPage(page);

			/* QnA list Total Row Load */
			int totalCount = mdao.P_selectAllCount(category, searchsubject, keyword);
			paging.setTotalCount(totalCount);
			/* Session Load & Set */
			HttpSession session = request.getSession();
			Vo_Account sessionVo = (Vo_Account) session.getAttribute("vo");
			
			List<Vo_Manager_ProdOption> productList = mdao.P_selectAll(paging, category, searchsubject, keyword); 
			 request.setAttribute("list", productList);
			 request.setAttribute("paging", paging); 
			 request.setAttribute("category",category); 
			 request.setAttribute("searchsubject", searchsubject);
			 request.setAttribute("keyword", keyword);
				dispatch("/RECOREMain/RECORECommunity/qna_manager/manager/manager_product.jsp",request, response);

				/*
			if(isEmpty(sessionVo)) {
				System.out.println("비로그인.");
				response.sendRedirect("index.jsp");
			}else {
				if(sessionVo.getAcc_m_c().equals("M")) {
					System.out.println("관리자계정");
					dispatch("/RECOREMain/RECORECommunity/qna_manager/manager/manager_product.jsp",request, response);
				}else {
					System.out.println("유저계정");
					response.sendRedirect("index.jsp");
				}
			}
*/
			
			 
			  
			 //Redirect dispatch Method Call 
			 //dispatch("/RECOREMain/RECORECommunity/qna_manager/manager/manager_product.jsp",request, response);
			 
		}

	}

	private void dispatch(String url, HttpServletRequest request, HttpServletResponse response) {
		RequestDispatcher dispatch = request.getRequestDispatcher(url);
		try {
			dispatch.forward(request, response);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
	}
	private  boolean isEmpty(Object s) {
		if (s == null) {
			return true; 
		}
		return false;
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
