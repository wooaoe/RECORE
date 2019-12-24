<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mypage_Mileage</title>

<style type="text/css">
/* 전체적인 부분 */
html {
    width: 100%;
    height: 100%;
}

html, body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, pre, code, form, fieldset, legend, input, textarea, p, blockquote, th, td, img {
    margin: 0;
    padding: 0;
}

* {
    font-family: "Noto Sans KR",sans-serif;
}

html {
    display: block;
    color: -internal-root-color;
}

::selection {
    background: #FFD209;
    color: #231815;
}

body {
    background: #fff;
}

body, code {
    font-size: 12px;
    color: #353535;
    background: #fff;
}

body {
    display: block;
    margin: 8px;
}

html {
    color: -internal-root-color;
}

/* 적립금 바디부분 */
.all_wrap {
    position: relative;
}

div {
    display: block;
}

@media (max-width: 1670px)
.site_body {
    max-width: 1200px;
    margin: 0 0 0 230px;
}

.site_body {
    max-width: 1200px;
    margin: 0 auto;
}

.contents_66 {
    min-height: 450px;
}

/* 적립금바디 title */
.titleArea {
    min-height: 30px;
    margin: 20px 0 40px;
    text-align: center;
}

.titleArea h2 {
    display: inline-block;
    color: #e52731;
    font-size: 21px;
    *display: inline;
}

h2 {
    display: block;
    font-size: 1.5em;
    margin-block-start: 0.83em;
    margin-block-end: 0.83em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
}

.titleArea p {
    display: inline-block;
    position: relative;
    margin: 0 0 0 6px;
    padding: 0 0 0 10px;
    color: #939393;
    *display: inline;
    display: none;
}

p {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}

.titleArea p:before {
    display: inline-block;
    position: absolute;
    top: 0;
    left: 0;
    content: "";
    width: 1px;
    height: 13px;
    border-left: 1px solid #d9d9d9;
}

/* 적립금 현황 */
.ec-base-box.gHalf {
    position: relative;
    padding: 20px 0;
}

.ec-base-box {
    padding: 24px;
    margin-left: auto;
    margin-right: auto;
    border: 1px solid #dcdcdc;
    color: #404040;
}

.xans-myshop-summary {
    margin: 0 0 20px;
}

.ec-base-box.gHalf:before {
    position: absolute;
    top: 0;
    left: 50%;
    display: block;
    content: "";
    width: 1px;
    height: 100%;
    background-color: #e6e6e6;
}

ul {
    display: block;
    list-style-type: disc;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 0px;
}

.ec-base-box {
    padding: 24px;
    margin-left: auto;
    margin-right: auto;
    border: 1px solid #dcdcdc;
    color: #404040;
}

.xans-myshop-summary ul:after {
    content: "";
    display: block;
    clear: both;
}

.xans-myshop-summary ul li {
    float: left;
    margin: 5px 0;
    padding: 0 45px;
    width: 50%;
    height: 20px;
    font-size: 12px;
    line-height: 1.6;
    vertical-align: top;
    box-sizing: border-box;
}

li {
    list-style: none;
}

li {
    display: list-item;
    text-align: -webkit-match-parent;
}

.xans-myshop-summary .title {
    float: left;
    width: 50%;
    font-weight: normal;
    box-sizing: border-box;
}

strong {
    font-weight: bold;
}

.xans-myshop-summary .data {
    float: left;
    width: 50%;
    padding: 0 10px 0 10px;
    text-align: right;
    box-sizing: border-box;
}

/* 적립내역보기 바 */
.ec-base-tab {
    position: relative;
}

.ec-base-tab .menu {
    margin: 0 0 20px;
    border: 1px solid #cbcdce;
    border-bottom-color: #202020;
    border-left: 0;
    background: #f2f2f2;
    box-sizing: border-box;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
}

.ec-base-tab .menu:after {
    content: "";
    display: block;
    clear: both;
}

.ec-base-tab .menu li {
    float: left;
    border-left: 1px solid #cbcdce;
    background: #f2f2f2;
}

li {
    list-style: none;
}

li {
    display: list-item;
    text-align: -webkit-match-parent;
}

.ec-base-tab .menu li.selected:first-child a {
    left: -1px;
}

.ec-base-tab .menu li.selected a {
    position: relative;
    top: -1px;
    left: -2px;
    margin: 0 0 -1px;
    border: 1px solid #202020;
    border-bottom: 0;
    color: #fff;
    font-weight: bold;
    background: #333333;
}

.ec-base-tab .menu li:first-child a {
    margin-left: 0;
}

.ec-base-tab .menu li a {
    display: block;
    min-width: 187px;
    margin: 0 0 0 -1px;
    padding: 12px 5px 11px;
    border-right: 1px solid #cbcdce;
    color: #707070;
    text-decoration: none;
    outline: 0;
    text-align: center;
    background: #f2f2f2;
}

a {
    text-decoration: none;
    color: #000;
}

a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
    text-decoration: underline;
}

/* 적립금 상세내역 테이블 */
.ec-base-table.typeList table {
    border-top: 2px solid #333333;
}

.ec-base-table table {
    position: relative;
    margin: 10px 0 0;
    color: #fff;
    line-height: 1.5;
}

table {
    width: 100%;
    border: 0;
    border-spacing: 0;
    border-collapse: collapse;
}

table {
    display: table;
    border-collapse: separate;
    border-spacing: 2px;
    border-color: grey;
}

.ec-base-table.typeList table:before {
    display: none;
}

.ec-base-table table:before {
    position: absolute;
    top: 0;
    left: 0;
    display: block;
    content: "";
    width: 100%;
    height: 1px;
    background: #d7d5d5;
}

caption {
    display: none;
}

caption {
    display: table-caption;
    text-align: -webkit-center;
}

.ec-base-table table {
    position: relative;
    margin: 10px 0 0;
    color: #fff;
    line-height: 1.5;
}

table {
    width: 100%;
    border: 0;
    border-spacing: 0;
    border-collapse: collapse;
}

colgroup {
    display: table-column-group;
}

col {
    display: table-column;
}

thead {
    display: table-header-group;
    vertical-align: middle;
    border-color: inherit;
}

tr {
    display: table-row;
    vertical-align: inherit;
    border-color: inherit;
}

.ec-base-table th:first-child {
    border-left: 0;
}

.ec-base-table thead th {
    padding: 11px 0 10px;
    border-bottom: 1px solid #c1c1c1;
    color: #353535;
    vertical-align: middle;
    font-weight: normal;
}

.ec-base-table th {
    word-break: break-all;
    word-wrap: break-word;
}

th, td {
    border: 0;
    vertical-align: top;
}

th {
    display: table-cell;
    vertical-align: inherit;
    font-weight: bold;
    text-align: -internal-center;
}

.ec-base-table .center {
    text-align: center;
}

tbody {
    display: table-row-group;
    vertical-align: middle;
    border-color: inherit;
}

tr {
    display: table-row;
    vertical-align: inherit;
    border-color: inherit;
}

.ec-base-table.typeList .center td, .ec-base-table.typeList td.center {
    padding-left: 0;
    padding-right: 0;
}

.ec-base-table.typeList td {
    padding: 8px 10px 7px;
}

.ec-base-table td {
    padding: 11px 10px 10px;
    border-top: 1px solid #dfdfdf;
    color: #353535;
    vertical-align: middle;
    word-break: break-all;
    word-wrap: break-word;
}

td {
    display: table-cell;
    vertical-align: inherit;
}

.ec-base-table.typeList .center td.right {
    padding-right: 10px;
}

.ec-base-table.typeList .center td, .ec-base-table.typeList td.center {
    padding-left: 0;
    padding-right: 0;
}

.ec-base-table.typeList td {
    padding: 8px 10px 7px;
}

.ec-base-table .right {
    text-align: right;
}

.ec-base-table td {
    padding: 11px 10px 10px;
    border-top: 1px solid #dfdfdf;
    color: #353535;
    vertical-align: middle;
    word-break: break-all;
    word-wrap: break-word;
}

a {
    text-decoration: none;
    color: #000;
}

a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
    text-decoration: underline;
}

.ec-base-table.typeList .center td.left {
    padding-left: 10px;
}

.ec-base-table table + .message {
    margin: -1px 0 0;
}

.ec-base-table .message {
    border-bottom: 1px solid #dcdcdc;
    padding: 50px 0;
    text-align: center;
    color: #757575;
    font-weight: bold;
}

.displaynone {
    display: none !important;
}

p {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}

/* 페이지 넘어가는 부분 */
.ec-base-paginate {
    margin: 30px 0;
    text-align: center;
    font-size: 0;
    line-height: 0;
}

.ec-base-paginate img {
    vertical-align: top;
}

img, fieldset {
    border: none;
    vertical-align: top;
}

.ec-base-paginate ol {
    display: inline-block;
    font-size: 0;
    line-height: 0;
    vertical-align: top;
    *display: inline;
    *zoom: 1;
    *margin: 0;
}

ol {
    display: block;
    list-style-type: decimal;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 0px;
}

.ec-base-paginate li:first-child {
    margin-left: 0;
}

.ec-base-paginate li {
    display: inline-block;
    margin: 0 0 0 -1px;
    border: 1px solid #d7d5d5;
    font-size: 12px;
    color: #757575;
    vertical-align: top;
    *display: inline;
    *zoom: 1;
}

li {
    display: list-item;
    text-align: -webkit-match-parent;
}

.ec-base-paginate li a.this {
    padding-bottom: 6px;
    border-bottom: 3px solid #FFD209;
    background: #FFD209;
    color: #333;
}

.ec-base-paginate li a {
    display: block;
    width: 33px;
    padding: 9px 0;
    font-weight: bold;
    color: #939393;
    line-height: 14px;
    background: #fff;
}

a:link { color: black; text-decoration: none;}
a:visited { color: black; text-decoration: none;}

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
<body>
	
	<div class="all_wrap">
	
		<div class="site_body">
			<div class="logo_top">
				
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
				
				
				
				
				
				
				
				
				
				
			</div>
		
			<div class="contents_66">
		
				<div class="xans-element- xans-myshop xans-myshop-mileagehistorypackage ">
					<div class="xans-element- xans-myshop xans-myshop-head titleArea ">
						<h2>적립금</h2>
						<p>고객님의 사용가능 적립금 금액 입니다.</p>
					</div>
					<div class="xans-element- xans-myshop xans-myshop-summary ec-base-box gHalf">
						<ul>
							<li class="">
								<strong class="title">총 적립금</strong> <span class="data"><span id="xans_myshop_summary_total_mileage">1,210원</span>&nbsp;</span>
							</li>
			           		<li class="">
								<strong class="title">사용가능 적립금</strong> <span class="data"><span id="xans_myshop_summary_avail_mileage">210원</span>&nbsp;</span>
							</li>
			           	 	<li class="">
								<strong class="title">사용된 적립금</strong> <span class="data"><span id="xans_myshop_summary_used_mileage">1,000원</span>&nbsp;</span>
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
				            <li><a href="/myshop/mileage/unavailList.html">미가용적립내역보기</a></li>
				            <li><a href="/myshop/mileage/couponList.html">미가용쿠폰/회원등급적립내역</a></li>
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
								<tbody class=" center">
									<tr class="xans-record-">
										<td>2016-07-07</td>
				                        <td class="right">160원</td>
				                        <td><a href="/myshop/order/detail.html?order_id=20160629-0000705">20160629-0000705</a></td>
				                        <td class="left">구매에 대한 적립금</td>
			                    	</tr>
									<tr class="xans-record-">
										<td>2016-06-29</td>
				                        <td class="right">-1,000원</td>
				                        <td><a href="/myshop/order/detail.html?order_id=20160629-0000705">20160629-0000705</a></td>
				                        <td class="left">상품구매시 사용한 적립금</td>
				                    </tr>
								</tbody>
							</table>
							<p class="message displaynone">적립금 내역이 없습니다.</p>
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
				
				<!-- <div class="xans-element- xans-myshop xans-myshop-head ec-base-help ">
					<h3>적립금 안내</h3>
					<div class="inner">
				        <ol class="xans-element- xans-myshop xans-myshop-historyinfo">
				        	<li class="item1 ">주문으로 발생한 적립금은 배송완료 후 3일 부터 실제 사용 가능한 적립금으로 전환됩니다. 배송완료 시점으로부터 3일 동안은 미가용 적립금으로 분류됩니다. </li>
							<li class="item2 ">미가용 적립금은 반품, 구매취소 등을 대비한 임시 적립금으로 사용가능 적립금으로 전환되기까지 상품구매에 사용하실 수 없습니다.</li>
							<li class="item3 ">사용가능 적립금(총적립금 - 사용된적립금 - 미가용적립금)은 상품구매 시 바로 사용가능합니다.</li>
						</ol>
					</div>
				</div> -->
				
			</div><!-- .contents_66 -->
		</div><!-- .site_body -->
	</div><!-- .all_wrap -->
		
		
	<!-- <div class="tail_wrap">
		풋터@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
	</div> -->
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
	
	
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>