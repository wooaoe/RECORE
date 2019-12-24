<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mypage_FundingList</title>

<link rel="stylesheet" type="text/css" href="cssMy/Mypage_OrderList_CSS.css"/>
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

<body id="main">


<!-- header 시작 -->
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
          </div>
        </div>
      </div>
    </div>
 	</div>
		      	
</section>
</div>
	
	
	
	
	

	<div id="wrap">
	    <div id="container">
	        <div id="content" style="margin-top: 100px;">
				<div class="titleArea">
				    <h2>펀딩조회</h2>
				</div>
				
				<!-- 주문내역 or 취소환불내역 선택 -->
				<div class="xans-element- xans-myshop xans-myshop-orderhistorytab ec-base-tab ">
					<ul class="menu">
						<li class="selected">
							<a href="/myshop/order/list.html?history_start_date=2019-09-19&amp;history_end_date=2019-12-18&amp;past_year=2018">펀딩내역조회 (0)</a>
						</li>
				    <!--     <li class="">
				       		<a href="/myshop/order/list.html?mode=cs&amp;history_start_date=2019-09-19&amp;history_end_date=2019-12-18&amp;past_year=2018">취소/반품/교환 내역 (0)</a>
				        </li>
				        <li class="displaynone">
				        	<a href="/myshop/order/list_old.html?mode=old&amp;history_start_date=2019-09-19&amp;history_end_date=2019-12-18&amp;past_year=2018">이전 주문내역 (0)</a>
				        </li> -->
				    </ul>
				</div>
				
				<!-- 날짜 선택 -->
				<form method="GET" id="OrderHistoryForm" name="OrderHistoryForm">
					<div class="xans-element- xans-myshop xans-myshop-orderhistoryhead ">
						<fieldset class="ec-base-box">
							<legend>검색기간설정</legend>
							
							<!-- 주문처리 상태 -->
					        <div class="stateSelect ">
					            <select id="order_status" name="order_status" class="fSelect">
									<option value="all">전체 펀딩상태</option>
									<option value="shipped_before">입금전</option>
									<option value="shipped_standby">배송준비중</option>
									<option value="shipped_begin">배송중</option>
									<option value="shipped_complate">배송완료</option>
									<option value="order_cancel">취소</option>
									<option value="order_exchange">교환</option>
									<option value="order_return">반품</option>
								</select>        
							</div>
							<!-- 기간 선택 -->
					        <span class="period">
					            <a href="#none" class="btnNormal" days="00"><img src="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date1.gif" offimage="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date1.gif" onimage="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date1_on.gif" alt="오늘"></a>
					            <a href="#none" class="btnNormal" days="07"><img src="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date2.gif" offimage="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date2.gif" onimage="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date2_on.gif" alt="1주일"></a>
					            <a href="#none" class="btnNormal" days="30"><img src="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date3.gif" offimage="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date3.gif" onimage="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date3_on.gif" alt="1개월"></a>
					            <a href="#none" class="btnNormal" days="90"><img src="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date4.gif" offimage="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date4.gif" onimage="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date4_on.gif" alt="3개월"></a>
					            <a href="#none" class="btnNormal" days="180"><img src="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date5.gif" offimage="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date5.gif" onimage="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date5_on.gif" alt="6개월"></a>
					        </span>
					        
					        <!-- 달력 선택 -->
					        <input id="history_start_date" name="history_start_date" class="fText hasDatepicker" readonly="readonly" size="10" value="2019-09-19" type="text">
					        <button type="button" class="ui-datepicker-trigger"><img src="//img.echosting.cafe24.com/skin/admin_ko_KR/myshop/ico_cal.gif" alt="..." title="..."></button> ~ <input id="history_end_date" name="history_end_date" class="fText hasDatepicker" readonly="readonly" size="10" value="2019-12-18" type="text">
					        <button type="button" class="ui-datepicker-trigger">
					        <img src="//img.echosting.cafe24.com/skin/admin_ko_KR/myshop/ico_cal.gif" alt="..." title="..."></button>        
					        <input alt="조회" id="order_search_btn" type="image" src="//img.echosting.cafe24.com/skin/admin_ko_KR/myshop/btn_search.gif">    
				        </fieldset>
				        
						<ul>
							<li>기본적으로 최근 3개월간의 자료가 조회되며, 기간 검색시 지난 펀딩내역을 조회하실 수 있습니다.</li>
					        <li>펀딩번호를 클릭하시면 해당 펀딩에 대한 상세내역을 확인하실 수 있습니다.</li>
					    </ul>
					</div>
					<input id="mode" name="mode" value="" type="hidden">
					<input id="term" name="term" value="" type="hidden">
				</form>
				
				<!-- 주문 상품 정보 -->
				<div class="xans-element- xans-myshop xans-myshop-orderhistorylistitem ec-base-table typeList">
					<div class="title">
				    	<h3>펀딩 참여 정보</h3>
				    </div>
				    
					<table border="1" summary="">
						<caption>펀딩 참여 정보</caption>
				        <colgroup>
							<col style="width:135px;">
							<col style="width:93px;">
							<col style="width:auto;">
							<col style="width:61px;">
							<col style="width:111px;">
							<col style="width:111px;">
							<col style="width:111px;">
						</colgroup>
						<thead>
							<tr>
								<th scope="col">참여일자<br>[참여번호]</th>
				                <th scope="col">이미지</th>
				                <th scope="col">상품정보</th>
				                <th scope="col">수량</th>
				                <th scope="col">상품구매금액</th>
				                <th scope="col">주문처리상태</th>
				                <th scope="col">취소/교환/반품</th>
				            </tr>
			            </thead>
						<tbody class="center displaynone">
							<tr class="">
								<td class="number displaynone">
				                	<p></p>
						            <p><a href="detail.html" class="line">[]</a></p>
				                    <a href="#none" class="btnNormal displaynone" onclick="">펀딩취소</a>
				                    <a href="cancel.html" class="btnNormal displaynone">취소신청</a>
				                    <a href="exchange.html" class="btnNormal displaynone">교환신청</a>
				                    <a href="return.html" class="btnNormal displaynone">반품신청</a>
				                </td>
				                <td class="thumb">
				                	<a href="/product/detail.html">
				                	<img src="//img.echosting.cafe24.com/thumb/img_product_small.gif" onerror="this.src='//img.echosting.cafe24.com/thumb/img_product_small.gif';" alt=""></a>
			                	</td>
				                <td class="product left top">
				                    <strong class="name"></strong>
				                    <div class="option displaynone"></div>
				                    <ul class="xans-element- xans-myshop xans-myshop-optionset option">
				                    	<li class=""><strong></strong> (개)</li>
									</ul>
									<p class="gBlank5 displaynone">무이자할부 상품</p>
				                </td>
				                <td></td>
				                <td class="right">
									<strong></strong><div class="displaynone"></div>
								</td>
				                <td class="state">
				                    <p class="txtEm"></p>
				                    <p class="displaynone"><a href="" target=""></a></p>
				                    <p class="displaynone"><a href="#none" class="line" onclick="">[]</a></p>
				                    <a href="/board/product/write.html" class="btnSubmit displaynone">구매후기</a>
				                    <a href="#none" class="btnNormal displaynone" onclick="">취소철회</a>
				                    <a href="#none" class="btnNormal displaynone" onclick="">교환철회</a>
				                    <a href="#none" class="btnNormal displaynone" onclick="">반품철회</a>
				                </td>
				                <td>
				                    <p class="displaynone"><a href="#none" class="btnNormal" onclick="">상세정보</a></p>
				                    <p class="displaynone">-</p>
				                </td>
				            </tr>
							<tr class="">
								<td class="number displaynone">
				                    <p></p>
                                    <p><a href="detail.html" class="line">[]</a></p>
				                    <a href="#none" class="btnNormal displaynone" onclick="">펀딩취소</a>
				                    <a href="cancel.html" class="btnNormal displaynone">취소신청</a>
				                    <a href="exchange.html" class="btnNormal displaynone">교환신청</a>
				                    <a href="return.html" class="btnNormal displaynone">반품신청</a>
				                </td>
				                <td class="thumb">
				                	<a href="/product/detail.html">
				                	<img src="//img.echosting.cafe24.com/thumb/img_product_small.gif" onerror="this.src='//img.echosting.cafe24.com/thumb/img_product_small.gif';" alt="">
				                	</a>
			                	</td>
				                <td class="product left top">
				                    <strong class="name"></strong>
				                    <div class="option displaynone"></div>
				                    <ul class="xans-element- xans-myshop xans-myshop-optionset option">
										<li class=""><strong></strong> (개)</li>
									</ul>
									<p class="gBlank5 displaynone">무이자할부 상품</p>
				                </td>
				                <td></td>
				                <td class="right">
									<strong></strong>
									<div class="displaynone"></div>
								</td>
				                <td class="state">
				                    <p class="txtEm"></p>
				                    <p class="displaynone"><a href="" target=""></a></p>
				                    <p class="displaynone"><a href="#none" class="line" onclick="">[]</a></p>
				                    <a href="/board/product/write.html" class="btnSubmit displaynone">구매후기</a>
				                    <a href="#none" class="btnNormal displaynone" onclick="">취소철회</a>
				                    <a href="#none" class="btnNormal displaynone" onclick="">교환철회</a>
				                    <a href="#none" class="btnNormal displaynone" onclick="">반품철회</a>
				                </td>
				                <td>
				                    <p class="displaynone"><a href="#none" class="btnNormal" onclick="">상세정보</a></p>
				                    <p class="displaynone">-</p>
				                </td>
				            </tr>
						</tbody>
					</table>
					<p class="message ">펀딩 내역이 없습니다.</p>
				</div>
	
				<div class="xans-element- xans-myshop xans-myshop-orderhistorypaging ec-base-paginate">
					<a href="?page=1&amp;history_start_date=2019-09-19&amp;history_end_date=2019-12-18&amp;past_year=2018" class="first">
						<img src="//img.echosting.cafe24.com/skin/base/common/btn_page_first.gif" alt="첫 페이지">
					</a>
					<a href="?page=1&amp;history_start_date=2019-09-19&amp;history_end_date=2019-12-18&amp;past_year=2018">
						<img src="//img.echosting.cafe24.com/skin/base/common/btn_page_prev.gif" alt="이전 페이지">
					</a>
					<ol>
						<li class="xans-record-">
							<a href="?page=1&amp;history_start_date=2019-09-19&amp;history_end_date=2019-12-18&amp;past_year=2018" class="this">1</a>
						</li>
				    </ol>
					<a href="?page=1&amp;history_start_date=2019-09-19&amp;history_end_date=2019-12-18&amp;past_year=2018">
						<img src="//img.echosting.cafe24.com/skin/base/common/btn_page_next.gif" alt="다음 페이지">
					</a>
					<a href="?page=1&amp;history_start_date=2019-09-19&amp;history_end_date=2019-12-18&amp;past_year=2018" class="last">
						<img src="//img.echosting.cafe24.com/skin/base/common/btn_page_last.gif" alt="마지막 페이지">
					</a>
				</div>
			</div>
	        
	       <!--  <hr class="layout"> -->
	        

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
                  <input type="text" style = "height:50px;"class="form-control border-white text-white bg-transparent" placeholder="Enter Email" aria-label="Enter Email" aria-describedby="button-addon2">
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