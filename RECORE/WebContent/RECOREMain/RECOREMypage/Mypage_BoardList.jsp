<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mypage_BoardList</title>


<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/RECOREMain/RECOREMypage/cssMy/Mypage_BoardList_CSS.css"/>
	
	<meta charset="utf-8">
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
  

  </style>

</head>



<body id="cmn">


	<!-- header -->
	<%@ include file="/header.jsp" %>

		<!-- BoardList -->
		
	    <div id="container" style = "position: static;">
	        <div id="contents">
				<div class="titleArea">
				    <h2>BOARD LIST</h2>
				    <h3>내가 쓴 게시글</h3>
				</div>
				
				<div class="xans-element- xans-myshop xans-myshop-boardpackage ">
					<div class="xans-element- xans-myshop xans-myshop-boardlisthead ">
						<p>분류 선택 <select id="board_sort" name="board_sort" fw-filter="" fw-label="" fw-msg="" onchange="BOARD.change_sort('boardSearchForm', this);">
						<option value="D">작성 일자별</option>
						<option value="C">분류별</option>
						</select>
						</p>
					</div>
					<div class="xans-element- xans-myshop xans-myshop-boardlist ec-base-table typeList gBorder gBlank10">
						<table border="1" summary="">
							<caption>게시물 관리 목록</caption>
					        <colgroup class="xans-element- xans-board xans-board-listheader-1002 xans-board-listheader xans-board-1002 ">
						        <col style="width:70px;">
								<col style="width:160px;">
								<col style="width:auto;">
								<col style="width:110px;">
								<col style="width:120px;">
								<col style="width:80px;">
							</colgroup>
							<thead>
								<tr>
									<th scope="col">NO</th>
					                <th scope="col">BOARD CATEGORY</th>
					                <th scope="col">SUBJECT</th>
					                <th scope="col">WRITER</th>
					                <th scope="col">DATE</th>
					                <th scope="col">HIT</th>
					            </tr>
				            </thead>
							<tbody class="">
								<tr>
									<td colspan="6" class="message">게시물이 없습니다.</td>
									<!-- 작성자이름은 session account통해서 가져오기 -->
									<!-- 카테고리명은 vo_qna확인해서 숫자에따라 if로 출력하기  -->
					           	</tr>
				           	</tbody>
							<tbody class="displaynone center">
							</tbody>
						</table>
					</div>
				</div>
	
				<form id="boardSearchForm" name="" action="/myshop/board_list.html" method="get" target="" enctype="multipart/form-data">
					<input id="board_no" name="board_no" value="" type="hidden">
					<input id="page" name="page" value="1" type="hidden">
					<input id="board_sort" name="board_sort" value="" type="hidden">
					
<!-- 					<div class="xans-element- xans-myshop xans-myshop-boardlistsearch ">
						<fieldset class="boardSearch">
							<legend>게시물 검색</legend>
				       		<p>
				       			<select id="search_key" name="search_key" fw-filter="" fw-label="" fw-msg="">
									<option value="subject">제목</option>
									<option value="content">내용</option>
									<option value="writer_name">글쓴이</option>
									<option value="member_id">아이디</option>
									<option value="nick_name">별명</option>
								</select>
								<input id="search" name="search" fw-filter="" fw-label="" fw-msg="" class="inputTypeText" placeholder="" value="" type="text">
								<a href="#none" class="yg_btn_28 yg_btn3" onclick="BOARD.form_submit('boardSearchForm');" alt="찾기">SEARCH</a>
							</p>
				    	</fieldset>
					</div> -->
				</form>
				<br>
<!-- 				내가 작성한 리뷰
				<div class="crema-reviews crema-applied" data-type="my-reviews">
					<iframe id="crema-reviews-1" height="100%" src="https://review5.cre.ma/slowand.com/my/reviews?iframe_id=crema-reviews-1&amp;app=0&amp;parent_url=https%3A%2F%2Fwww.slowand.com%2Fmyshop%2Fboard_list.html&amp;secure_username=V229f7cfe925ee9b3d92ea8b57e53fda5d&amp;secure_user_name=V26529c6975edb519cd63d7a71f4c3eab3&amp;iframe=1" width="100%" scrolling="no" allowtransparency="true" frameborder="0" name="crema-reviews-1-1576732105993" style="visibility: visible; height: 374px;"></iframe>
				</div>
	 -->
	        </div>
	        <hr class="layout">
        </div>
        <hr class="layout">
       
		<!-- footer -->
		<%@ include file="/footer.jsp" %>
		<%-- <jsp:include page="/footer.jsp"></jsp:include> --%>
	 <%--  <%=request.getContextPath()%> --%>
	
</body>
</html>