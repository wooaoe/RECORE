<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>
<%response.setContentType("text/html; charset=UTF-8");%>
<!-- UserSession -->
<% String admin = (String)session.getAttribute("user"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html style="font-size: 16px;">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js "></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/qna_manager/qna/css/qna.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/qna_manager/manager/manager.css">
	<jsp:include page="/head.jsp"></jsp:include>


</head>
<body >
	<header>
		<jsp:include page="/header.jsp"></jsp:include>
	</header>

	<section style="margin: 100px 0 100px 0px;">
		<section class="section-container">
			<div class="row" style="width:100%;">
				<div class="col-md-2"></div>
				<div class="col-md-8">
					<section class="user-dashboard page-wrapper"
						style="font-size: 14px; color: black;">
						<div class="container">
							<div class="row">
								<div class="col-md-12">
									<ul class="list-inline dashboard-menu text-center">
										<li><a class="" href="#">Dashboard</a></li>
										<li><a class="" href="#">Orders</a></li>
										<li><a class="" href="#">Address</a></li>
										<li><a class="" href="#">Profile Details</a></li>
									</ul>
									<div class="dashboard-wrapper user-dashboard">
										<div class="table-responsive">
											<table class="table">
												<thead>
													<tr>
														<th>Order ID</th>
														<th>Date</th>
														<th>Items</th>
														<th>Total Price</th>
														<th>Status</th>
														<th></th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>#451231</td>
														<td>Mar 25, 2016</td>
														<td>2</td>
														<td>$99.00</td>
														<td><span class="label label-primary">Processing</span></td>
														<td><a href="#" class="btn btn-default">View</a></td>
													</tr>
													<tr>
														<td>#451231</td>
														<td>Mar 25, 2016</td>
														<td>3</td>
														<td>$150.00</td>
														<td><span class="label label-success">Completed</span></td>
														<td><a href="#" class="btn btn-default">View</a></td>
													</tr>
													<tr>
														<td>#451231</td>
														<td>Mar 25, 2016</td>
														<td>3</td>
														<td>$150.00</td>
														<td><span class="label label-danger">Canceled</span></td>
														<td><a href="#" class="btn btn-default">View</a></td>
													</tr>
													<tr>
														<td>#451231</td>
														<td>Mar 25, 2016</td>
														<td>2</td>
														<td>$99.00</td>
														<td><span class="label label-info">On Hold</span></td>
														<td><a href="#" class="btn btn-default">View</a></td>
													</tr>
													<tr>
														<td>#451231</td>
														<td>Mar 25, 2016</td>
														<td>3</td>
														<td>$150.00</td>
														<td><span class="label label-warning">Pending</span></td>
														<td><a href="#" class="btn btn-default">View</a></td>
													</tr>
												</tbody>
											</table>

										</div>
									</div>
									<div id="arrow_2"
										class="xans-element- xans-board xans-board-paging-1002 xans-board-paging xans-board-1002 ec-base-paginate arrow-wrapper">
										<div class="arrow arrow--left">
											<a href="?board_no=1&amp;page=1"><span>Prev</span></a>
										</div>
										<ol>
											<li class="xans-record-"><a
												href="?board_no=1&amp;page=1" class="this">1</a></li>
										</ol>
										<div class="arrow arrow--right">
											<a href="?board_no=1&amp;page=1"><span>Next</span></a>
										</div>
									</div>
									<!-- 검색 처리 -->
									<div
										class="xans-element- xans-board xans-board-search-1002 xans-board-search xans-board-1002 ">
										<fieldset class="boardSearch">
											<legend>게시물 검색</legend>
											<p>
												<select id="search_key" name="search_key" fw-filter=""
													fw-label="" fw-msg="">
													<option value="subject">제목</option>
													<option value="content">내용</option>
													<option value="writer_name">작성자</option>
												</select> <input id="search" name="search" fw-filter="" fw-label=""
													fw-msg="" class="inputTypeText" placeholder="" value=""
													type="text"> <a href="#none" class="btnEmFix"
													onclick="BOARD.form_submit('boardSearchForm');">찾기</a>
											</p>
										</fieldset>
									</div>

								</div>
							</div>
						</div>
					</section>
				</div>
				<div class="col-md-2"></div>
			</div>
		</section>
	</section>

	<!-- footer -->
	<footer class="site-footer">
		<jsp:include page="/footer.jsp"></jsp:include>
	</footer>

	<!-- 스크립트 추가 -->
	<script type="text/javascript"
		src="https://code.jquery.com/jquery-3.4.1.min.js "></script>
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/jquery-migrate-3.0.1.min.js"></script>
	<script src="js/jquery-ui.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.stellar.min.js"></script>
	<script src="js/jquery.countdown.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/bootstrap-datepicker.min.js"></script>
	<script src="js/aos.js"></script>
	<script src="js/main.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>qna_manager/manager/js/manager.js"></script>



</body>
</html>