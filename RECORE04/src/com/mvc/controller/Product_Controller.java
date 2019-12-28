package com.mvc.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.dao.ProductDao;
import com.mvc.dao.ProductDaoImp;
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

		String command = request.getParameter("command");

		System.out.println("[command] : " + command);

		if (command.equals("ProdSelectAll")) {

			List<Vo_Product> plist = dao.P_selectAll();
			System.out.println(plist);
			request.setAttribute("plist", plist);
		
			dispatch("./RECOREMain/RECOREProduct/Prod_All.jsp", request, response);

		} else if (command.equals("BagAccSelectAll")) {

			List<Vo_Product> bclist = dao.BC_selectAll();
			System.out.println(bclist);
			request.setAttribute("bclist", bclist);

			dispatch("./RECOREMain/RECOREProduct/BagAcc.jsp", request, response);

		} else if (command.equals("ClothingSelectAll")) {

			List<Vo_Product> clolist = dao.Clo_selectAll();
			System.out.println(clolist);
			request.setAttribute("clolist", clolist);

			dispatch("./RECOREMain/RECOREProduct/Clothing.jsp", request, response);

		} else if (command.equals("OuterSelectAll")) {

			List<Vo_Product> outlist = dao.Outer_selectAll();
			System.out.println(outlist);
			request.setAttribute("outlist", outlist);

			dispatch("./RECOREMain/RECOREProduct/Outer.jsp", request, response);

		} else if (command.equals("TopSelectAll")) {

			List<Vo_Product> toplist = dao.Top_selectAll();
			System.out.println(toplist);
			request.setAttribute("toplist", toplist);

			dispatch("./RECOREMain/RECOREProduct/TOP.jsp", request, response);

		} else if (command.equals("BottomSelectAll")) {

			List<Vo_Product> bottlist = dao.Bottom_selectAll();
			System.out.println(bottlist);
			request.setAttribute("bottlist", bottlist);

			dispatch("./RECOREMain/RECOREProduct/Bottom.jsp", request, response);

		} else if (command.equals("WalletSelectAll")) {

			List<Vo_Product> walist = dao.Wallet_selectAll();
			System.out.println(walist);
			request.setAttribute("walist", walist);

			dispatch("./RECOREMain/RECOREProduct/Wallet.jsp", request, response);

		} else if (command.equals("LifeSelectAll")) {

			List<Vo_Product> lifelist = dao.Life_selectAll();
			System.out.println(lifelist);
			request.setAttribute("lifelist", lifelist);

			dispatch("./RECOREMain/RECOREProduct/Life.jsp", request, response);

		} else if (command.equals("SupplySelectAll")) {

			List<Vo_Product> suplist = dao.Supply_selectAll();
			System.out.println(suplist);
			request.setAttribute("suplist", suplist);

			dispatch("./RECOREMain/RECOREProduct/Supply.jsp", request, response);

		} else if (command.equals("HomeSelectAll")) {

			List<Vo_Product> homelist = dao.Home_selectAll();
			System.out.println(homelist);
			request.setAttribute("homelist", homelist);

			dispatch("./RECOREMain/RECOREProduct/Home.jsp", request, response);

		} else if (command.equals("ProdDetail")) {

			int pseq = Integer.parseInt(request.getParameter("pseq"));
			System.out.println("pseq : " + pseq);
			Vo_Product pvo = dao.P_selectOne(pseq);
			request.setAttribute("pvo", pvo);

			dispatch("./RECOREMain/RECOREProduct/Prod_SingleDetail.jsp", request, response);

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
