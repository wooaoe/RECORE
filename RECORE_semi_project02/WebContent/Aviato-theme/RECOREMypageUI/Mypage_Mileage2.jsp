<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mypage_Mileage</title>

<link rel="stylesheet" type="text/css" href="cssMy/Mypage_Mileage_CSS.css"/>
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
  
  #header{
  	position: relative;
  }
  
  </style>


</head>
<body id="main">

	
		<!-- header 시작 -->
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
          </div>
        </div>
      </div>
    </div>
 	</div>
		      	
</section>
</div>
	
	
	<!-- 적립금 -->
	<div id="wrap">
	    <div id="container">
	        <div id="content" style="margin-top: 100px;">
	
				<div class="xans-element- xans-myshop xans-myshop-mileagehistorypackage ">
					<div class="xans-element- xans-myshop xans-myshop-head titleArea ">
						<h2>적립금</h2>
						<p>고객님의 사용가능 적립금 금액 입니다.</p>
					</div>
					<div class="xans-element- xans-myshop xans-myshop-summary ec-base-box gHalf">
						<ul>
							<li class="">
								<strong class="title">총 적립금</strong> <span class="data"><span id="xans_myshop_summary_total_mileage">0원</span>&nbsp;</span>
							</li>
			            	<li class="">
								<strong class="title">사용가능 적립금</strong> <span class="data"><span id="xans_myshop_summary_avail_mileage">0원</span>&nbsp;</span>
							</li>
				            <li class="">
								<strong class="title">사용된 적립금</strong> <span class="data"><span id="xans_myshop_summary_used_mileage">0원</span>&nbsp;</span>
							</li>
				            <li class="">
								<strong class="title">미가용 적립금</strong> <span class="data"><span id="xans_myshop_summary_unavail_mileage">0원</span>&nbsp;</span>
							</li>
				            <li class="">
								<strong class="title">환불예정 적립금</strong> <span class="data"><span id="xans_myshop_summary_returned_mileage">0원</span>&nbsp;</span>
							</li>
	        			</ul>
					</div>
					<div class="ec-base-tab">
	        			<ul class="menu">
							<li class="selected"><a href="/myshop/mileage/historyList.html">적립내역보기</a></li>
				            <!-- <li><a href="/myshop/mileage/unavailList.html">미가용적립내역보기</a></li>
				            <li><a href="/myshop/mileage/couponList.html">미가용쿠폰/회원등급적립내역</a></li> -->
				        </ul>
					</div>
					<div class="xans-element- xans-myshop xans-myshop-historylist">
						<div class="ec-base-table typeList">
	            			<table border="1" summary="">
								<caption>적립금 내역</caption>
				                <colgroup>
									<col style="width:15%">
									<col style="width:15%">
									<col style="width:25%">
									<col style="width:auto">
								</colgroup>
								<thead>
									<tr>
										<th scope="col">주문날짜</th>
				                        <th scope="col">적립금</th>
				                        <th scope="col">관련 주문</th>
				                        <th scope="col">내용</th>
			               		    </tr>
		               		    </thead>
								<tbody class="displaynone center">
									<tr class="">
										<td></td>
				                        <td class="right"></td>
				                        <td></td>
				                        <td class="left"></td>
				                    </tr>
									<tr class="">
										<td></td>
				                        <td class="right"></td>
				                        <td></td>
				                        <td class="left"></td>
			                    	</tr>
									<tr class="">
										<td></td>
				                        <td class="right"></td>
				                        <td></td>
				                        <td class="left"></td>
				                    </tr>
								</tbody>
							</table>
							<p class="message ">적립금 내역이 없습니다.</p>
	        			</div>
					</div>
				</div>
	
				<div class="xans-element- xans-myshop xans-myshop-historypaging ec-base-paginate">
					<a href="/myshop/mileage/historyList.html?page=1" class="first">
						<img src="//img.echosting.cafe24.com/skin/base/common/btn_page_first.gif" alt="첫 페이지">
					</a>
					<a href="/myshop/mileage/historyList.html?page=1">
						<img src="//img.echosting.cafe24.com/skin/base/common/btn_page_prev.gif" alt="이전 페이지">
					</a>
					<ol>
						<li class="xans-record-"><a href="?page=1" class="this">1</a></li>
	            	</ol>
					<a href="/myshop/mileage/historyList.html?page=1">
						<img src="//img.echosting.cafe24.com/skin/base/common/btn_page_next.gif" alt="다음 페이지">
					</a>
					<a href="/myshop/mileage/historyList.html?page=1" class="last">
						<img src="//img.echosting.cafe24.com/skin/base/common/btn_page_last.gif" alt="마지막 페이지">
					</a>
				</div>

	        </div><!-- content end  -->

	        <hr class="layout">
	        
<!-- footer -->
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
	</div>	    
</body>
</html>