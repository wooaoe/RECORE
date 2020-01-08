package com.mvc.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
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
import com.mvc.dao.MyPageDao;
import com.mvc.dao.MyPageDaoImp;
import com.mvc.dao.OrderDao;
import com.mvc.dao.OrderDaoImp;
import com.mvc.dao.ProductDao;
import com.mvc.dao.ProductDaoImp;
import com.mvc.vo.Vo_Account;
import com.mvc.vo.Vo_Category_Detail;
import com.mvc.vo.Vo_Prod_option;
import com.mvc.vo.Vo_Product;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

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
		MyPageDao my = new MyPageDaoImp();
		AccountDaoImp account = new AccountDaoImp();

		Vo_Account acc = account.A_selectAccount("user1", "user1");
		HttpSession session = request.getSession();
		session.setAttribute("acc", acc);

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

			List<Vo_Category_Detail> cdlist = dao.CD_selectAll(catdid);
			request.setAttribute("cdlist", cdlist);

			// 페이지 하나에서 시퀀스 넘버로 구분
			dispatch("./RECOREMain/RECOREProduct/Parent.jsp", request, response);

		} else if (command.equals("ProdPrepage")) {

			dispatch("./RECOREMain/RECOREProduct/Prod_SingleDetail.jsp", request, response);

		} else if (command.equals("ProdNextpage")) {

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

			dispatch("./RECOREMain/RECOREProduct/Prod_Checkout.jsp", request, response);

		} else if (command.equals("Checkout")) {

			int pseq = Integer.parseInt(request.getParameter("pseq"));
			System.out.println("pseq : " + pseq);

			Vo_Product pvo = dao.P_selectOne(pseq);
			request.setAttribute("pvo", pvo);

			dispatch("./RECOREMain/RECOREProduct/Payment_page.jsp", request, response);

		} else if (command.equals("complete")) {

//			int pseq = Integer.parseInt(request.getParameter("pseq"));
//			System.out.println("pseq : " + pseq);
//
//			Vo_Product pvo = dao.P_selectOne(pseq);
//			request.setAttribute("pvo", pvo);

			dispatch("./RECOREMain/RECOREProduct/afterOrder_page.jsp", request, response);

		} else if (command.equals("insertCart")) {


			int prod_id = Integer.parseInt(request.getParameter("prod_id"));
			int amount = Integer.parseInt(request.getParameter("prod_amount"));

			boolean cart = dao.P_insertCart(acc.getAcc_no(), prod_id, amount);

			if (cart) {
				dispatch("./RECOREMain/RECOREPMypage/Mypage_Cart.jsp", request, response);
			} else {
				dispatch("./RECOREMain/RECOREProduct/Prod_SingleDetail.jsp", request, response);
			}

		} else if (command.equals("insertpage")) { // 상품등록페이지로 이동 from 김성일

			response.sendRedirect("./RECOREMain/RECOREProduct/Prod_insertpage.jsp");

		} else if (command.equals("insertproduct")) { // 상품등록 from 김성일

			// 임시 이미지 저장 경로 지정
			String savepath = request.getServletContext().getRealPath("RECOREMain\\RECOREProduct\\product");
			System.out.println(savepath);
			// 파일 최대크기 지정
			int size = 1024 * 1024 * 10;
			// 파일을 가져와서 해당 경로에 저장
			MultipartRequest mul = new MultipartRequest(request, savepath, size, "UTF-8",
					new DefaultFileRenamePolicy());

			// getparameter 로 가져온 값을 변수에 저장
			int prod_catd = Integer.parseInt(mul.getParameter("prod_catd"));
			String prod_name = mul.getParameter("prod_name");
			String prod_brand = mul.getParameter("prod_brand");
			int prod_price = Integer.parseInt(mul.getParameter("prod_price"));
			int prod_con_count = 1;
			String prod_dc_yn = mul.getParameter("prod_dc_yn");
			double prod_dc = Double.parseDouble(mul.getParameter("prod_dc"));
			String prod_note = mul.getParameter("prod_note");

			// Vo_Product 객체 생성 후 set
			Vo_Product vo = new Vo_Product();
			vo.setProd_catd(prod_catd);
			vo.setProd_name(prod_name);
			vo.setProd_brand(prod_brand);
			vo.setProd_price(prod_price);
			vo.setProd_con_count(prod_con_count);
			vo.setProd_dc_yn(prod_dc_yn);
			vo.setProd_dc(prod_dc);
			vo.setProd_note(prod_note);

			System.out.println(vo);

			boolean pres = dao.P_insert(vo); // insert 한다.

			int p_seq = dao.P_getSeqCurrval(); // 방금 insert한 row의 prod_no 를 가져온다.

			Vo_Product pvo = dao.P_selectOne(p_seq); // 가져온 번호로 select 해온다.
			System.out.println(pvo);

			String newpath = request.getServletContext()
					.getRealPath("RECOREMain\\RECOREProduct\\product\\" + pvo.getProd_no());
			System.out.println("newpath : " + newpath);
			File folder = new File(newpath);

			if (!folder.exists()) {
				try {
					folder.mkdir(); // 폴더 생성합니다.
					System.out.println("폴더가 생성되었습니다.");
				} catch (Exception e) {
					e.getStackTrace();
				}
			} else {
				System.out.println("이미 폴더가 생성되어 있습니다.");
			}

			String prod_front_img = mul.getFilesystemName("prod_front_img");
			String prod_th_img = mul.getFilesystemName("prod_th_img");
			String prod_content = mul.getFilesystemName("prod_content");

			File prod_front_img_file = new File(savepath + "\\" + prod_front_img); // 현재 대표이미지 파일
			File prod_th_img_file = new File(savepath + "\\" + prod_th_img); // 현재 썸네일이미지 파일
			File prod_content_file = new File(savepath + "\\" + prod_content); // 현재 내용이미지 파일

			System.out.println(prod_front_img_file);
			System.out.println(prod_th_img_file);
			System.out.println(prod_content_file);

			File prod_front_img_newfile = new File(newpath + "\\" + "f_img.png");
			File prod_th_img_file_newfile = new File(newpath + "\\" + "th_img.png");
			File prod_content_newfile = new File(newpath + "\\" + "con_img1.png");

			// 파일경로 변경,파일이름 복사,임시저장한 파일 삭제
			if (prod_front_img_file.exists()) {

				prod_front_img_file.renameTo(prod_front_img_newfile);
				System.out.println("경로변경 및 파일 복사 성공");
				prod_front_img_file.delete();
				System.out.println("삭제 성공");

			}

			if (prod_th_img_file.exists()) {

				prod_th_img_file.renameTo(prod_th_img_file_newfile);
				System.out.println("경로변경 및 파일 복사 성공");
				prod_th_img_file.delete();
				System.out.println("삭제 성공");

			}

			if (prod_content_file.exists()) {

				prod_content_file.renameTo(prod_content_newfile);
				System.out.println("경로변경 및 파일 복사 성공");
				prod_content_file.delete();
				System.out.println("삭제 성공");

			}

			if (!pres) {

				jsResponse("상품등록에 실패 하였습니다.", "Product.do?command=ProdSelectAll&pageno=1", response);

			}

			// 옵션 갯수를 가져옴
			int opcount = Integer.parseInt(mul.getParameter("opcount"));

			// prod_option 객체를 담을 리스트 생성
			List<Vo_Prod_option> plist = new ArrayList<Vo_Prod_option>();
			System.out.println(mul.getParameter("prod_color" + 1));
			System.out.println(mul.getParameter("prod_size" + 1));
			System.out.println(mul.getParameter("prod_stock" + 1));

			for (int i = 1; i <= opcount; i++) {
				String prod_color = mul.getParameter("prod_color" + i);
				String prod_size = mul.getParameter("prod_size" + i);
				int prod_stock = Integer.parseInt(mul.getParameter("prod_stock" + i));

				Vo_Prod_option tmp = new Vo_Prod_option();

				tmp.setProd_color(prod_color);
				tmp.setProd_size(prod_size);
				tmp.setProd_stock(prod_stock);

				plist.add(tmp);

			}

			for (int i = 0; i < plist.size(); i++) {

				dao.POinsert(pvo.getProd_no(), plist.get(i));

			}

			jsResponse("상품등록에 성공 하였습니다.", "Product.do?command=ProdSelectAll&pageno=1", response);

		} else if (command.equals("cartOrder")) { // 전체상품 주문시

			String tmp = request.getParameter("Arr_order");
			System.out.println("컨트롤러의  tmp : " + tmp);

			String[] arr_order = tmp.split(",");
			System.out.println("컨트롤러의 arr_order[0] : " + arr_order[0]);
			System.out.println("컨트롤러의 arr_order[1] : " + arr_order[1]);
			
			String tmp2[] = tmp.split(",");
			String prod_id[] = new String[tmp2.length/2];
			String prod_amount[] = new String[tmp2.length/2];

			int j=0;
		      for(int i=0;i<prod_id.length;i++) {
		            if(j==0) {
		               prod_id[i] = tmp2[j];
		            }
		            if(j%2==0){
		               prod_id[i] = tmp2[j];
		            }
		            j+=2;
		      }
		      
		      int k=1;
		      for(int i=0;i<prod_amount.length;i++) {
		         if(k%2==1) {
		            prod_amount[i]=tmp2[k];
		         }
		         k+=2;
		      }
			
		      for(int i=0;i<prod_id.length;i++) {
		          System.out.println("prod_id["+i+"] : " + prod_id[i]);
		       }
		       for(int i=0;i<prod_amount.length;i++) {
		          System.out.println("prod_amount["+i+"] : " + prod_amount[i]);
		       }  


			
		}
	}

	private void jsResponse(String msg, String url, HttpServletResponse response) throws IOException {

		String s = "<script type='text/javascript'>" + "alert('" + msg + "');" + "location.href='" + url + "';"
				+ "</script>";

		PrintWriter out = response.getWriter();
		out.print(s);
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
