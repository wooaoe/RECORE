<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%response.setContentType("text/html; charset=UTF-8");%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<%@ page import="java.io.File" %>
<%@ page import="java.net.*" %>

<%-- keyword --%>
<% String key = request.getParameter("keyword"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RECORE - QNA</title>
<%-- css --%>
<link rel="stylesheet" href="<%=request.getContextPath()%>/RECOREMain/RECORECommunity/qna_manager/qna/css/qna_search_board.css">
<%--script --%>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/RECOREMain/RECORECommunity/qna_manager/qna/js/qna_searchboardlist.js"></script>
</head>
<body id="popup">
	<div class="xans-element- xans-search xans-search-frompackage ec-base-layer ">
		<div class="header">
			<h1>상품검색</h1>
		</div>
		<div class="content">
			<form action="qna.do" method="post" >
			<input type="hidden" name="command" value="qna_searchboardlist">
				<div class="xans-element- xans-search xans-search-boardform ">
					<fieldset class="ec-base-box">
						<legend>상품검색</legend>
						<span><label>제품명</label> </span>
						<input id="keyword" name="keyword" class="inputTypeText" placeholder="" size="15" value="<%=key %>" type="text" style="margin-left: 15px;">
						<button type="submit"class="btnSubmit" style="height: 28px;">검색하기</button>
					</fieldset>
					<div class="resultArea">
						<p class="total">
							총 <strong>${paging.totalCount }</strong>개 의 상품이 검색되었습니다.
						</p>
					</div>
				</div>
			</form>
			<div class="ec-base-table typeList">
				<table border="1" summary="">
					<caption>제품 검색결과입니다</caption>
					<colgroup>
						<col style="width: 100px">
						<col style="width: auto">
						<col style="width: 80px">
					</colgroup>
					<thead>
						<tr>
							<th scope="col">상품 이미지</th>
							<th scope="col">상품 정보</th>
							<th scope="col">선택</th>
						</tr>
					</thead>
					<tbody class="center">
						<c:choose>
						<c:when test="${empty list }">
							<tr>
								<td colspan="3">검색된 상품이 없습니다.</td>
							</tr>	
						</c:when>
						<c:otherwise>
							<c:forEach var="list" items="${list }">
								<tr>
							<c:set var="img" value="${list.prod_no }/${list.prod_front_img }.png" />
								<% 
								String test= (String)pageContext.getAttribute("img");
								
								String img = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+"/"+request.getContextPath()+"/RECOREMain/RECOREProduct/product/"+(String)pageContext.getAttribute("img");
								URL url = new URL(img);
								System.out.println(img);
								URLConnection con = url.openConnection();
								HttpURLConnection exitCode = (HttpURLConnection)con;
	
								/* 
								exitCode.getResponseCode() == 200 : 파일존재
								exitCode.getResponseCode() == 404 : 파일 존재하지 않음.  
								*/
								if(exitCode.getResponseCode() == 200){
								%> 
									<td class="thumb" style="border-right: 1px solid #dfdfdf;">
									<img style="width: 80px; height: 80px;" src="RECOREMain/RECOREProduct/product/${list.prod_no }/${list.prod_front_img }.png">
									</td>
								<%	}else{%>
								
									<td class="thumb" style="border-right: 1px solid #dfdfdf;">&nbsp;</td>
								<%} %>
								<td class="sPrdName" style="border-right: 1px solid #dfdfdf;">${list.prod_name }</td>
								<td style="border-right: 1px solid #dfdfdf;"><button class="btnNormal selectBtn" onclick="" value="bt">선택</button>
								<input type="hidden" id="prod_no" value="${list.prod_no }"/>
								</td>
								
								</tr>
							</c:forEach>
						</c:otherwise>
						</c:choose>
					</tbody>
				</table>
			</div>

		</div>
	</div>
	<%-- paging --%>
	<jsp:include page="/RECOREMain/RECORECommunity/qna_manager/qna/qna_searchboardlistpaging.jsp">
	<jsp:param value="${paging.page}" name="page"/>
	<jsp:param value="${paging.beginPage}" name="beginPage"/>
	<jsp:param value="${paging.endPage}" name="endPage"/>
	<jsp:param value="${paging.prev}" name="prev"/>
	<jsp:param value="${paging.next}" name="next"/>
	</jsp:include> 
</body>
</html>