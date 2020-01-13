<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8");%>
<%@ page import="com.mvc.vo.Vo_QnA" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mypage Board Detail</title>

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/RECOREMain/RECOREMypage/cssMy/Mypage_BoardList_Detail_CSS.css"/>
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
  .path li {
    float: left;
    padding: 0 0 0 12px;
    margin: 0 0 0 8px;
    color: #757575;
    background: url(//img.echosting.cafe24.com/skin/base/layout/ico_path.gif) no-repeat 0 10px;
  }
  .ec-base-box.typeProduct .thumbnail, .ec-base-box.typeProduct .information {
    display: table-cell;
    padding: 0 20px;
    vertical-align: middle;
  }
  
  [class^='btnNormal'], a[class^='btnNormal'] {
    display: inline-block;
    box-sizing: border-box;
    padding: 2px 8px;
    border: 1px solid #d1d1d1;
    border-radius: 2px;
    font-family: "굴림",Gulim;
    font-size: 12px;
    line-height: 22px;
    font-weight: normal;
    text-decoration: none;
    vertical-align: middle;
    word-spacing: -0.5px;
    letter-spacing: 0;
    text-align: center;
    white-space: nowrap;
    color: #222;
    background-color: #fff;
  }
  
  ol, ul, dl {
    margin-bottom: 0rem;
  }
  
  a:link { color: black; text-decoration: none;}
  a:visited { color: black; text-decoration: none;}
 /*  a:hover {
    color: #F56D3E;
    text-decoration: underline;
  } */
  html{
  	scroll-behavior : smooth;
  }
  
  </style>
<script type="text/javascript">
	function deleteBoard(qna_no){ //게시글 삭제
		var res = confirm("정말 삭제하시겠습니까?");
		location.href="mypage.do?command=deleteboard&qnano="+qna_no+"&result="+res;
	}
	
	function boardUpdate(qna_no){ //게시글 수정
		location.href="mypage.do?command=updateboard&qnano="+qna_no;
	}
</script>
</head>
<body id="body">
<%
	Vo_Account acc = (Vo_Account)session.getAttribute("vo");
%>
	<!-- header -->
	<%@ include file="/header.jsp" %>
	 
	<div id="wrap">
	    <div id="container">
	        <div id="content" style="margin-top: 100px;">
	            
				<div class="xans-element- xans-board xans-board-readpackage-4 xans-board-readpackage xans-board-4 ">
					<div class="xans-element- xans-board xans-board-title-4 xans-board-title xans-board-4 ">
						<div class="path">
	            			<span>현재 위치</span>
	            				<ol>
									<li><a href="/">홈</a></li>
	                				<li><a href="<%=request.getContextPath()%>/mypage.do?command=boardlist&pageno=1">게시판</a></li>
	                				<li title="현재 위치"><strong>상품문의</strong></li>
	            				</ol>
						</div>
						<div class="titleArea">
	            			<h2><font color="333333">상품문의</font> </h2>
	            			<p>RECORE-상품문의</p>
	        			</div>
					</div>
					<c:if test="${vo_qna.catd_no eq 16}">
					<div class="xans-element- xans-board xans-board-product-4 xans-board-product xans-board-4 ec-base-box typeProduct ">
						<p class="thumbnail">
							<a href="Product.do?command=ProdDetail&pseq=${vo_qna.qna_prod_no}&catdno=${catd}">
								<img src="<%=request.getContextPath() %>/RECOREMain/RECOREProduct/product/${vo_qna.qna_prod_no}/f_img.png" style="width:100px" alt="">
							</a>
						</p>
						<div class="information">
	                        <h3><a href="Product.do?command=ProdDetail&pseq=${vo_qna.qna_prod_no}&catdno=${catd}">[${vo_prod.prod_brand}] ${vo_prod.prod_name}</a></h3>
	            			<p class="price"><fmt:formatNumber value="${vo_prod.prod_price}" groupingUsed="true"></fmt:formatNumber>원 <span id="sPrdTaxText"></span></p>
	            			<p class="button"><a href="Product.do?command=ProdDetail&pseq=${vo_qna.qna_prod_no}&catdno=${catd}" class="btnEm" title="새창으로 이동">상품 상세보기</a></p>
	        			</div>
					</div>
					</c:if>
					<form id="BoardDelForm" name="" action="/exec/front/Board/del/6" method="post" target="_self" enctype="multipart/form-data">
						<div class="xans-element- xans-board xans-board-read-4 xans-board-read xans-board-4">
							<div class="ec-base-table typeWrite ">
	            				<table border="1" summary="">
									<caption>상품 게시판 상세</caption>
	            					<colgroup>
										<col style="width:130px;">
										<col style="width:auto;">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row">제목</th>
						                    <td>${vo_qna.qna_title}</td>
						                </tr>
										<tr>
											<th scope="row">작성자</th>
					                    	<td><%=acc.getAcc_name() %></td>
						                </tr>
										<tr>
											<td colspan="2">
						                        <ul class="etcArea">
													<li class="displaynone">
		                                				<strong>평점</strong> <img src="//img.echosting.cafe24.com/skin/base/board/ico_point0.gif" alt="0점">&nbsp;
		                                			</li>
						                            <li class="">
						                                <strong>작성일</strong> <span class="txtNum">${vo_qna.qna_regdate}</span>
						                            </li>
						                            <li class="">
						                                <strong>조회수</strong> <span class="txtNum">${vo_qna.qna_view_count}</span>
						                            </li>
		                        				</ul>
												<div class="detail"><p>${vo_qna.qna_content}</p></div>
		                    				</td>
		                				</tr>
										<!-- <tr class="attach displaynone">
											<th scope="row">첨부파일</th>
						                    <td></td>
						                </tr>
										<tr class=" displaynone">
											<th scope="row">비밀번호</th>
		                    				<td>
		                    					<input id="password" name="password" fw-filter="" fw-label="비밀번호" fw-msg="" onkeydown="if (event.keyCode == 13 || event.which == 13) { return false; }" value="" type="password"> <span class="ec-base-help txtInfo">삭제하려면 비밀번호를 입력하세요.</span>
											</td>
		                				</tr> -->
									</tbody>
								</table>
							</div>
							<div class="ec-base-button ">
		            			<span class="gLeft">
			                		<a href="mypage.do?command=boardlist&pageno=1" class="btnNormalFix sizeS">목록</a>
		        	   			</span>
					            <span class="gRight">
					                <a href="#none" onclick="deleteBoard(${vo_qna.qna_no});" class="btnNormalFix sizeS ">삭제</a>
					                <a href="javascript:boardUpdate(${vo_qna.qna_no})" class="btnEmFix sizeS ">수정</a>
					            </span>
	        				</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
    <hr class="layout">
	        
	        <!-- footer -->
   		<%@ include file="/footer.jsp" %>
  
</body>
</html>