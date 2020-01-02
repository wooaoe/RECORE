package com.mvc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mvc.dao.AccountDaoImp;
import com.mvc.vo.Vo_Account;

/**
 * Servlet implementation class Login_Register_Controller
 */
@WebServlet("/Account_Controller.do")
public class Account_Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Account_Controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		String command = request.getParameter("command");
		AccountDaoImp dao = new AccountDaoImp();

		if (command.equals("login")) {
			String id = request.getParameter("acc_id");
			String pw = request.getParameter("acc_pw");
			System.out.println(id);
			System.out.println(pw);

			Vo_Account vo = dao.A_selectAccount(id, pw);

			if (vo != null) {
				
				
				HttpSession session = request.getSession();
				session.setAttribute("vo", vo);

				if (vo.getAcc_m_c().equals("M")) {	// 관리자페이지
					response.sendRedirect("./RECOREMain/index.jsp");
				} else if (vo.getAcc_m_c().equals("C")) {	// 유저페이지
					System.out.println(vo.getAcc_id());
					response.sendRedirect("./RECOREMain/index.jsp");
				}
				
			} else {
				response.sendRedirect("./RECOREMain/RECOREAccount/Acc_Login.jsp");
				// 로그인 실패 팝업창 뜨게 만들기
			}

		} else if (command.equals("logout")) {
			HttpSession session = request.getSession();
			session.invalidate();
			response.sendRedirect("./RECOREMain/index.jsp");

		} else if (command.equals("Acc_insert")) {
			String acc_id = request.getParameter("acc_id");
			String acc_pw = request.getParameter("acc_pw");
			String acc_name = request.getParameter("acc_name");
			String acc_birth = request.getParameter("acc_birth");
			String acc_phone = request.getParameter("acc_phone");
			String acc_email = request.getParameter("acc_email");
			String acc_zipcode = request.getParameter("acc_zipcode");
			String acc_addr = request.getParameter("acc_addr");
			String acc_addr2 = request.getParameter("acc_addr2");

			Vo_Account vo = new Vo_Account();
			vo.setAcc_id(acc_id);
			vo.setAcc_pw(acc_pw);
			vo.setAcc_name(acc_name);
			vo.setAcc_birth(acc_birth);
			vo.setAcc_phone(acc_phone);
			vo.setAcc_email(acc_email);
			vo.setAcc_zipcode(acc_zipcode);
			vo.setAcc_addr(acc_addr);
			vo.setAcc_addr2(acc_addr2);

			boolean res = dao.A_insert(vo);
			if (res) {
				response.sendRedirect("./RECOREMain/index.html");
			} else {

			}
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
