<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8");%>
<%@ page import="com.mvc.vo.Vo_Order_Num" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mypage_Mileage</title>

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/RECOREMain/RECOREMypage/cssMy/Mypage_Mileage_CSS.css"/>

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
  
  #header{
  	position: relative;
  }
  
  thead {
    text-align: center;
  }
  
  #left{
  	text-align: center;
  }
  </style>


</head>
<body id="main">
<%
	int acc_point = (int)request.getAttribute("acc_point");
	List<Vo_Order_Num> list_order = (List<Vo_Order_Num>)request.getAttribute("list_order");
	int sum_point = 0;
	for(int i=0;i<list_order.size();i++){
		sum_point += list_order.get(i).getOrder_point();
	}
%>
	
		<!-- header 시작 -->
	<%@ include file="/header.jsp" %>
	
	
	<!-- 적립금 -->
	<div id="wrap">
	    <div id="container">
	        <div id="content" style="margin-top: 100px;">
	
				<div class="xans-element- xans-myshop xans-myshop-mileagehistorypackage ">
					<div class="xans-element- xans-myshop xans-myshop-head titleArea ">
						<h2>적립금</h2>
						<p>고객님의 사용가능 적립금 금액 입니다.</p>
					</div>
					<div class="xans-element- xans-myshop xans-myshop-summary ec-base-box gHalf">
						<ul>
							<li class="">
								<strong class="title">총 적립금</strong> <span class="data"><span id="xans_myshop_summary_total_mileage"><fmt:formatNumber value="<%=acc_point%>" groupingUsed="true"></fmt:formatNumber>원</span>&nbsp;</span>
							</li>
			            	<li class="">
								<strong class="title">사용가능 적립금</strong> <span class="data"><span id="xans_myshop_summary_avail_mileage"><fmt:formatNumber value="<%=acc_point - sum_point%>" groupingUsed="true"></fmt:formatNumber>원</span>&nbsp;</span>
							</li>
				            <li class="">
								<strong class="title">사용된 적립금</strong> <span class="data"><span id="xans_myshop_summary_used_mileage"><fmt:formatNumber value="<%=sum_point%>" groupingUsed="true"></fmt:formatNumber>원</span>&nbsp;</span>
							</li>
				            <li class="">
								<strong class="title">미가용 적립금</strong> <span class="data"><span id="xans_myshop_summary_unavail_mileage">0원</span>&nbsp;</span>
							</li>
				            <li class="">
								<strong class="title">환불예정 적립금</strong> <span class="data"><span id="xans_myshop_summary_returned_mileage">0원</span>&nbsp;</span>
							</li>
	        			</ul>
					</div>
					<div class="ec-base-tab">
	        			<ul class="menu">
							<li class="selected"><a href="/myshop/mileage/historyList.html">적립내역보기</a></li>
				            <!-- <li><a href="/myshop/mileage/unavailList.html">미가용적립내역보기</a></li>
				            <li><a href="/myshop/mileage/couponList.html">미가용쿠폰/회원등급적립내역</a></li> -->
				        </ul>
					</div>
					<div class="xans-element- xans-myshop xans-myshop-historylist">
						<div class="ec-base-table typeList">
	            			<table border="1" summary="">
								<!-- <caption>적립금 내역</caption> -->
				                <colgroup>
									<col style="width:15%">
									<col style="width:15%">
									<col style="width:25%">
									<col style="width:auto">
								</colgroup>
								<thead>
									<tr>
										<th scope="col">주문날짜</th>
				                        <th scope="col">적립금</th>
				                        <th scope="col">주문 번호</th>
				                        <th scope="col">&nbsp;&nbsp;내용</th>
			               		    </tr>
		               		    </thead>
								<!-- <tbody class="displaynone center"> -->
								<tbody class="center">
								<c:if test="${null eq list_order}">
									<p class="message ">적립금 내역이 없습니다.</p>
								</c:if>
								<c:if test="${null ne list_order}">
								<c:forEach var="order" items="${list_order}">
									<tr class="">
										<td>${order.order_date}</td>
				                        <td class="right"><fmt:formatNumber value="${order.order_point}" groupingUsed="true"></fmt:formatNumber></td>
				                        <td>${order.order_no}</td>
				                        <td class="left" id="left">사용</td>
				                    </tr>
				                </c:forEach>
								</c:if>
								</tbody>
							</table>
							<!-- <p class="message ">적립금 내역이 없습니다.</p> -->
	        			</div>
					</div>
				</div>
	
				<div class="xans-element- xans-myshop xans-myshop-historypaging ec-base-paginate">
					<a href="/myshop/mileage/historyList.html?page=1" class="first">
						<img src="//img.echosting.cafe24.com/skin/base/common/btn_page_first.gif" alt="첫 페이지">
					</a>
					<a href="/myshop/mileage/historyList.html?page=1">
						<img src="//img.echosting.cafe24.com/skin/base/common/btn_page_prev.gif" alt="이전 페이지">
					</a>
					<ol>
						<li class="xans-record-"><a href="?page=1" class="this">1</a></li>
	            	</ol>
					<a href="/myshop/mileage/historyList.html?page=1">
						<img src="//img.echosting.cafe24.com/skin/base/common/btn_page_next.gif" alt="다음 페이지">
					</a>
					<a href="/myshop/mileage/historyList.html?page=1" class="last">
						<img src="//img.echosting.cafe24.com/skin/base/common/btn_page_last.gif" alt="마지막 페이지">
					</a>
				</div>

	        </div><!-- content end  -->
		</div>
	</div>
	        <hr class="layout">
	        
		<!-- footer -->
   		<%@ include file="/footer.jsp" %>
   		
   			
</body>
</html>