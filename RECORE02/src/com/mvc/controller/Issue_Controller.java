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
		IssueDaoImpl dao = new IssueDaoImpl();
		
		String command = request.getParameter("command");
		
		if(command.equals("selectAllNews")) {
			try {
			
				int page = Integer.parseInt(request.getParameter("pageno"));	//몇번째 페이지인지 나타내줌
				System.out.println(page);
				request.setAttribute("page", page);
			
			}catch (NumberFormatException e) {
				// TODO: handle exception
			}
			
			List<Vo_Issue> list = dao.I_selectAll();
			
			
			System.out.println(list.get(2));
			
			request.setAttribute("issue_list", list);
			
			dispatch("./RECOREMain/RECOREIssue/news.jsp", request, response);
			
			
		}else if(command.equals("selectOneNews")) {
			
			int iss_no = Integer.parseInt(request.getParameter("iss_no"));
			int page = Integer.parseInt(request.getParameter("pageno"));
			Vo_Issue vo = dao.I_selectOne(iss_no); 
			
			System.out.println(vo);
			
			request.setAttribute("issue_vo", vo);
			request.setAttribute("page", page);
			
			dispatch("./RECOREMain/RECOREIssue/news_detail.jsp", request, response);
			
			
		}else if(command.equals("newsPrepage")) {
						
			int nnum = Integer.parseInt(request.getParameter("iss_no"));
			List<Vo_Issue> list = dao.I_selectAll();
			Vo_Issue vo = dao.I_selectOne(nnum+1);
			int page = 1;
			
			for(int i=0; i<list.size();i++) {
				
				if(i!=0 && list.get(i).getIss_no() == vo.getIss_no()) {
					page = (i/8)+1;
				}
				
			}
			
			request.setAttribute("issue_vo", vo);
			request.setAttribute("page", page);

			dispatch("./RECOREMain/RECOREIssue/news_detail.jsp", request, response);

			
		}else if(command.equals("newsNextpage")) {
			
			int nnum = Integer.parseInt(request.getParameter("iss_no"));
			List<Vo_Issue> list = dao.I_selectAll();
			Vo_Issue vo = dao.I_selectOne(nnum-1);
			int page = 1;
			
			for(int i=0; i<list.size();i++) {
				
				if(i!=0 && list.get(i).getIss_no() == vo.getIss_no()) {
					page = (i/8)+1;
				}
				
			}
			
			request.setAttribute("issue_vo", vo);
			request.setAttribute("page", page);

			dispatch("./RECOREMain/RECOREIssue/news_detail.jsp", request, response);
			
		}else if(command.equals("selectAllExhibition")) {
			
			int page = Integer.parseInt(request.getParameter("pageno"));
			
			List<Vo_Issue> list = dao.I_selectAllExhibition();

			request.setAttribute("issue_list", list);
			request.setAttribute("page", page);
			
			dispatch("./RECOREMain/RECOREIssue/exhibition.jsp", request, response);

		}else if(command.equals("selectOneExhibition")) {
			
			int iss_no = Integer.parseInt(request.getParameter("iss_no"));
			int page = Integer.parseInt(request.getParameter("pageno"));
			
			Vo_Issue vo = dao.I_selectOne(iss_no); 
			
			System.out.println(vo);
			
			request.setAttribute("issue_vo", vo);
			request.setAttribute("page", page);
			
			dispatch("./RECOREMain/RECOREIssue/exhibition_detail.jsp", request, response);
			
		}else if(command.equals("exhibitionPrepage")) {
			
			int nnum = Integer.parseInt(request.getParameter("iss_no"));
			List<Vo_Issue> list = dao.I_selectAll();
			Vo_Issue vo = dao.I_selectOne(nnum+1);
			int page = 1;
			
			for(int i=0; i<list.size();i++) {
				
				if(i!=0 && list.get(i).getIss_no() == vo.getIss_no()) {
					page = (i/6)+1;
				}
				
			}
			
			request.setAttribute("issue_vo", vo);
			request.setAttribute("page", page);

			dispatch("./RECOREMain/RECOREIssue/exhibition_detail.jsp", request, response);
			
		}else if(command.equals("exhibitionNextpage")) {
			
			int nnum = Integer.parseInt(request.getParameter("iss_no"));
			List<Vo_Issue> list = dao.I_selectAll();
			Vo_Issue vo = dao.I_selectOne(nnum-1);
			int page = 1;
			
			for(int i=0; i<list.size();i++) {
				
				if(i!=0 && list.get(i).getIss_no() == vo.getIss_no()) {
					page = (i/6)+1;
				}
				
			}
			
			request.setAttribute("issue_vo", vo);
			request.setAttribute("page", page);

			dispatch("./RECOREMain/RECOREIssue/exhibition_detail.jsp", request, response);
			
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
