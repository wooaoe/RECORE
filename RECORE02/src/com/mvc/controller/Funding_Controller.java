package com.mvc.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.dao.FundingDao;
import com.mvc.dao.FundingDaoImpl;
import com.mvc.vo.Vo_Funding;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import java.util.Enumeration;
import java.util.List;


@WebServlet("/funding.do")
public class Funding_Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	

    public Funding_Controller() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		FundingDaoImpl dao = new FundingDaoImpl();
		
		String command = request.getParameter("command");
		
		if(command.equals("selectAllFunding")) {
			try {
			
				int page = Integer.parseInt(request.getParameter("pageno"));	//몇번째 페이지인지 나타내줌
				System.out.println(page);
				request.setAttribute("page", page);
			
			}catch (NumberFormatException e) {
				// TODO: handle exception
			}
			
			List<Vo_Funding> list = dao.F_selectAll();
			
			
			System.out.println(list.get(2));
			
			request.setAttribute("funding_list", list);
			
			dispatch("./RECOREMain/RECOREFunding/funding.jsp", request, response);
			
			
		}else if(command.equals("selectOneFunding")) {
			
			int fund_no = Integer.parseInt(request.getParameter("fund_no"));
			int page = Integer.parseInt(request.getParameter("pageno"));
			Vo_Funding vo = dao.F_selectOne(fund_no); 
			
			System.out.println(vo);
			
			request.setAttribute("funding_vo", vo);
			request.setAttribute("page", page);
			
			dispatch("./RECOREMain/RECOREFunding/funding_detail.jsp", request, response);
			
			
		}else if(command.equals("fundingPrepage")) {
						
			int nnum = Integer.parseInt(request.getParameter("fund_no"));
			List<Vo_Funding> list = dao.F_selectAll();
			Vo_Funding vo = dao.F_selectOne(nnum+1);
			int page = 1;
			
			for(int i=0; i<list.size();i++) {
				
				if(i!=0 && list.get(i).getFund_no() == vo.getFund_no()) {
					page = (i/8)+1;
				}
				
			}
			
			request.setAttribute("Funding_vo", vo);
			request.setAttribute("page", page);

			dispatch("./RECOREMain/RECOREFunding/funding_detail.jsp", request, response);

			
		}else if(command.equals("fundingNextpage")) {
			
			int nnum = Integer.parseInt(request.getParameter("fund_no"));
			List<Vo_Funding> list = dao.F_selectAll();
			Vo_Funding vo = dao.F_selectOne(nnum-1);
			int page = 1;
			
			for(int i=0; i<list.size();i++) {
				
				if(i!=0 && list.get(i).getFund_no() == vo.getFund_no()) {
					page = (i/8)+1;
				}
				
			}
			
			request.setAttribute("funding_vo", vo);
			request.setAttribute("page", page);

			dispatch("./RECOREMain/RECOREFunding/funding_detail.jsp", request, response);
			
		
		}else if(command.equals("createfundingpage")) {
			//int fund_catd_no = Integer.parseInt(request.getParameter("fund_catd_no"));
			//request.setAttribute("fund_catd_no", fund_catd_no);//
			
			dispatch("./RECOREMain/RECOREFunding/funding_createpage.jsp", request, response);
		
		}else if(command.equals("insertFunding")) {
			
			String savepath = request.getServletContext().getRealPath("RECOREMain\\RECOREFunding\\images");

			int size = 1024*1024*10;
			
			MultipartRequest mul = new MultipartRequest(request, savepath, size,"UTF-8", new DefaultFileRenamePolicy());
			
			
			String fund_title = mul.getParameter("fund_title");
			String fund_creator = mul.getParameter("fund_creator");
			int fund_target_price = Integer.parseInt(mul.getParameter("fund_target_price"));
			String fund_deadline= mul.getParameter("fund_deadline");
			
			java.sql.Date fund_deadline2 = java.sql.Date.valueOf(fund_deadline);
			
			
			
			Vo_Funding vo = new Vo_Funding();
			
			vo.setFund_title(fund_title);
			vo.setFund_creator(fund_creator);
			vo.setFund_target_price(fund_target_price);
			vo.setFund_deadline(fund_deadline2);
			
			vo.setFund_con_count(1);
			
			
			
			boolean res = dao.F_insert(vo);
			
			int f_seq = dao.F_getSeqCurrval();
			
			Vo_Funding reg = dao.F_selectOne(f_seq);
			
			System.out.println(reg);
			
			String newpath = request.getServletContext().getRealPath("RECOREMain\\RECOREFunding\\images\\"+reg.getFund_no());
			System.out.println("newpath : "+newpath);
			File folder = new File(newpath);

			if (!folder.exists()) {
				try{
				    folder.mkdir(); //폴더 생성합니다.
				    System.out.println("폴더가 생성되었습니다.");
			        } 
			        catch(Exception e){
				    e.getStackTrace();
				}        
		         }else {
				System.out.println("이미 폴더가 생성되어 있습니다.");
			}
			
	

			String fund_front_img = mul.getFilesystemName("fund_front_img");
			
			String fund_content = mul.getFilesystemName("fund_content");
			
			File fund_front_img_file = new File(savepath+"\\"+fund_front_img); // 현재 대표이미지 파일
			// 현재 썸네일이미지 파일
			File fund_content_file = new File(savepath+"\\"+fund_content);	// 현재 내용이미지 파일
			
			File fund_front_img_newfile = new File(newpath+"\\"+"f_img.png");
			
			File fund_content_img_newfile = new File(newpath+"\\"+"con_img.png");

			
			//파일경로 변경,파일이름 복사
			if(fund_front_img_file.exists()) {
				fund_front_img_file.renameTo(fund_front_img_newfile);
				fund_front_img_file.delete();
			}
			
		
			
			if(fund_content_file.exists()) {
				fund_content_file.renameTo(fund_content_img_newfile);
				fund_content_file.delete();
			}
			
			jsResponse("펀딩을 생성하였습니다.", "funding.do?command=selectAllFunding&pageno=1", response);
            
			
			//response.sendRedirect("./RECOREMain/index.jsp");
			
		}else if(command.equals("deleteFunding")) {
			
			int pageno = Integer.parseInt(request.getParameter("pageno"));
			int fseq = Integer.parseInt(request.getParameter("fund_no"));
			
			boolean res = dao.F_delete(fseq);
			
			if(res) {
				
				jsResponse("삭제에 성공하였습니다.", "funding.do?command=selectAllFunding&pageno=1", response);
				
			}else {
				
				jsResponse("삭제에 실패하였습니다.", "funding.do?command=selectOneFunding&fund_no="+fseq+"&pageno="+pageno, response);

			}
			
			
			
			
			
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
	
	
	private void jsResponse(String msg, String url, HttpServletResponse response) throws IOException {

		String s = "<script type='text/javascript'> alert('"+msg+"'); location.href='"+url+"'; </script>";
		
		PrintWriter out = response.getWriter();
		out.print(s);
		
	}
	

}

