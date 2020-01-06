<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8");%>
<%@ page import="com.mvc.vo.Vo_Order_Num" %>
<%@ page import="com.mvc.vo.Vo_Order" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>Recore: mypage_main</title>

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/RECOREMain/RECOREMypage/cssMy/Mypage_Main_CSS.css"/>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito+Sans:200,300,400,700,900"> 
    <link rel="stylesheet" href="<%=request.getContextPath()%>/RECOREMain/RECOREMypage/fonts/icomoon/style.css">

    <link rel="stylesheet" href="<%=request.getContextPath()%>/RECOREMain/RECOREMypage/cssMain/magnific-popup.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/RECOREMain/RECOREMypage/cssMain/jquery-ui.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/RECOREMain/RECOREMypage/cssMain/owl.carousel.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/RECOREMain/RECOREMypage/cssMain/owl.theme.default.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/RECOREMain/RECOREMypage/cssMain/bootstrap-datepicker.css">
    
    
    <link rel="stylesheet" href="<%=request.getContextPath()%>/RECOREMain/RECOREMypage/fonts/flaticon/font/flaticon.css">
  
    <link rel="stylesheet" href="<%=request.getContextPath()%>/RECOREMain/RECOREMypage/cssMain/aos.css">

    <link rel="stylesheet" href="<%=request.getContextPath()%>/RECOREMain/RECOREMypage/cssMain/styleMy.css">

<style type="text/css">
  
  .testpadding{
  	padding: 40px;
  }
  
  .navtest{
  	text-align:center;
  	padding: 10px;
  }
  
  .footertest{
  	background-color: #333333;
  	text-align: center;
  	padding: 0.5em 0;
  }
  
  #productInfo{
  	text-align: center;
  	color: black;
  }
  
  #logResMy{
  	margin-left: 300px;
  	position: relative;
  	top: 50%;
  }
  .xans-myshop-orderstate .cs {
  	padding: 12px;
  }
  
  a {
  color: black;
  text-decoration: none;
  background-color: transparent;
  -webkit-text-decoration-skip: objects; 
  }
  
  a:hover {
    color: #A0D9D9;
    text-decoration: underline; 
    }
  
  
  </style>
</head>

<body id="main"> 
<%
	List list_order = (List)request.getAttribute("list_order");
	int count1 = 0;
	int count2 = 0;
	int count3 = 0;
	int count4 = 0;
	for(int i=0;i<list_order.size();i++){
		Vo_Order_Num vo = (Vo_Order_Num)list_order.get(i);
		Vo_Order tmp = vo.getOlist().get(i);
		if(tmp.getOrder_status().equals("입금완료")){
			count1++;
		}else if(tmp.getOrder_status().equals("배송준비중")){
			count2++;
		}else if(tmp.getOrder_status().equals("배송중")){
			count3++;
		}else if(tmp.getOrder_status().equals("배송완료")){
			count4++;
		}
		
	}
%>
	<!-- header -->
	<%@ include file="/header.jsp" %>
	
	
	
	<div id="wrap">
    	<div id="container">
       		 <div id="content" style="margin-top: 210px;">

				<div class="titleArea">
				    <h2>마이 쇼핑</h2>
				</div>

				<div class="xans-element- xans-myshop xans-myshop-orderstate ">
				
					<div class="title">
						<h3>나의 주문처리 현황 <span class="desc">(최근 <em>3개월</em> 기준)</span></h3>
	  				</div>
	  				
					<div class="state">
						<ul class="order">
							<li class="testwRap1" style="background: rgb(249, 249, 249);">
	               				<strong style="color: rgb(53, 53, 53);">입금완료</strong>
	               				<a href="입금전링크@@@" class="count testCount1" style="color: rgb(0, 0, 0);">
	                				<span id="xans_myshop_orderstate_shppied_before_count"><%=count1%></span>
	               				</a>
	           				</li>
	           				<li class="testwRap2" style="background: rgb(249, 249, 249);">
	                			<strong style="color: rgb(53, 53, 53);">배송준비중</strong>
	                			<a href="배송준비중 링크@@" class="count testCount2" style="color: rgb(0, 0, 0);">
	                				<span id="xans_myshop_orderstate_shppied_standby_count"><%=count2%></span>
	                			</a>
	          				</li>
	           				<li class="testwRap3" style="background: rgb(249, 249, 249);">
	                			<strong style="color: rgb(53, 53, 53);">배송중</strong>
	                			<a href="배송중 링크@@@" class="count testCount3" style="color: rgb(0, 0, 0);">
	                				<span id="xans_myshop_orderstate_shppied_begin_count"><%=count3%></span>
	                			</a>
	            			</li>
	            			<li class="testwRap4" style="background: rgb(249, 249, 249);">
	                			<strong style="color: rgb(53, 53, 53);">배송완료</strong>
	               				<a href="배송완료@@@" class="count testCount4" style="color: rgb(0, 0, 0);">
	               					<span id="xans_myshop_orderstate_shppied_complate_count"><%=count4%></span>
	               				</a>
	           				</li>
	        			</ul>
						<ul class="cs">
							<li>
	                			<span class="icoDot"></span>
	                			<strong>취소 : </strong>
	                			<a href="취소연결@@@" class="count">
	                				<span id="xans_myshop_orderstate_order_cancel_count">0</span>
	                			</a>
	            			</li>
	           				<li>
	                			<span class="icoDot"></span>
	              				<strong>교환 : </strong>
	                			<a href="교환 연결@@@" class="count">
	                				<span id="xans_myshop_orderstate_order_exchange_count">0</span>
	                			</a>
	            			</li>
	           				<li>
	             			   <span class="icoDot"></span>
	             			   <strong>반품 : </strong>
	           				   <a href="반품연결@@@" class="count">
	           				 	  <span id="xans_myshop_orderstate_order_return_count">0</span>
	           				   </a>
	           				</li>
	        			</ul>
					</div>
				</div>

				<div id="myshopMain" class="xans-element- xans-myshop xans-myshop-main">
					<ul>
						<li class="shopMain order">
		           			<h3><a href="<%=request.getContextPath()%>/mypage.do?command=orderlist"><strong>Order</strong><br><span>주문내역 조회</span></a></h3>
		           			<p><a href="<%=request.getContextPath()%>/mypage.do?command=orderlist">고객님께서 주문하신 상품의<br> 주문내역을 확인하실 수 있습니다.</a></p>
		        		</li>
		        		<li class="shopMain profile">
		            		<h3><a href="회원정보 링크@@@"><strong>Profile</strong><br><span>회원 정보</span></a></h3>
		            		<p><a href="회원정보 링크@@@">회원이신 고객님의 개인정보를<br> 관리하는 공간입니다.</a></p>
		        		</li>
		        		<li class="shopMain board">
		           			<h3><a href="<%=request.getContextPath()%>/mypage.do?command=fundinglist"><strong>Funding</strong><br><span>펀딩내역 조회</span></a></h3>
		            		<p><a href="<%=request.getContextPath()%>/mypage.do?command=fundinglist">고객님께서 후원하신 펀딩의<br> 펀딩내역을 확인하실 수 있습니다.</a></p>
		        		</li>
		       			<li class="shopMain wishlist">
		            		<h3><a href="<%=request.getContextPath()%>/mypage.do?command=wishlist"><strong>Wishlist</strong><br><span>관심 상품</span></a></h3>
		            		<p><a href="<%=request.getContextPath()%>/mypage.do?command=wishlist">관심상품으로 등록하신<br> 상품의 목록을 보여드립니다.</a></p>
		        		</li>
		        		<li class="shopMain coupon ">
		            		<h3><a href="<%=request.getContextPath()%>/mypage.do?command=mileage"><strong>Mileage</strong><br><span>마일리지</span></a></h3>
		            		<p><a href="<%=request.getContextPath()%>/mypage.do?command=mileage">고객님이 보유하고 계신<br> 마일리지를 보여드립니다.</a></p>
		        		</li>
		        		<li class="shopMain board">
		           			<h3><a href="<%=request.getContextPath()%>/mypage.do?command=board"><strong>Board</strong><br><span>게시물 관리</span></a></h3>
		            		<p><a href="<%=request.getContextPath()%>/mypage.do?command=board">고객님께서 작성하신 게시물을<br> 관리하는 공간입니다.</a></p>
		        		</li>
		    		</ul>
				</div>
			</div>
			</div>
			</div>
	
			<hr class="layout">
			<br><br><br><br><br><br><br><br>
			<br><br><br><br><br><br><br><br>
			
		<!-- footer -->
		<%@ include file="/footer.jsp" %>		


			


</body>
</html>