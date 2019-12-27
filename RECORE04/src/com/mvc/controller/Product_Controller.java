package com.mvc.controller;

import java.io.IOException;import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.dao.ProductDao;
import com.mvc.dao.ProductDaoImp;
import com.mvc.vo.Vo_Product;

/**
 * Servlet implementation class Product_Controller
 */
@WebServlet("/a.do")
public class Product_Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Product_Controller() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		ProductDao dao = new ProductDaoImp();
		
		String command = request.getParameter("command");
		System.out.println(command);
		
		if(command.equals("ProdSelectAll")) {
			
			List<Vo_Product> plist = dao.P_selectAll();
			
			System.out.println(plist);
			  
			request.setAttribute("plist", plist);
			 
			dispatch("./RECOREMain/RECOREProduct/Prod_All.jsp", request, response);
		
		}else if(command.equals("BagAccSelectAll")) {
			
			List<Vo_Product> bclist = dao.BC_selectAll();
			
			System.out.println(bclist);
			
			request.setAttribute("bclist", bclist);
			
			dispatch("./RECOREMain/RECOREProduct/BagAcc.jsp", request, response);
			
		}
	
	
	
	}

	private void dispatch(String url, HttpServletRequest request, HttpServletResponse response) {
		
		
		try {
			RequestDispatcher dispatch = request.getRequestDispatcher(url);
			dispatch.forward(request, response);
		
		} catch (ServletException | IOException e) {
			
			System.out.println("페이지 이동 실패!");
		}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
