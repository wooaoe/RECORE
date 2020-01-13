<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.mvc.vo.Vo_Account" %>
<%request.setCharacterEncoding("UTF-8");%>
<%response.setContentType("text/html; charset=UTF-8");%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%-- UserSession --%>
<%Vo_Account sessionVo = (Vo_Account) session.getAttribute("sessionVo");%>
<%-- category --%>
<% String catd = request.getParameter("catd"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RECORE - REVIEW</title>

<%-- css --%>
<link rel="stylesheet" href="<%=request.getContextPath()%>/RECOREMain/RECORECommunity/qna_manager/qna/css/qna.css">
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<jsp:include page="/head.jsp"></jsp:include>

</head>
<body>
	<header>
	<jsp:include page="/header.jsp"></jsp:include>
	</header>
	<section style="margin: 100px 0 100px 0px;">
		<section class="section-container">
			<div class="row" style="width:100%;">
				<div class="col-md-2"></div>
				<div class="col-md-8 col-md-offset-2">
					<div class="xans-element- xans-board xans-board-listpackage-1002 xans-board-listpackage xans-board-1002 ">
						<div class="xans-element- xans-board xans-board-title-4 xans-board-title xans-board-4 reviewTitlee ">
							<h2>
								<span>리뷰</span>
							</h2>
						</div>
						<%-- category --%>
						<div class="category" style="text-align: right;font-size: 12px;">
								<select id="review_category" name="review_category" >
								<c:set var="category" value="<%=catd %>" />
								<c:choose>
									<c:when test="${category eq 'all'}">
										<option id="all" value="all" selected="selected">전체</option>
									</c:when>
									<c:otherwise>
										<option id="all" value="all" >전체</option>
									</c:otherwise>
								</c:choose>
								<c:choose>
									<c:when test="${category eq 'bag_acc'}">
										<option id="bag_acc" value="bag_acc" selected="selected">BAG/ACC</option>
									</c:when>
									<c:otherwise>
										<option id="bag_acc" value="bag_acc" >BAG/ACC</option>
									</c:otherwise>
								</c:choose>
								<c:choose>
									<c:when test="${category eq 'outer'}">
										<option id="outer" value="outer" selected="selected">OUTER</option>
									</c:when>
									<c:otherwise>
										<option id="outer" value="outer">OUTER</option>
									</c:otherwise>
								</c:choose>
								<c:choose>
									<c:when test="${category eq 'top'}">
										<option id="top" value="top" selected="selected">TOP</option>
									</c:when>
									<c:otherwise>
										<option id="top" value="top">TOP</option>
									</c:otherwise>
								</c:choose>
								<c:choose>
									<c:when test="${category eq 'bottom'}">
										<option id="bottom" value="bottom" selected="selected">BOTTOM</option>
									</c:when>
									<c:otherwise>
										<option id="bottom" value="bottom">BOTTOM</option>
									</c:otherwise>
								</c:choose>
								<c:choose>
									<c:when test="${category eq 'wallet'}">
										<option id="wallet" value="wallet" selected="selected">WALLET</option>
									</c:when>
									<c:otherwise>
										<option id="wallet" value="wallet">WALLET</option>
									</c:otherwise>
								</c:choose>
								<c:choose>
									<c:when test="${category eq 'office'}">
										<option id="office" value="office" selected="selected">OFFICE SUPPLY</option>
									</c:when>
									<c:otherwise>
										<option id="office" value="office">OFFICE SUPPLY</option>
									</c:otherwise>
								</c:choose>
								<c:choose>
									<c:when test="${category eq 'home'}">
										<option id="home" value="home" selected="selected">HOME</option>
									</c:when>
									<c:otherwise>
										<option id="home" value="home">HOME</option>
									</c:otherwise>
								</c:choose>
								<c:choose>
									<c:when test="${category eq 'furniture'}">
										<option id="furniture" value="furniture" selected="selected">FURNITURE</option>
									</c:when>
									<c:otherwise>
										<option id="furniture" value="furniture">FURNITURE</option>
									</c:otherwise>
								</c:choose>
								
							</select>
						</div>
						<%-- board --%>
						<div class="ec-base-table typeList gBorder">
							<table id="content_table" border="1" summary="">
								<caption>게시판 목록</caption>
								<colgroup
									class="xans-element- xans-board xans-board-listheader-1002 xans-board-listheader xans-board-1002 ">
									<col style="width: 135px;" class="">
									<col style="width: auto;">
									<col style="width: 84px;">
									<col style="width: 77px;" class="">
									<col style="width: 55px;" class="displaynone">
									<col style="width: 80px;" class="">
								</colgroup>
								<thead class="xans-element- xans-board xans-board-listheader-1002 xans-board-listheader xans-board-1002 text-center">
									<tr style="">
										<th scope="col" class="">상품정보</th>
										<th scope="col" class="">제목</th>
										<th scope="col" class="">작성자</th>
										<th scope="col" class="">작성일</th>
										<th scope="col" class="displaynone">추천</th>
										<th scope="col" class="">평점</th>
									</tr>
								</thead>
								<%-- list --%>
								<tbody class="xans-element- xans-board xans-board-list-1002 xans-board-list xans-board-1002 center boardCursor">
									<c:choose>
										<c:when test="${empty list }">
											<tr>
												<td colspan="7">작성된 글이 존재하지 않습니다.</td>
											</tr>
										</c:when>
										<c:otherwise>
											<c:forEach var="list" items="${list }" >
												<tr style="background-color: #FFFFFF; color: #555555;" class="xans-record-">
													<c:choose>
														<c:when test="${empty list.review_recon}">
															<tr>
																<td  class="title">
																	<img src="" border="0" alt="">
																	<img style="width: 80px; height: 80px;" src="RECOREMain/RECOREProduct/product/${list.prod_no }/${list.prod_front_img }.png">
																</td>
																<td class="title subject left txtBreak">
																	<span class="txtEm" style="color: #17a2b8;">
																		[${list.prod_name }]
																	</span>
																	<br><br>
																	<span class="txtEm">
																		<b>${list.review_title }</b>
																	</span>
																</td>
																<td class="title">${list.acc_id }</td>
																<td class="title"><span class="txtNum">${list.review_regdate }</span></td>
																<td class="title">
																	<img src="RECOREMain/RECORECommunity/qna_manager/review/images/board/ico_point${list.review_rate }.gif">
																</td>
															</tr>
															<tr>
																<td colspan="6" class="conts" style="text-align: left; color: rgb(70, 70, 70); font-family: sand; font-size: 12px;">
																	<div style="padding: 30px;">
																		${list.review_content}
																	</div>
																</td>
															</tr>
														</c:when>
														<c:otherwise>
															<tr>
																<td  class="title">
																	<a href="/product/아르지탈-민트-치약/303/"> <img src="" border="0" alt="">
																	<img style="width: 80px; height: 80px;" src="RECOREMain/RECOREProduct/product/${list.prod_no }/${list.prod_front_img }.png">
																	</a>
																</td>
																<td class="title subject left txtBreak">
																	<span class="txtEm" style="color: #17a2b8;">
																		[${list.prod_name }]
																	</span>
																	<br><br>
																	<span class="txtEm">
																		<b>${list.review_title }</b>
																	</span>
																</td>
																<td class="title">${list.acc_id }</td>
																<td class="title"><span class="txtNum">${list.review_regdate }</span></td>
																<td class="title">
																	<img src="RECOREMain/RECORECommunity/qna_manager/review/images/board/ico_point${list.review_rate }.gif">
																</td>
															</tr>
															<tr>
																<td colspan="6" class="conts" style="text-align: left; color: rgb(70, 70, 70); font-family: sand; font-size: 12px;">
																	<div style="padding: 30px;">
																		${list.review_content}
																	</div>
																</td>
															</tr>
															<tr>
																<td class="title">&nbsp;</td>
																<td class="title subject left txtBreak">
																	<img src="RECOREMain/RECORECommunity/qna_manager/qna/images/board/neo_reply.gif">&nbsp;&nbsp;${list.review_title }
																	<span class="txtEm"></span>
																</td>
																<td class="title">&nbsp;</td>
																<td class="title"><span class="txtNum">&nbsp;</span></td>
																<td class="title">&nbsp;</td>
															</tr>
															<tr>
																<td colspan="6" class="conts" style="text-align: left; color: rgb(70, 70, 70); font-family: sand; font-size: 12px;">
																	<div style="padding: 30px;">
																		${list.review_recon}
																	</div>
																</td>
															</tr>
														</c:otherwise>
													</c:choose> 
											</c:forEach>
										</c:otherwise>
									</c:choose>
								</tbody>
							</table>
						</div>
					</div>
					<%-- paging --%>
					<jsp:include page="/RECOREMain/RECORECommunity/qna_manager/review/review_paging.jsp">
					    <jsp:param value="${paging.page}" name="page"/>
					    <jsp:param value="${paging.beginPage}" name="beginPage"/>
					    <jsp:param value="${paging.endPage}" name="endPage"/>
					    <jsp:param value="${paging.prev}" name="prev"/>
					    <jsp:param value="${paging.next}" name="next"/>
					</jsp:include>

					<%-- search --%>
					<div class="xans-element- xans-board xans-board-search-1002 xans-board-search xans-board-1002 ">
						<form action="qna.do" method="post" >
							<input type="hidden" name="command" value="review_list">
							<input type="hidden" name="catd" value="all">
							<fieldset class="boardSearch">
								<legend>게시물 검색</legend>
								<p>
									<select name="searchsubject">
										<option value="REVIEW_TITLE" selected="selected">제목</option>
										<option value="PROD_NAME">상품명</option>
										<option value="ACC_ID">작성자</option>
									</select> 
									<input id="keyword" name="keyword" class="inputTypeText" placeholder="" value="" type="text"></input>
									<button id="searchbt" class="btnEmFix" type="submit" onclick="">찾기</button>
								</p>
							</fieldset>
						</form>
					</div>
				</div>
			</div>
			<div class="col-md-2"></div>
		</section>
	</section>

	<%-- footer --%>
	<jsp:include page="/footer.jsp"></jsp:include>
	
	<%-- script --%>
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js "></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/RECOREMain/RECORECommunity/qna_manager/review/js/review.js"></script>
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
</body>
</html>