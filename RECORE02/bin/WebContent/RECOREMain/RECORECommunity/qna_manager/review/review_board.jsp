<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>
<%response.setContentType("text/html; charset=UTF-8");%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/RECOREMain/RECORECommunity/qna_manager/review/css/review.css">
<jsp:include page="/head.jsp"></jsp:include>
<style type="text/css">
/*footer 고정*/
.form-control {
    height: 47px !important;
}
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
				<div class="col-md-8 col-md-offset-2">

					<div
						class="xans-element- xans-board xans-board-listpackage-1002 xans-board-listpackage xans-board-1002 ">
						<div
							class="xans-element- xans-board xans-board-title-4 xans-board-title xans-board-4 reviewTitlee ">
							<h2>
								<span>리뷰</span>
							</h2>
						</div>
						<div class="review_menuCategory">
							<ul class="">
								<li class=""><a href="#">전체리뷰<span class="bar"></span></a></li>
								<li class="selected"><a href="#">포토리뷰<span class="bar"></span></a></li>
							</ul>
						</div>
						
						<div class="boardSort">
							<span
								class="xans-element- xans-board xans-board-category-1002 xans-board-category xans-board-1002 "><select
								id="board_category" name="board_category" fw-filter=""
								fw-label="" fw-msg="">
									<option value="" selected="selected">전체</option>
									<option value="1">상품문의</option>
									<option value="2">배송문의</option>
									<option value="3">취소/교환/반품문의</option>
							</select></span> <span
								class="xans-element- xans-board xans-board-replysort-1002 xans-board-replysort xans-board-1002 "></span>
						</div>
						
						<div class="ec-base-table typeList gBorder">
							<table border="1" summary="">
								<caption>게시판 목록</caption>
								<colgroup
									class="xans-element- xans-board xans-board-listheader-1002 xans-board-listheader xans-board-1002 ">
									<col style="width: 70px;">
									<col style="width: 135px;" class="">
									<col style="width: auto;">
									<col style="width: 84px;">
									<col style="width: 77px;" class="">
									<col style="width: 55px;" class="">
									<col style="width: 55px;" class="displaynone">
									<col style="width: 80px;" class="displaynone">
								</colgroup>
								<thead
									class="xans-element- xans-board xans-board-listheader-1002 xans-board-listheader xans-board-1002 text-center">
									<tr style="">
										<th scope="col">번호</th>
										<th scope="col" class="">카테고리</th>
										<th scope="col">제목</th>
										<th scope="col">작성자</th>
										<th scope="col" class="">작성일</th>
										<th scope="col" class="">조회</th>
										<th scope="col" class="displaynone">추천</th>
										<th scope="col" class="displaynone">평점</th>
									</tr>
								</thead>
								<!-- 게시글 -->
								<tbody
									class="xans-element- xans-board xans-board-list-1002 xans-board-list xans-board-1002 center boardCursor">
									<!--
                    $login_page_url = /member/login.html
                    $deny_access_url = /index.html
                -->

									<tr style="background-color: #FFFFFF; color: #555555;"
										class="xans-record-">
										<td>2</td>
										<td onclick="BOARD.viewTarget('28','3',this);" class="">회원문의</td>
										<td onclick="BOARD.viewTarget('28','3',this);"
											class="subject left txtBreak">회원 정보 <span class="txtEm"></span>
										</td>
										<td>달리살다</td>
										<td onclick="BOARD.viewTarget('28','3',this);" class=""><span
											class="txtNum">2019-09-19</span></td>
										<td onclick="BOARD.viewTarget('28','3',this);" class=""><span
											class="txtNum">16</span></td>
										<td onclick="BOARD.viewTarget('28','3',this);"
											class="displaynone"><span class="txtNum">0</span></td>
										<td onclick="BOARD.viewTarget('28','3',this);"
											class="displaynone"><img
											src="https://img.echosting.cafe24.com/skin/base/board/ico_point0.gif"
											alt="0점"></td>
									</tr>
									<tr style="background-color: #FFFFFF; color: #555555;"
										class="xans-record-">
										<td>1</td>
										<td onclick="BOARD.viewTarget('27','3',this);" class="">회원문의</td>
										<td onclick="BOARD.viewTarget('27','3',this);"
											class="subject left txtBreak">가입/탈퇴 <span class="txtEm"></span>
										</td>
										<td>달리살다</td>
										<td onclick="BOARD.viewTarget('27','3',this);" class=""><span
											class="txtNum">2019-09-19</span></td>
										<td onclick="BOARD.viewTarget('27','3',this);" class=""><span
											class="txtNum">30</span></td>
										<td onclick="BOARD.viewTarget('27','3',this);"
											class="displaynone"><span class="txtNum">0</span></td>
										<td onclick="BOARD.viewTarget('27','3',this);"
											class="displaynone"><img
											src="https://img.echosting.cafe24.com/skin/base/board/ico_point0.gif"
											alt="0점"></td>
									</tr>
								</tbody>
							</table>
							<p
								class="xans-element- xans-board xans-board-empty-1002 xans-board-empty xans-board-1002 message displaynone "></p>
						</div>
						<div
							class="xans-element- xans-board xans-board-buttonlist-1002 xans-board-buttonlist xans-board-1002 ec-base-button typeBG displaynone ">
							<span class="gRight"> <a
								href="/board/notice/write.html?board_no=3"
								class="btnSubmitFix sizeS displaynone">글쓰기</a>
							</span>
						</div>
					</div>

					<div id="arrow_2"
						class="xans-element- xans-board xans-board-paging-1002 xans-board-paging xans-board-1002 ec-base-paginate arrow-wrapper">
						<div class="arrow arrow--left">
							<a href="?board_no=1&amp;page=1"><span>Prev</span></a>
						</div>
						<ol>
							<li class="xans-record-"><a href="?board_no=1&amp;page=1"
								class="this">1</a></li>
						</ol>
						<div class="arrow arrow--right">
							<a href="?board_no=1&amp;page=1"><span>Next</span></a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-2"></div>
		</section>
	</section>

	<footer class="site-footer">
		<jsp:include page="/footer.jsp"></jsp:include>
	</footer>
	<script type="text/javascript"
		src="https://code.jquery.com/jquery-3.4.1.min.js "></script>
	<script type="text/javascript" src="js/qna/qna.js"></script>
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
</body>
</html>