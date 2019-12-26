package com.mvc.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.dao.IssueDao;
import com.mvc.dao.IssueDaoImpl;
import com.mvc.vo.Vo_Issue;
import java.util.List;


@WebServlet("/issue.do")
public class Issue_Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	

    public Issue_Controller() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		IssueDao dao = new IssueDaoImpl();
		
		String command = request.getParameter("command");
		
		if(command.equals("selectAllNews")) {
			
			List<Vo_Issue> list = dao.I_selectAll();
			
			System.out.println(list);
			
			request.setAttribute("issue_list", list);
			
			dispatch("./RECOREMain/RECOREIssue/news.jsp", request, response);
			
			
		}else if(command.equals("selectOneNews")) {
			
			int iss_no = Integer.parseInt(request.getParameter("iss_no"));
			
			Vo_Issue vo = dao.I_selectOne(iss_no); 
			
			System.out.println(vo);
			
			request.setAttribute("issue_vo", vo);
			
			dispatch("./RECOREMain/RECOREIssue/news_detail.jsp", request, response);
			
			
		}
		
		
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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

}
