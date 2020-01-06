<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>



<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/RECOREMain/RECOREMypage/cssMy/Mypage_BoradList_Detail_CSS.css"/>
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
  
  a:link { color: black; text-decoration: none;}
  a:visited { color: black; text-decoration: none;}
  a:hover {
    color: #F56D3E;
    text-decoration: underline;
  }
  
  </style>


</head>
<body id="main">

	<!-- header -->
	<%@ include file="/header.jsp" %>
	
	<div id="wrap">
	    <div id="container">
	        <div id="content" style="margin-top: 156px;">
	            
				<div class="xans-element- xans-board xans-board-readpackage-4 xans-board-readpackage xans-board-4 ">
					<div class="xans-element- xans-board xans-board-title-4 xans-board-title xans-board-4 ">
						<div class="path">
	            			<span>현재 위치</span>
	            				<ol>
									<li><a href="/">홈</a></li>
	                				<li><a href="mypage.do?command=boardlist&pageno=1">게시판</a></li>
	                				<li title="현재 위치"><strong>상품문의</strong></li>
	            				</ol>
						</div>
						<div class="titleArea">
	            			<h2><font color="333333">상품문의</font> </h2>
	            			<p>달리;살다-상품문의</p>
	        			</div>
					</div>
					<div class="xans-element- xans-board xans-board-product-4 xans-board-product xans-board-4 ec-base-box typeProduct ">
						<p class="thumbnail">
							<a href="/product/아르지탈-민트-치약/303/">
								<img src="//dalisalda.com/web/product/tiny/20191212/6353d3867b386a9d99c10eddc8e5914f.jpg" alt="" onerror="this.src='//img.echosting.cafe24.com/thumb/75x75.gif'">
							</a>
						</p>
						<div class="information">
	                        <h3><a href="/product/아르지탈-민트-치약/303/">[아르지탈] 민트 치약</a></h3>
	            			<p class="price">15,000원 <span id="sPrdTaxText"></span></p>
	            			<p class="button"><a href="/product/아르지탈-민트-치약/303/" class="btnEm" title="새창으로 이동">상품 상세보기</a></p>
	        			</div>
					</div>
					<form id="BoardDelForm" name="" action="/exec/front/Board/del/6" method="post" target="_self" enctype="multipart/form-data">
						<input id="no" name="no" value="261" type="hidden">
						<input id="bulletin_no" name="bulletin_no" value="214" type="hidden">
						<input id="board_no" name="board_no" value="6" type="hidden">
						<input id="member_id" name="member_id" value="park21yc" type="hidden">
						<input id="list_url" name="list_url" value="/board/product/list.html?board_no=6" type="hidden">
						<input id="bdf_modify_url" name="bdf_modify_url" value="/board/product/modify.html?board_act=edit&amp;no=261&amp;board_no=6" type="hidden">
						<input id="bdf_del_url" name="bdf_del_url" value="/exec/front/Board/del/6" type="hidden">
						<input id="bdf_action_type" name="bdf_action_type" value="" type="hidden">
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
						                    <td>문의합니다</td>
						                </tr>
										<tr>
											<th scope="row">작성자</th>
					                    	<td> 박**** <span class="displaynone">(ip:)</span> </td>
						                </tr>
										<tr>
											<td colspan="2">
						                        <ul class="etcArea">
													<li class="displaynone">
		                                				<strong>평점</strong> <img src="//img.echosting.cafe24.com/skin/base/board/ico_point0.gif" alt="0점">&nbsp;
		                                			</li>
						                            <li class="">
						                                <strong>작성일</strong> <span class="txtNum">2019-12-30</span>
						                            </li>
						                            <li class="displaynone">
						                                <strong>추천</strong> <span class="txtNum"> <a href="#none" class="btnNormal" onclick="BOARD_READ.article_vote('/exec/front/Board/vote/6?no=261&amp;board_no=6&amp;page=&amp;return_url=%2Fboard%2Fproduct%2Fread.html');"><img src="//img.echosting.cafe24.com/skin/base/common/btn_icon_recommend.gif" alt=""> 추천하기</a></span>
						                            </li>
						                            <li class="">
						                                <strong>조회수</strong> <span class="txtNum">5</span>
						                            </li>
		                        				</ul>
												<div class="detail"><p>민트향이 많이 강한가요??</p></div>
		                    				</td>
		                				</tr>
										<tr class="attach displaynone">
											<th scope="row">첨부파일</th>
						                    <td></td>
						                </tr>
										<tr class=" displaynone">
											<th scope="row">비밀번호</th>
		                    				<td>
		                    					<input id="password" name="password" fw-filter="" fw-label="비밀번호" fw-msg="" onkeydown="if (event.keyCode == 13 || event.which == 13) { return false; }" value="" type="password"> <span class="ec-base-help txtInfo">삭제하려면 비밀번호를 입력하세요.</span>
											</td>
		                				</tr>
									</tbody>
								</table>
							</div>
							<div class="ec-base-button ">
		            			<span class="gLeft">
			                		<span class="displaynone">
					                    <a href="#none" onclick="" class="btnNormalFix sizeS admin displaynone"></a>
					                    <a href="#none" onclick="" class="btnNormalFix sizeS admin displaynone"></a>
					                    <a href="#none" onclick="" class="btnNormalFix sizeS ">스팸신고</a>
					                    <a href="#none" onclick="" class="btnNormalFix sizeS ">스팸해제</a>
			                		</span>
			                		<a href="/board/product/list2.html?board_no=6" class="btnNormalFix sizeS">목록</a>
		            			</span>
					            <span class="gRight">
					                <a href="#none" onclick="BOARD_READ.article_delete('BoardDelForm','6');" class="btnNormalFix sizeS ">삭제</a>
					                <a href="/board/product/modify.html?board_act=edit&amp;no=261&amp;board_no=6" class="btnEmFix sizeS ">수정</a>
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