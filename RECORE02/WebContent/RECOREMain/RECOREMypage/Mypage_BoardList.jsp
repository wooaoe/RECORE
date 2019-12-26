<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mypage_BoardList</title>


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
	 	<a href = "../index.html">RECORE로고</a>
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
       
		
		<!-- footer 라인 -->
		 <footer class="site-footer border-top">
      <div class="container">
        <div class="row">
          <div class="col-lg-4 mb-5 mb-lg-0">
            <div class="row mb-5">
              <div class="col-md-12">
                <h3 class="footer-heading mb-4">Navigation</h3>
              </div>
              <div class="col-md-6 col-lg-6">
                <ul class="list-unstyled">
                  <li><a href="#">Home</a></li>
                  <li><a href="#">Services</a></li>
                  <li><a href="#">News</a></li>
                  <li><a href="#">Team</a></li>
                </ul>
              </div>
              <div class="col-md-6 col-lg-6">
                <ul class="list-unstyled">
                  <li><a href="#">About Us</a></li>
                  <li><a href="#">Privacy Policy</a></li>
                  <li><a href="#">Contact Us</a></li>
                  <li><a href="#">Membership</a></li>
                </ul>
              </div>
            </div>
          </div>
          
          
          
          <!-- footer -->
          <div class="col-lg-4">
           

            <div class="mb-5">
              <h3 class="footer-heading mb-4">Recent News</h3>
              <div class="block-25">
                <ul class="list-unstyled">
                  <li class="mb-3">
                    <a href="#" class="d-flex">
                      <figure class="image mr-4">
                        <img src="images/hero_bg_1.jpg" alt="" class="img-fluid">
                      </figure>
                      <div class="text">
                        <span class="small text-uppercase date">Sep 16, 2018</span>
                        <h3 class="heading font-weight-light">Lorem ipsum dolor sit amet consectetur elit</h3>
                      </div>
                    </a>
                  </li>
                  <li class="mb-3">
                    <a href="#" class="d-flex">
                      <figure class="image mr-4">
                        <img src="images/hero_bg_1.jpg" alt="" class="img-fluid">
                      </figure>
                      <div class="text">
                        <span class="small text-uppercase date">Sep 16, 2018</span>
                        <h3 class="heading font-weight-light">Lorem ipsum dolor sit amet consectetur elit</h3>
                      </div>
                    </a>
                  </li>
                  <li class="mb-3">
                    <a href="#" class="d-flex">
                      <figure class="image mr-4">
                        <img src="images/hero_bg_1.jpg" alt="" class="img-fluid">
                      </figure>
                      <div class="text">
                        <span class="small text-uppercase date">Sep 16, 2018</span>
                        <h3 class="heading font-weight-light">Lorem ipsum dolor sit amet consectetur elit</h3>
                      </div>
                    </a>
                  </li>
                </ul>
              </div>
            </div>
            
          </div>
          

          <div class="col-lg-4 mb-5 mb-lg-0">

            <div class="mb-5">
              <h3 class="footer-heading mb-2">Subscribe Newsletter</h3>
              <p>Lorem ipsum dolor sit amet consectetur adipisicing elit minima minus odio.</p>

              <form action="#" method="post">
                <div class="input-group mb-3">
                  <input type="text" class="form-control border-white text-white bg-transparent" placeholder="Enter Email" aria-label="Enter Email" aria-describedby="button-addon2">
                  <div class="input-group-append">
                    <button class="btn btn-primary" type="button" id="button-addon2">Send</button>
                  </div>
                </div>
              </form>

            </div>

            <div class="row">
              <div class="col-md-12">
                <h3 class="footer-heading mb-4">Follow Us</h3>

                <div>
                  <a href="#" class="pl-0 pr-3"><span class="icon-facebook"></span></a>
                  <a href="#" class="pl-3 pr-3"><span class="icon-twitter"></span></a>
                  <a href="#" class="pl-3 pr-3"><span class="icon-instagram"></span></a>
                  <a href="#" class="pl-3 pr-3"><span class="icon-linkedin"></span></a>
                </div>
              </div>
            </div>


          </div>
          
        </div>
        <div class="row pt-5 mt-5 text-center">
          <div class="col-md-12">
            <p>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank" >Colorlib</a>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            </p>
          </div>
          
        </div>
      </div>
    </footer>
  </div>
	  
	
</body>
</html>