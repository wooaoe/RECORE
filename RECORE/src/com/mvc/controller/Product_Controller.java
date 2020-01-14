package com.mvc.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;

import com.mvc.dao.MyPageDao;
import com.mvc.dao.MyPageDaoImp;
import com.mvc.dao.ProductDao;
import com.mvc.dao.ProductDaoImp;
import com.mvc.vo.Vo_Account;
import com.mvc.vo.Vo_Category_Detail;
import com.mvc.vo.Vo_Order;
import com.mvc.vo.Vo_Order_Num;
import com.mvc.vo.Vo_Order_Num2;
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
		MyPageDao mdao = new MyPageDaoImp();
		HttpSession session = request.getSession();
		Vo_Account acc = (Vo_Account) session.getAttribute("vo");

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

		} else if (command.equals("ChildSelectAll")) {

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
			System.out.println("toplist의 길이 : " + toplist.size());

			dispatch("./RECOREMain/RECOREProduct/Prod_SingleDetail.jsp", request, response);

		} else if (command.equals("Order")) {

			int pseq = Integer.parseInt(request.getParameter("pseq"));
			System.out.println("pseq : " + pseq);

			Vo_Product pvo = dao.P_selectOne(pseq);
			request.setAttribute("pvo", pvo);

			ArrayList<Vo_Prod_option> povo = dao.po_selectOne(pvo);
			request.setAttribute("povo", povo);
			System.out.println("povo prod_id : " + povo.get(0).getProd_id());

			dispatch("./RECOREMain/RECOREProduct/Prod_Checkout.jsp", request, response);

		} else if (command.equals("cartOrder")) {

			String tmp = request.getParameter("Arr_order");
			System.out.println("컨트롤러의  tmp : " + tmp);

			String[] arr_order = tmp.split(",");

			System.out.println("컨트롤러의 arr_order[0] : " + arr_order[0]);
			System.out.println("컨트롤러의 arr_order[1] : " + arr_order[1]);

			String tmp2[] = tmp.split(",");
			List id = new ArrayList<>();
			List amount = new ArrayList<>();

			int j = 0;

			for (int i = 0; i < tmp2.length; i++) {
				if (i == 0) {
					id.add(tmp2[i]);
				} else if (i % 2 == 0) {
					id.add(tmp2[i]);
				} else if (i % 2 == 1) {
					amount.add(tmp2[i]);
				}
			}

			for (int i = 0; i < id.size(); i++) {
				System.out.println("prod_id[" + i + "] : " + id.get(i));
			}
			for (int i = 0; i < amount.size(); i++) {
				System.out.println("prod_amount[" + i + "] : " + amount.get(i));
			}

			Map map = dao.option_selectAll(id);
			List polist = (List) map.get("polist");
			List plist = (List) map.get("plist");

			System.out.println("컨트롤러의 polist : " + polist.get(1));
			System.out.println("컨트롤러의 plist : " + plist.get(1));

			// 그냥 상품 전체 매개변수 없이
//			List<Vo_Product> prodlist = dao.P_selectAll();
//			System.out.println("컨트롤러의 prodlist : " + prodlist);
//			request.setAttribute("prodlist", prodlist);

			request.setAttribute("polist", polist);
			request.setAttribute("plist", plist);

			List price = new ArrayList();

			for (int i = 0; i < polist.size(); i++) {
				Vo_Product prod = (Vo_Product) plist.get(i);
				price.add(prod.getProd_price());
			}

			request.setAttribute("prod_id", id);
			System.out.println("컨트롤러의 prod_id 배열:" + id);
			request.setAttribute("arr_price", price);
			System.out.println("컨트롤러의 arr_price:" + price);
			request.setAttribute("prod_amount", amount);
			System.out.println("컨트롤러의 prod_amount: " + amount);

			dispatch("./RECOREMain/RECOREProduct/Prod_Checkout2.jsp", request, response);

			
		} else if (command.equals("cartkakaocall")) {

			List<Vo_Product> plist = dao.P_selectAll();
			System.out.println(plist);
			request.setAttribute("plist", plist);

			String total = request.getParameter("totalPrice");
			String prod_id = request.getParameter("prod_id");
			String amount = request.getParameter("amount");

			System.out.println("cartkakaocall의 total: " + total);
			System.out.println("cartkakaocall의 prod_id: " + prod_id);
			System.out.println("cartkakaocall의 amount: " + amount);

			request.setAttribute("totalPrice", total);
			request.setAttribute("prod_id", prod_id);
			request.setAttribute("amount", amount);
			
			String resinfo = request.getParameter("acc_addrs");
			System.out.println("kakaocall2의 acc_addrs : " + resinfo);

			String info2[] = resinfo.split(",");

			for (int i = 0; i < info2.length; i++) {
				System.out.println("info2[" + i + "]의 배열 값 : " + info2[i]);
			}
			request.setAttribute("acc_addrs", resinfo);
			

			dispatch("./RECOREMain/RECOREProduct/cartkakaopay.jsp", request, response);

		} else if (command.equals("cartkakaocall2")) {

			String amount = request.getParameter("amount");
			System.out.println("cartkakaocall2의 amount:" + amount);
			String totalPrice = request.getParameter("totalPrice");
			System.out.println("cartkakaocall2의 totalPrice:" + totalPrice);
			String prod_id = request.getParameter("prod_id");
			System.out.println("cartkakaocall2의 prod_id:" + prod_id);
			int point = Integer.parseInt(request.getParameter("acc_point"));
			System.out.println("cartkakaocall2의 point : " + point);

			String resinfo = request.getParameter("acc_addrs");
			System.out.println("cartkakaocall2의 acc_addrs : " + resinfo);

			String info2[] = resinfo.split(",");

			for (int i = 0; i < info2.length; i++) {
				System.out.println("info2[" + i + "]의 배열 값 : " + info2[i]);
			}
			
			request.setAttribute("acc_addrs", resinfo);
			
			int order_seq = dao.O_CurrVal();
			request.setAttribute("order_seq", order_seq);
			System.out.println("컨트롤러의 order_seq : " + order_seq);

			boolean onum = dao.O_insert(acc.getAcc_no(), info2, point);

			request.setAttribute("amount", amount);
			request.setAttribute("totalPrice", totalPrice);
			request.setAttribute("prod_id", prod_id);

			if (onum) {
				dispatch("./RECOREMain/RECOREProduct/cartkakaopay2.jsp", request, response);
			} else {
				jsResponse("결제 요청에 실패하였습니다!", "Product.do?command=ProdSelectAll&pageno=1", response);
			}

		}

		else if (command.equals("kakaopaycall")) {

			int pseq = Integer.parseInt(request.getParameter("pseq"));
			System.out.println("pseq : " + pseq);

			Vo_Product pvo = dao.P_selectOne(pseq);
			request.setAttribute("pvo", pvo);

			ArrayList<Vo_Prod_option> povo = dao.po_selectOne(pvo);
			request.setAttribute("povo", povo);
			System.out.println("povo prod_id : " + povo.get(0).getProd_id());
			
			String resinfo = request.getParameter("acc_addrs");
			System.out.println("kakaocall2의 acc_addrs : " + resinfo);

			String info2[] = resinfo.split(",");

			for (int i = 0; i < info2.length; i++) {
				System.out.println("info2[" + i + "]의 배열 값 : " + info2[i]);
			}
			request.setAttribute("acc_addrs", resinfo);

			
			dispatch("./RECOREMain/RECOREProduct/kakaopay.jsp", request, response);

		} else if (command.equals("kakaopaycall2")) {

			int pseq = Integer.parseInt(request.getParameter("pseq"));
			System.out.println("pseq : " + pseq);

			Vo_Product pvo = dao.P_selectOne(pseq);
			request.setAttribute("pvo", pvo);

			ArrayList<Vo_Prod_option> povo = dao.po_selectOne(pvo);
			request.setAttribute("povo", povo);

			String resinfo = request.getParameter("acc_addrs");
			System.out.println("kakaocall2의 acc_addrs : " + resinfo);

			String info2[] = resinfo.split(",");
			
			for (int i = 0; i < info2.length; i++) {
				System.out.println("info2[" + i + "]의 배열 값 : " + info2[i]);
			}
			
			int acc_point = Integer.parseInt(request.getParameter("acc_point"));
			System.out.println("kakaocall의 accpoint : " + acc_point);

			List<Vo_Order_Num> orderlist = dao.Order_selectAll();
			request.setAttribute("orderlist", orderlist);
			System.out.println("컨트롤러의 orderlist : " + orderlist);
			
			int order_seq = dao.O_CurrVal();
			request.setAttribute("order_seq", order_seq);
			System.out.println("컨트롤러의 order_seq : " + order_seq);

			
			boolean onum = dao.O_insert(acc.getAcc_no(), info2, acc_point);

			if (onum) {
				dispatch("./RECOREMain/RECOREProduct/kakaopay2.jsp", request, response);
			} else {
				jsResponse("결제 요청에 실패하였습니다!",
						"Product.do?command=ProdDetail&pseq=" + pseq + "&catdno=" + pvo.getProd_catd(), response);
			}

			
		} else if (command.equals("payComplete")) {

			int pseq = Integer.parseInt(request.getParameter("pseq"));
			System.out.println("pseq : " + pseq);

			Vo_Product pvo = dao.P_selectOne(pseq);
			request.setAttribute("pvo", pvo);

			int prod_id = Integer.parseInt(request.getParameter("prod_id"));
			System.out.println("컨트롤러 prod_id : " + prod_id);
			int amount = Integer.parseInt(request.getParameter("amount"));
			System.out.println("컨트롤러 prod_amount : " + amount);
			int total = Integer.parseInt(request.getParameter("totalPrice"));
			System.out.println("컨트롤러 prod_total : " + total);

			List<Vo_Order_Num> orderlist = dao.Order_selectAll();
			request.setAttribute("orderlist", orderlist);
			System.out.println("paycomplete의 orderlist olist 나오니??? : " + orderlist);
			System.out.println(orderlist.get(10).getOlist().get(10).getOrder_price());

			int order_seq = Integer.parseInt(request.getParameter("order_seq"));
			System.out.println("paycomplete 현재 order_seq: " + order_seq);

			boolean pnum = dao.POrder_insert(order_seq, prod_id, amount, total);

			Vo_Order_Num Ordernum_selone = dao.Order_selectOne(order_seq);
			request.setAttribute("Onum", Ordernum_selone);
			System.out.println("결제완료 command의 ordernum_selone의 값 olist 나오니??? : " + Ordernum_selone);

			Vo_Order prod_order = dao.ProdOrder_selectOne(order_seq);
			request.setAttribute("prod_order", prod_order);
			System.out.println("결제 완료 command의 prod_order 객체 : " + prod_order);

			Vo_Order_Num2 ordernum2 = dao.O_selectOne(order_seq);
			request.setAttribute("ordernum", ordernum2);
			System.out.println("결제완료 command의 ordernum2 selone의 값 : " + ordernum2);

			if (pnum) {
				dispatch("./RECOREMain/RECOREProduct/afterOrder_page.jsp", request, response);
			} else {
				jsResponse("결제 실패!", "Product.do?command=ProdDetail&pseq=" + pseq + "&catdno=" + pvo.getProd_catd(),
						response);
			}

		} else if (command.equals("cartPayDelete")) {

			int order_seq = Integer.parseInt(request.getParameter("order_seq"));
			System.out.println("컨트롤러의 order_seq : " + order_seq);

			Vo_Order_Num order_one = dao.Order_selectOne(order_seq);
			request.setAttribute("order_one", order_one);
			System.out.println("컨트롤러의 order_num : " + order_one);

			boolean ordernumdel = dao.Order_delete(order_seq);

			if (ordernumdel) {
				jsResponse("결제 취소", "Product.do?command=ProdSelectAll&pageno=1", response);
			} else {
				jsResponse("결제 요청 취소 실패!", "Product.do?command=ProdSelectAll&pageno=1", response);
			}

		}

		else if (command.equals("payDelete")) {

			int pseq = Integer.parseInt(request.getParameter("pseq"));
			System.out.println("pseq : " + pseq);

			int order_seq = Integer.parseInt(request.getParameter("order_seq"));
			System.out.println("컨트롤러의 order_seq : " + order_seq);

			Vo_Product pvo = dao.P_selectOne(pseq);
			request.setAttribute("pvo", pvo);

			Vo_Order_Num order_one = dao.Order_selectOne(order_seq);
			request.setAttribute("order_one", order_one);
			System.out.println("컨트롤러의 order_num : " + order_one);

			boolean ordernumdel = dao.Order_delete(order_seq);

			if (ordernumdel) {
				jsResponse("결제 취소", "Product.do?command=ProdSelectAll&pageno=1", response);
			} else {
				jsResponse("결제 요청 취소 실패!",
						"Product.do?command=ProdDetail&pseq=" + pseq + "&catdno=" + pvo.getProd_catd(), response);
			}

		} else if (command.equals("cartComplete")) {
			
			String amount = request.getParameter("amount");
			String totalPrice = request.getParameter("totalPrice");
			String prod_id = request.getParameter("prod_id");
			int order_seq = Integer.parseInt(request.getParameter("order_seq"));
			
			String[] tmp_amount = amount.split(",");
			String[] tmp_total = totalPrice.split(",");
			String[] tmp_prod_id = prod_id.split(",");
			System.out.println("cartcomplete의 tmpamount = " + tmp_amount[1]);
			System.out.println("cartcomplete의 tmp total = " + tmp_total[1]);
			System.out.println("cartcomplete의 tmp prod_id = " + tmp_prod_id[1]);
			System.out.println("cartcomplete의 order_seq: " + order_seq);
			
			boolean pnum = false;
			for(int i = 0; i < tmp_amount.length; i++) {
				
				pnum = dao.AllPOrder_insert(order_seq, tmp_prod_id[i], tmp_total[i], tmp_amount[i]);
			}
			
			Vo_Order_Num Ordernum_selone = dao.Order_selectOne(order_seq);
			request.setAttribute("Onum", Ordernum_selone);
			
			List<Vo_Order> prod_Order = Ordernum_selone.getOlist();
			request.setAttribute("olist", prod_Order);
			System.out.println("cartcomplete의 ordernum_selone의 값 olist 나오니??? : " + Ordernum_selone);
			System.out.println("cartcomplete의 prod_order의 값 olist 나오니??? : " + prod_Order);
			
			int prod_price = prod_Order.get(0).getOrder_price();
			System.out.println("cartcomplete의 order_price 확인 : " + prod_price);
			
			//결제완료 후 장바구니 삭제
			boolean tmp = mdao.My_deleteCart_All(acc.getAcc_no());			
			if (pnum) {
			 dispatch("./RECOREMain/RECOREProduct/afterOrder_cart.jsp", request, response);
			} else {
				jsResponse("결제 실패!", "Product.do?command=ProdSelectAll&pageno=1",	response);
			}
			
		
		}else if (command.equals("insertCart")) {

			int prod_id = Integer.parseInt(request.getParameter("prod_id"));
			int amount = Integer.parseInt(request.getParameter("prod_amount"));
			int pseq = Integer.parseInt(request.getParameter("pseq"));

			System.out.println("컨트롤러 pseq : " + pseq);

			Vo_Product pvo = dao.P_selectOne(pseq);
			request.setAttribute("pvo", pvo);
			
			boolean cart = dao.P_insertCart(acc.getAcc_no(), prod_id, amount);

			if (cart) {
				jsResponse("장바구니에 추가되었습니다.",
						"Product.do?command=ProdDetail&pseq=" + pvo.getProd_no() + "&catdno=" + pvo.getProd_catd(),
						response);
			} else {
				jsResponse("동일한 상품이 존재합니다.",
						"Product.do?command=ProdDetail&pseq=" + pvo.getProd_no() + "&catdno=" + pvo.getProd_catd(),
						response);
			}

		} else if (command.equals("insertWish")) {

			int pseq = Integer.parseInt(request.getParameter("pseq"));
			System.out.println("pseq : " + pseq);

			Vo_Product pvo = dao.P_selectOne(pseq);
			request.setAttribute("pvo", pvo);

			boolean wish = dao.P_insertWish(acc.getAcc_no(), pvo.getProd_no());

			if (wish) {
				jsResponse("관심상품에 추가되었습니다.",
						"Product.do?command=ProdDetail&pseq=" + pvo.getProd_no() + "&catdno=" + pvo.getProd_catd(),
						response);
			} else {
				jsResponse("동일한 상품이 존재합니다.",
						"Product.do?command=ProdDetail&pseq=" + pvo.getProd_no() + "&catdno=" + pvo.getProd_catd(),
						response);
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

			
		} else if(command.equals("selsize")) {
			
			System.out.println("selsize 커맨드 실행");
			
			int pseq = Integer.parseInt(request.getParameter("pseq"));
			System.out.println("pseq : " + pseq);
			
			String selcolor = request.getParameter("selcolor");
			
			System.out.println("선택한 컬러 : "+ selcolor);
			
			Vo_Product pvo = dao.P_selectOne(pseq);
			List<Vo_Prod_option> polist = dao.po_selectOne(pvo);
			
			List<String> sizelist = new ArrayList<String>();
			
			for(Vo_Prod_option po : polist) {
				if(po.getProd_color().equals(selcolor)) {
					sizelist.add(po.getProd_size());
				}
			}
			
			int sizecount = sizelist.size();

			JSONObject obj = new JSONObject();
			System.out.println("선택한 컬러의 size 리스트 = "+sizelist);
			
			obj.put("sizecount", sizecount);		
			obj.put("ressize", sizelist);
			
			PrintWriter out = response.getWriter();
			out.println(obj.toJSONString());
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
