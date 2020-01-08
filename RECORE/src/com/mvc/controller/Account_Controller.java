package com.mvc.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;

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
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
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

			if (id.equals(vo.getAcc_id()) && pw.equals(vo.getAcc_pw())) {
				
				if (vo.getAcc_isReg().equals("Y")) {
					HttpSession session = request.getSession();
					session.setAttribute("vo", vo);

					if (vo.getAcc_m_c().equals("M")) { // 관리자페이지
						jsResponse("관리자 로그인 성공", "./RECOREMain/index.html", response);
					} else if (vo.getAcc_m_c().equals("C")) { // 유저페이지
						System.out.println(vo.getAcc_id());
						jsResponse(vo.getAcc_id() + "님 환영합니다.", "./RECOREMain/index.html", response);
					}
				} else {
					jsResponse("탈퇴한 회원입니다", "./RECOREMain/RECOREAccount/Acc_Login.jsp", response);
				}
			} else {
				jsResponse("가입하지 않은 아이디이거나, 잘못된 비밀번호입니다", "./RECOREMain/RECOREAccount/Acc_Login.jsp", response);
				// 로그인 실패 팝업창 뜨게 만들기
			}

		} else if (command.equals("logout")) {
			HttpSession session = request.getSession();
			session.invalidate();
			response.sendRedirect("./RECOREMain/index.html");
			System.out.println(session);

		} else if (command.equals("withdrawal")) {
			HttpSession session = request.getSession();
			Vo_Account vo = (Vo_Account) session.getAttribute("vo");
			boolean res = false;
			res = dao.A_delete(vo.getAcc_no());
			if (res) {
				jsResponse("회원이 탈퇴 되었습니다.", "./RECOREMain/index.html", response);
				session.invalidate();
			} else {

			}

		} else if (command.equals("Acc_insert")) {
			String acc_id = request.getParameter("member_id");
			String acc_pw = request.getParameter("passwd");
			String acc_name = request.getParameter("name");
			String acc_birth_year = request.getParameter("birth_year");
			
			String acc_birth_month = request.getParameter("birth_month");
			switch(acc_birth_month) {
			case "1" : acc_birth_month="01";
			break;
			case "2" : acc_birth_month="02";
			break;
			case "3" : acc_birth_month="03";
			break;
			case "4" : acc_birth_month="04";
			break;
			case "5" : acc_birth_month="05";
			break;
			case "6" : acc_birth_month="06";
			break;
			case "7" : acc_birth_month="07";
			break;
			case "8" : acc_birth_month="08";
			break;
			case "9" : acc_birth_month="09";
			break;
			}
			String acc_birth_day = request.getParameter("birth_day");
			switch(acc_birth_day) {
			case "1" : acc_birth_day="01";
			break;
			case "2" : acc_birth_day="02";
			break;
			case "3" : acc_birth_day="03";
			break;
			case "4" : acc_birth_day="04";
			break;
			case "5" : acc_birth_day="05";
			break;
			case "6" : acc_birth_day="06";
			break;
			case "7" : acc_birth_day="07";
			break;
			case "8" : acc_birth_day="08";
			break;
			case "9" : acc_birth_day="09";
			break;
			}
			String acc_birth = (acc_birth_year+acc_birth_month+acc_birth_day);
			String acc_phone1 = request.getParameter("mobile1");
			String acc_phone2 = request.getParameter("mobile2");
			String acc_phone3 = request.getParameter("mobile3");
			String acc_phone = acc_phone1+acc_phone2+acc_phone3;
			String acc_email = request.getParameter("email");
			String acc_zipcode = request.getParameter("zipNo");
			String acc_addr = request.getParameter("roadAddrPart1");
			String acc_addr2 = request.getParameter("addrDetail");

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
				dispatch("/RECOREMain/RECORECommunity/qna_manager/qna/qna_board.jsp", request, response);
				jsResponse("회원가입 성공", "./RECOREMain/index.html", response);
			} else {

			}
		} else if(command.equals("loginpage")) {
			response.sendRedirect("./RECOREMain/RECOREAccount/Acc_Login.jsp");
		} else if(command.equals("signuppage")) {
			response.sendRedirect("./RECOREMain/RECOREAccount/Acc_Signup.jsp");
		} else if(command.equals("editpage")) {
			HttpSession session = request.getSession();
			Vo_Account vo = (Vo_Account) session.getAttribute("vo");
			
			if(vo!=null) {
				response.sendRedirect("./RECOREMain/RECOREAccount/Acc_Edit.jsp");
			} else {
				response.sendRedirect("./RECOREMain/RECOREAccount/Acc_Login.jsp");
			}
		} else if(command.equals("idcheck")) {
			String id = request.getParameter("member_id");
			boolean res = dao.A_selectAccountOne(id);
			
			JSONObject obj = new JSONObject();
			obj.put("res", res);
			
			PrintWriter out = response.getWriter();
			out.println(obj.toJSONString());
			
		} else if(command.equals("phonecheck")) {
			String phone = request.getParameter("mobile");
			boolean pres = dao.A_selectAccountphone(phone);
			System.out.println(phone);
			JSONObject obj = new JSONObject();
			obj.put("pres", pres);
			
			PrintWriter out = response.getWriter();
			out.println(obj.toJSONString());
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	private void dispatch(String url, HttpServletRequest request, HttpServletResponse response) {

		RequestDispatcher dispatch = request.getRequestDispatcher(url);
		try {
			dispatch.forward(request, response);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
	}

	private void jsResponse(String msg, String url, HttpServletResponse response) throws IOException {

		String s = "<script type='text/javascript'> alert('" + msg + "'); location.href='" + url + "'; </script>";

		PrintWriter out = response.getWriter();
		out.print(s);
	}

}
