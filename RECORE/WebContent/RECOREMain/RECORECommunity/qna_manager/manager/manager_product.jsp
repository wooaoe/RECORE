<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.mvc.vo.Vo_Account" %>
<%request.setCharacterEncoding("UTF-8");%>
<%response.setContentType("text/html; charset=UTF-8");%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%-- UserSession --%>
<% Vo_Account sessionVo = (Vo_Account)session.getAttribute("vo"); %>
<%-- category --%>
<% String catd = request.getParameter("category"); %>

<!DOCTYPE html>
<html style="font-size: 16px;">
<head>
<meta charset="UTF-8">
<title>RECORE - MANAGER</title>

<%-- css --%>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js "></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/RECOREMain/RECORECommunity/qna_manager/qna/css/qna.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/RECOREMain/RECORECommunity/qna_manager/manager/css/manager.css">
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<jsp:include page="/head.jsp"></jsp:include>

<%-- css --%>
<style type="text/css">
.xans-board-search p:before{content:none; font-size: 13px;}
.table>tbody>tr>td{vertical-align:middle;}
.btn{border-width: 0px; border: 1px solid; font-size: 14px; line-height: 1.3; border-color: #ccc; outline: none;}
.xans-board-search p {background: none; margin: 3px; padding: 0px;}
.ec-base-table thead th{font-size: 13px; border-left: 0px;}
.ec-base-table.gBorder td{font-size: 13px; border-left: 0px; border-bottom: 1px solid;}
</style>
</head>
<body>
	<header>
		<jsp:include page="/header.jsp"></jsp:include>
	</header>
	<section style="margin: 100px 0 100px 0px;">
		<section class="section-container">
			<div class="row" style="width:100%;">
				<div class="col-md-2"></div>
				<div class="col-md-8">
					<div class="xans-element- xans-board xans-board-listpackage-1002 xans-board-listpackage xans-board-1002 ">
						<div class="xans-element- xans-board xans-board-search-1002 xans-board-search xans-board-1002" style="padding: 0px;">
							<div class="dashboard-wrapper user-dashboard" style="border: 0px; margin-top: 0px; padding: 20px;">
								<form id="searchForm" action="manager.do" method="get" onsubmit="return check()">
									<input type="hidden" name="command" value="manager_product"> 
									<%-- <input type="hidden" name="catd" value="<%=catd%>"> --%>
									<fieldset class="boardSearch">
										<legend>상품 검색</legend>
										<table style="border-collapse: separate; border-spacing: 0 10px; font-family: 'Noto Sans KR',sans-serif;">
											<colgroup>
												<col style="width: 70px;">
												<col style="width: auto;">
								
											</colgroup>
											<tr>
												<td>카테고리</td>
												<td>
													<select id="catd" name="catd" style="width: 90px;">
														<option id="all" value="all" selected="selected">전체</option>
														<option id="bag_acc" value="bag_acc" >BAG/ACC</option>
														<option id="outer" value="outer">OUTER</option>
														<option id="top" value="top">TOP</option>
														<option id="bottom" value="bottom">BOTTOM</option>
														<option id="wallet" value="wallet">WALLET</option>
														<option id="office" value="office">OFFICE SUPPLY</option>
														<option id="home" value="home">HOME</option>
														<option id="furniture" value="furniture">FURNITURE</option>
													</select> 
												</td>
											</tr>
											<tr>
												<td>검색어</td>
												<td>
													<select name="searchsubject" style="width: 90px;">
														<option value="" selected="selected">----선택----</option>
														<option value="number" >상품번호</option>
														<option value="id">상품아이디</option>
														<option value="name">상품명</option>
													</select> 
													<input id="keyword" name="keyword" class="inputTypeText" value="" type="text"></input>
													<button id="searchbt" class="btnEmFix" type="submit">검색</button>
												</td>
											</tr>
										</table>
										
									</fieldset>
								</form>
							</div>
						</div>
					
						<div class="ec-base-table typeList gBorder">
							<table id="content_table" summary="" style="border:0px; border-top: 1px solid #d7d5d5;">
								<colgroup class="xans-element- xans-board xans-board-listheader-1002 xans-board-listheader xans-board-1002 ">
									<col style="width: 100px;">
									<col style="width: 100px;">
									<col style="width: 200px;">
									<col style="width: 500px;">
									<col style="width: 100px;">
									<col style="width: 100px;">
									<col style="width: 70px;">
								</colgroup>
								<thead class="xans-element- xans-board xans-board-listheader-1002 xans-board-listheader xans-board-1002 text-center">
									<tr style="text-align: center;">
										<th>상품번호</th>
										<th>상품아이디</th>
										<th>상품정보</th>
										<th>상품명</th>
										<th>현 재고</th>
										<th>조정 재고</th>
										<th></th>
									</tr>
								</thead>
								<tbody class="xans-element- xans-board xans-board-list-1002 xans-board-list xans-board-1002 center boardCursor">
									<c:choose>
										<c:when test="${empty list }">
												<tr>
													<td colspan="7"><br><b>검색된 상품이 존재하지 않습니다.</b><br/><br/></td>
												</tr>
											</c:when>
											<c:otherwise>
												<c:forEach var="list" items="${list }" >
													<tr style="text-align: center; font-size: 14px;">
														<%-- 상품번호 --%>
														<td>${list.prod_no }</td>
														<td>${list.prod_id }</td>
														<%-- 상품정보 --%>
														<td>
															<img style="width: 80px; height: 80px;" src="RECOREMain/RECOREProduct/product/${list.prod_no }/f_img.png">
														</td>
														<%-- 상품명 --%>
														<td style="text-align: left;">${list.prod_name }</td>
														<%-- 현재고 --%>
														<td>${list.prod_stock }</td>
														<%-- 조정재고 --%>
														<td><input type="text" name="prod_stock" style="width: 60px;"></td>
														<%-- 저장버튼 --%>
														<td style="text-align: center;">
															<a id="${list.prod_id }" class="savebtn btn btn-default" role="button">저장</a>
														</td>
													</tr>
												</c:forEach>
											</c:otherwise>
									</c:choose>
								</tbody>
							</table>
						</div>
					</div>
					<%-- paging --%>
					<jsp:include page="/RECOREMain/RECORECommunity/qna_manager/manager/manager_product_paging.jsp">
						<jsp:param value="${paging.page}" name="page"/>
						<jsp:param value="${paging.beginPage}" name="beginPage"/>
						<jsp:param value="${paging.endPage}" name="endPage"/>
						<jsp:param value="${paging.prev}" name="prev"/>
						<jsp:param value="${paging.next}" name="next"/>
					</jsp:include> 
				</div>
				<div class="col-md-2"></div>
			</div>
		</section>
	</section>

	<%-- footer --%>
	<jsp:include page="/footer.jsp"></jsp:include>

	<%-- script --%>
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js "></script>
	<script src="<%=request.getContextPath()%>/RECOREMain/js/jquery-3.3.1.min.js"></script>
	<script src="<%=request.getContextPath()%>/RECOREMain/js/jquery-migrate-3.0.1.min.js"></script>
	<script src="<%=request.getContextPath()%>/RECOREMain/js/jquery-ui.js"></script>
	<script src="<%=request.getContextPath()%>/RECOREMain/js/popper.min.js"></script>
	<script src="<%=request.getContextPath()%>/RECOREMain/js/bootstrap.min.js"></script>
	<script src="<%=request.getContextPath()%>/RECOREMain/js/owl.carousel.min.js"></script>
	<script src="<%=request.getContextPath()%>/RECOREMain/js/jquery.stellar.min.js"></script>
	<script src="<%=request.getContextPath()%>/RECOREMain/js/jquery.countdown.min.js"></script>
	<script src="<%=request.getContextPath()%>/RECOREMain/js/jquery.magnific-popup.min.js"></script>
	<script src="<%=request.getContextPath()%>/RECOREMain/js/bootstrap-datepicker.min.js"></script>
	<script src="<%=request.getContextPath()%>/RECOREMain/js/aos.js"></script>
	<script src="<%=request.getContextPath()%>/RECOREMain/js/main.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/RECOREMain/RECORECommunity/qna_manager/manager/js/manager.js"></script>
</body>
</html>