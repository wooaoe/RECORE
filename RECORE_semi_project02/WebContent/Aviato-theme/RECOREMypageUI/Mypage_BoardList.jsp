<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mypage_BoardList</title>


<!-- <link rel="stylesheet" href="cssMain/aos.css"> -->
<link rel="stylesheet" type="text/css" href="cssMy/Mypage_BoardList_CSS.css"/>
<link rel="stylesheet" href="cssMain/style.css">
<link rel="stylesheet" href="cssProd/style.css">


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


<!-- recore header -->
<body id="cmn">

	<div id="wrap">    
		<div id="header">
			<section class="menu">
	
	 <nav class="navtest">
	 	<a href = "index.html">RECORE로고</a>
	 </nav>
		
		<!-- recore 헤더 -->
	<div style = "background-color:#F56D3E;">
    <div class="site-mobile-menu">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div> <!-- .site-mobile-menu -->
 	 <div class="site-navbar-wrap" style="position: static;">
      <div class="site-navbar-top">
        <div class="container py-3">
          <div class="row align-items-center">
            <div class="col-6">
            
           00000000000000000
            
            </div>
            
            
            <!-- 로그인/회원가입/마이페이지/장바구니 -->
            
            <div class="col-6">
              <div class="d-flex ml-auto">
               	  <a href="#" class="d-flex align-items-center"></a>
                  <!-- <span class="icon-envelope mr-2"></span>  -->
                  <br>
                  <ul id = "logResMy" class="top-menu text-right list-inline">
	           <li><a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown">
	           <i></i>Login</a></li>
	           <li><a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown">
	           <i></i>Register</a></li>
	           <li><a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown">
	           <i></i>Mypage</a></li>
	           <li><a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown">
	           <i class="tf-ion-android-cart"></i></a></li>
	           </ul>
	            <div class="dropdown-menu cart-dropdown">
	            </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="site-navbar">
        <div class="container py-1">
          <div class="row align-items-center">
            <div class = "testpadding">
            
            </div>
           <!-- <div class = "row align-items-center">
            <div class="col-2">
             &nbsp;
            </div>            
            </div>
            <div class = "row align-items-center">
            <div class="col-2">
             &nbsp;
            </div>            
            </div>-->
            
          </div>
        </div>
      </div>
    </div>
 	</div>
		      	
</section>
		</div>


		<!-- BoardList -->
		
	    <div id="container">
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
        <!-- 하단 -->
        
        
        
        <!-- <div id="footer" class="xans-element- xans-layout xans-layout-footer">
			풋터@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
		</div> -->
		
		<!-- footer 라인 -->
		<footer class="footertest">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<ul class="social-media">
					<li>
						<a href="">
							<i class="tf-ion-social-facebook"></i>
						</a>
					</li>
					<li>
						<a href="">
							<i class="tf-ion-social-instagram"></i>
						</a>
					</li>
					<li>
						<a href="">
							<i class="tf-ion-social-twitter"></i>
						</a>
					</li>
					<li>
						<a href="">
							<i class="tf-ion-social-pinterest"></i>
						</a>
					</li>
				</ul>
				<ul class="footer-menu">
					<li>
						<a href="">CONTACT</a>
					</li>
					<li>
						<a href="">SHIPPING</a>
					</li>
					<li>
						<a href="">TERMS OF SERVICE</a>
					</li>
					<li>
						<a href="">PRIVACY POLICY</a>
					</li>
				</ul>
				<p class="copyright-text">Powered by Bootstrap</p>
			</div>
		</div>
	</div>
</footer> 


	  
	</div>
</body>
</html>