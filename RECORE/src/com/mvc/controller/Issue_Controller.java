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

import com.mvc.dao.FundingDaoImpl;
import com.mvc.dao.IssueDao;
import com.mvc.dao.IssueDaoImpl;
import com.mvc.vo.Vo_Funding;
import com.mvc.vo.Vo_Issue;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import java.util.Enumeration;
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
      FundingDaoImpl fdao = new FundingDaoImpl();
      
      String command = request.getParameter("command");
      
      if(command.equals("main")) {
    	  
    	  List<Vo_Issue> nlist = dao.I_selectAll();
    	  List<Vo_Issue> elist = dao.I_selectAllExhibition();
    	  List<Vo_Funding> flist = fdao.F_selectAll();
    	  
    	  request.setAttribute("nlist", nlist);
    	  request.setAttribute("elist", elist);
    	  request.setAttribute("flist", flist);
    	  
          dispatch("./RECOREMain/index.jsp", request, response);
    	  
    	  
    	  
      }else if(command.equals("selectAllNews")) {
    	  
         try {
         
            int page = Integer.parseInt(request.getParameter("pageno"));   //몇번째 페이지인지 나타내줌
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
         
      }else if(command.equals("insertpage")) {
         int iss_catd_no = Integer.parseInt(request.getParameter("iss_catd_no"));
         request.setAttribute("iss_catd_no", iss_catd_no);
         
         dispatch("./RECOREMain/RECOREIssue/insertpage.jsp", request, response);
      
      }else if(command.equals("insertIssue")) {
         
         String savepath = request.getServletContext().getRealPath("RECOREMain\\RECOREIssue\\images");

         int size = 1024*1024*10;
         
         MultipartRequest mul = new MultipartRequest(request, savepath, size,"UTF-8", new DefaultFileRenamePolicy());
         
         
         String iss_title = mul.getParameter("iss_title");
         String iss_writer = mul.getParameter("iss_writer");
         String iss_source = mul.getParameter("iss_source");
         String iss_note = mul.getParameter("iss_note");
         int iss_catd_no =Integer.parseInt(mul.getParameter("iss_catd_no"));
         
         Vo_Issue vo = new Vo_Issue();
         vo.setIss_catd_no(iss_catd_no);
         vo.setIss_title(iss_title);
         vo.setIss_writer(iss_writer);
         vo.setIss_con_count(1);
         vo.setIss_source(iss_source);
         vo.setIss_note(iss_note);
         
         boolean res = dao.I_insert(vo);
         
         int i_seq = dao.I_getSeqCurrval();
         
         Vo_Issue ivo = dao.I_selectOne(i_seq);
         
         System.out.println(ivo);
         
         String newpath = request.getServletContext().getRealPath("RECOREMain\\RECOREIssue\\images\\"+ivo.getIss_no());
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
         
   

         String iss_front_img = mul.getFilesystemName("iss_front_img");
         String iss_th_img = mul.getFilesystemName("iss_th_img");
         String iss_content = mul.getFilesystemName("iss_content");
         
         File iss_front_img_file = new File(savepath+"\\"+iss_front_img); // 현재 대표이미지 파일
         File iss_th_img_file = new File(savepath+"\\"+iss_th_img); // 현재 썸네일이미지 파일
         File iss_content_file = new File(savepath+"\\"+iss_content);   // 현재 내용이미지 파일
         
         File iss_front_img_newfile = new File(newpath+"\\"+"f_img.png");
         File iss_th_img_file_newfile = new File(newpath+"\\"+"th_img.png");
         File iss_content_img_newfile = new File(newpath+"\\"+"con_img1.png");

         
         //파일경로 변경,파일이름 복사
         if(iss_front_img_file.exists()) {
            iss_front_img_file.renameTo(iss_front_img_newfile);
            iss_front_img_file.delete();
         }
         
         if(iss_th_img_file.exists()) {
            iss_th_img_file.renameTo(iss_th_img_file_newfile);
            iss_th_img_file.delete();
         }
         
         if(iss_content_file.exists()) {
            iss_content_file.renameTo(iss_content_img_newfile);
            iss_content_file.delete();
         }
         
         if(iss_catd_no == 4) {
            
            jsResponse("뉴스를 작성하였습니다.", "issue.do?command=selectAllNews&pageno=1", response);
            
         }else if(iss_catd_no == 5) {
            
            jsResponse("기획전을 작성하였습니다.", "issue.do?command=selectAllExhibition&pageno=1", response);
            
         }

         
      }else if(command.equals("deleteIssue")) {
         
         int pageno = Integer.parseInt(request.getParameter("pageno"));
         int iseq = Integer.parseInt(request.getParameter("iss_no"));
         int catd_no = Integer.parseInt(request.getParameter("catd_no"));
         
         boolean res = dao.I_delete(iseq);
         
         if(catd_no == 4) {
            if(res) {
               
               jsResponse("삭제에 성공하였습니다.", "issue.do?command=selectAllNews&pageno=1", response);
               
            }else {
               
               jsResponse("삭제에 실패하였습니다.", "issue.do?command=selectOneNews&iss_no="+iseq+"&pageno="+pageno, response);
   
            }
         }else if(catd_no == 5) {
            
            if(res) {
               
               jsResponse("삭제에 성공하였습니다.", "issue.do?command=selectAllExhibition&pageno=1", response);
               
            }else {
               
               jsResponse("삭제에 실패하였습니다.", "issue.do?command=selectOneExhibition&iss_no="+iseq+"&pageno="+pageno, response);
   
            }
            
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