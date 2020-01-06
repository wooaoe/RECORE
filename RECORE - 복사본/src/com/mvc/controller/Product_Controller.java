package com.mvc.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mvc.dao.AccountDaoImp;
import com.mvc.dao.OrderDao;
import com.mvc.dao.OrderDaoImp;
import com.mvc.dao.ProductDao;
import com.mvc.dao.ProductDaoImp;
import com.mvc.vo.Vo_Account;
import com.mvc.vo.Vo_Category_Detail;
import com.mvc.vo.Vo_Order;
import com.mvc.vo.Vo_Order_Num;
import com.mvc.vo.Vo_Prod_option;
import com.mvc.vo.Vo_Product;

@WebServlet("/a.do")
public class Product_Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Product_Controller() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		ProductDao dao = new ProductDaoImp();
		OrderDao order = new OrderDaoImp();
		AccountDaoImp account = new AccountDaoImp();

		String command = request.getParameter("command");

		System.out.println("[command] : " + command);
		
		if (command.equals("ProdSelectAll")) {

			List<Vo_Product> plist = dao.P_selectAll();
			System.out.println(plist);
			request.setAttribute("plist", plist);
			
			int page = Integer.parseInt(request.getParameter("pageno"));
			System.out.println("pageno : " + page);
			request.setAttribute("page", page);
			
						
			dispatch("./RECOREMain/RECOREProduct/Prod_All.jsp", request, response);
			

		} else if (command.equals("ParentSelectAll")) {
			
			int catdid = Integer.parseInt(request.getParameter("catdid"));
			System.out.println("catdid : " + catdid);
			
			int page = Integer.parseInt(request.getParameter("pageno"));
			System.out.println("pageno : " + page);
			request.setAttribute("page", page);
			
			List<Vo_Product> parent = dao.Parent_selectAll(catdid);
			System.out.println("parent selectAll" + parent);
			request.setAttribute("parent", parent);
			
			/*
			 * Vo_Category_Detail cdvo = dao.CD_selectAll2(catdid);
			 * request.setAttribute("cdvo", cdvo);
			 */
			
			List<Vo_Category_Detail> cdlist = dao.CD_selectAll(catdid);
			request.setAttribute("cdlist", cdlist);
			 
			//페이지 하나에서 시퀀스 넘버로 구분 
			dispatch("./RECOREMain/RECOREProduct/Parent.jsp", request, response);
			

		}else if(command.equals("ProdPrepage")) {
			
			
			
			dispatch("./RECOREMain/RECOREProduct/Prod_SingleDetail.jsp", request, response);
			
		}else if(command.equals("ProdNextpage")) {
			
			
			dispatch("./RECOREMain/RECOREProduct/Prod_SingleDetail.jsp", request, response);
		}
		
		
		else if (command.equals("ChildSelectAll")) {
			
			int catdno = Integer.parseInt(request.getParameter("catdno"));
			System.out.println(catdno);
			
			int page = Integer.parseInt(request.getParameter("pageno"));
			System.out.println("pageno : " + page);
			request.setAttribute("page", page);
			
			List<Vo_Product> child = dao.Child_selectAll(catdno);
			System.out.println(child);
			request.setAttribute("child", child);
			
			Vo_Category_Detail cdvo2 = dao.CD_selectAll2(catdno);
			request.setAttribute("cdvo2", cdvo2);
			
			dispatch("./RECOREMain/RECOREProduct/Child.jsp", request, response);
		
		
		} else if (command.equals("ProdDetail")) {

			int pseq = Integer.parseInt(request.getParameter("pseq"));
			System.out.println("pseq : " + pseq);
			
			int catdno = Integer.parseInt(request.getParameter("catdno"));
			System.out.println("catdno : " + catdno);
			
			Vo_Product pvo = dao.P_selectOne(pseq);
			request.setAttribute("pvo", pvo);
			System.out.println("pvo catdno : " + pvo.getProd_catd());

			Vo_Category_Detail cdvo = dao.CD_selectOne(pvo);
			request.setAttribute("cdvo", cdvo);

			/* List<Vo_Prod_option> povo = dao.po_selectOne(pvo); */
			ArrayList<Vo_Prod_option> povo = dao.po_selectOne(pvo);
			request.setAttribute("povo", povo);
			System.out.println("povo prod_id : " + povo.get(0).getProd_id());
			
			List<Vo_Product> plist = dao.P_selectAll();
			System.out.println(plist);
			request.setAttribute("plist", plist);
			
			List<Vo_Product> toplist = dao.P_topSelectOne(catdno);
			request.setAttribute("toplist", toplist);
			System.out.println("toplist의 인덱스 값 : " + toplist.get(0).getProd_no());

			dispatch("./RECOREMain/RECOREProduct/Prod_SingleDetail.jsp", request, response);
			

		} else if (command.equals("Order")) {

			int pseq = Integer.parseInt(request.getParameter("pseq"));
			System.out.println("pseq : " + pseq);

			Vo_Product pvo = dao.P_selectOne(pseq);
			request.setAttribute("pvo", pvo);

			Vo_Category_Detail cdvo = dao.CD_selectOne(pvo);
			request.setAttribute("cdvo", cdvo);

			ArrayList<Vo_Prod_option> povo = dao.po_selectOne(pvo);
			request.setAttribute("povo", povo);
			System.out.println("povo prod_id : " + povo.get(0).getProd_id());
			
			List<Vo_Product> plist = dao.P_selectAll();
			System.out.println(plist);
			request.setAttribute("plist", plist);
			
			List<Vo_Prod_option> polist = dao.option_selectAll();
			System.out.println("polist : " + polist);
			System.out.println("polist prodid : " + polist.get(0).getProd_id());
			request.setAttribute("polist", polist);
			
			
		    Vo_Account acc = account.A_selectAccount("user1", "user1");
		    HttpSession session = request.getSession();
		    session.setAttribute("acc", acc);
			
			dispatch("./RECOREMain/RECOREProduct/Prod_Checkout.jsp", request, response);
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

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
