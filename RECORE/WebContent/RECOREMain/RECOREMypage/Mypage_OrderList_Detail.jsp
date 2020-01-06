<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	
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
  
  .ec-base-table thead th {
    text-align: center;
  }
  
  .ec-base-box.typeMember .information > .title, .ec-base-box.typeMember .information > .thumbnail {
    width: 80px;
  }
  
  .xans-order-basketpackage .xans-order-empty p {
    margin: 50px 0;
    text-align: center;
    font-weight: bold;
    color: #707070;
  }
  
  ol, ul, dl {
    margin-top: 0;
    margin-bottom: 1rem;
  }
  
  [class^='btnSubmit'], a[class^='btnSubmit'] {
  	color: white;
  }
  
  </style>
</head>
<body id="main">
		<!-- header -->
	<%@ include file="/header.jsp" %>
	
	<div id="wrap">
	    
	    <div id="container">
	        <div id="content" style="margin-top: 30px;">
	  
				<div class="path">
	    			<span>현재 위치</span>
	    			<ol>
	    				<li><a href="/">홈</a></li>
	        			<li><a href="/myshop/index.html">마이쇼핑</a></li>
	        			<li title="현재 위치"><strong>주문상세조회</strong></li>
	    			</ol>
	    		</div>
	
				<div class="titleArea">
	    			<h2>주문상세조회</h2>
				</div>
	
				<form id="detailForm" name="detailForm" action="/exec/front/MyShop/OrderCancel/" method="POST" enctype="multipart/form-data">
					<input id="order_id" name="order_id" fw-filter="isFill" fw-label="주문번호" fw-msg="" value="20200105-0000311" type="hidden">
					<div class="xans-element- xans-myshop xans-myshop-orderhistorydetail xans-record-">
						<div class="orderArea">
	        				<div class="title">
	            				<h3>주문정보</h3>
	        				</div>
	
		        			<div class="ec-base-table">
		            			<table summary="">
									<caption>주문정보</caption>
						            <colgroup>
										<col style="width:160px">
										<col style="width:auto">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row">주문번호</th>
						                    <td>20200105-0000311</td>
						                </tr>
										<tr>
											<th scope="row">주문일자</th>
						                    <td>2020-01-05 22:16:01</td>
					                	</tr>
										<tr>
											<th scope="row">주문자</th>
						                    <td><span>박수지</span></td>
						                </tr>
										<tr>
											<th scope="row">주문처리상태</th>
						                    <td>
										                        배송전                        <button type="submit" class="btnNormal displaynone">주문취소</button>
					                    	</td>
						                </tr>
									</tbody>
								</table>
							</div>
	    				</div>
						<div class="orderArea">
	        				<div class="title">
	            				<h3>결제정보</h3>
	        				</div>
        					<div class="ec-base-table">
	            				<table summary="">
									<caption>결제정보</caption>
						            <colgroup>
										<col style="width:160px">
										<col style="width:auto">
									</colgroup>
									<tbody>
										<tr class="sum">
											<th scope="row">총 주문금액</th>
	                   						<td>
	                        					<span class="gSpace20">
	                            					<strong class="txt14">3,500</strong>원                            <span class="displaynone"></span>
	                        					</span>
	                        					<a href="#none" onclick="OrderLayer.onDiv('order_layer_detail', event);" class="btnNormal">내역보기</a>
                    						</td>
	                					</tr>
                					</tbody>
									<tbody class="">
										<tr class="sum">
											<th scope="row">총 할인금액</th>
						                    <td><strong class="txt14">2,600</strong>원</td>
						                </tr>
										<tr class="">
											<th scope="row">쿠폰할인</th>
						                    <td>
					                        	<span class="gSpace20">2,500원</span>
						                        <a href="#none" class="eUsedCouponDetail btnNormal">내역보기</a>
						                    </td>
					                	</tr>
										<tr class="">
											<th scope="row">추가할인금액</th>
						                    <td>
						                        <span class="gSpace20">100원</span>
						                        <a href="#none" class="btnNormal" onclick="OrderLayer.onDiv('order_layer_addsale', event);">내역보기</a>
						                    </td>
						                </tr>
									</tbody>
								</table>
							</div>
	        				<div class="ec-base-table total">
	            				<table summary="">
									<caption>결제정보</caption>
	            					<colgroup>
										<col style="width:160px">
										<col style="width:auto">
									</colgroup>
									<tbody>
										<tr class="sum">
											<th scope="row">총 결제금액</th>
	                    					<td>
						                        <span class="txtEm">
						                            <strong class="txt18">900</strong>원                            <span class="displaynone"></span>
						                        </span>
						                    </td>
						                </tr>
										<tr class="">
											<th scope="row">결제수단</th>
	                    					<td>
						                        <strong><span>카드 결제</span></strong>
						                        <p>
						                            <span>명세서에 나이스 올더게이트(으)로 표기됩니다</span> <a target="_blank" href="" class="btnNormal displaynone">인터넷뱅킹 바로가기</a>
						                            <a target="_blank" href="" class="btnNormal displaynone" id="">결제사이트 바로가기</a>
						                        </p>
	                    					</td>
	                					</tr>
									</tbody>
								</table>
							</div>
	    				</div>
						<div class="orderArea">
	        				<div class="title">
	            				<h3>주문 상품 정보</h3>
	        				</div>
	
	        				<div class="ec-base-table typeList">
	            				<table summary="" class="">
									<caption>기본배송</caption>
	                				<colgroup>
										<col style="width:92px">
										<col style="width:auto">
										<col style="width:60px">
										<col style="width:100px">
										<col style="width:95px">
										<col style="width:110px">
										<col style="width:110px">
									</colgroup>
									<thead>
										<tr style="color:black; height:45px;">
											<th scope="col">이미지</th>
					                        <th scope="col">상품정보</th>
					                        <th scope="col">수량</th>
					                        <th scope="col">판매가</th>
					                        <th scope="col">배송구분</th>
					                        <th scope="col">주문처리상태</th>
					                        <th scope="col">취소/교환/반품</th>
					                    </tr>
				                    </thead>
									<tfoot class="right">
										<tr>
											<td colspan="7">
											<span class="gLeft">[기본배송]</span> 상품구매금액 <strong>1,000</strong><span class="displaynone"> + 부가세 0</span> + 배송비 2,500 + 지역별배송비 0<span class="displaynone"> - 상품할인금액 100</span> = 합계 :  <strong class="txtEm gIndent10"><span class="txt18">3,500원</span></strong> <span class="displaynone"></span>
											</td>
	                    				</tr>
                    				</tfoot>
                    				<tbody class="xans-element- xans-myshop xans-myshop-orderhistorydetailbasic center">
                    					<tr class="xans-record-">
											<td class="thumb">
												<a href="/product/detail.html?product_no=274&amp;cate_no=45">
												<img src="//dalisalda.com/web/product/tiny/20191206/889890962e963b68f5167ecba5cae375.jpg" alt="" onerror="this.src='//img.echosting.cafe24.com/thumb/img_product_small.gif';">
												</a>
											</td>
	                        				<td class="left">
	                            				<strong class="name">
	                            				<a href="/product/네니아귤은껍질까지-100ml/274/category/45/" class="ec-product-name">[네니아]<br>귤은껍질까지 100ml</a>
	                            				</strong>
	                            				<div class="option "></div>
	                        				</td>
	                        				<td>1</td>
	                        				<td class="right">
					                            <div class="">
					                                <strong>1,000원</strong>
					                                <div class="displaynone"></div>
					                            </div>
					                            <div class="displaynone">
					                                <strong>900원</strong>
					                                <div class="displaynone"></div>
					                            </div>
	                        				</td>
	                        				<td>
	                        					<div class="txtInfo">기본배송<div class="displaynone">(해외배송가능)</div></div>
	                        				</td>
					                        <td class="state">
					                            <p class="txtEm">배송준비중</p>
					                            <p class="displaynone"><a href="#" target="_self"></a></p>
					                            <p class="displaynone"><a href="#none" class="line" onclick="">[]</a></p>
					                            <a href="#none" class="btnNormal displaynone" onclick="OrderHistory.withdraw('C','20200105-0000311|274|000A|5283','', 'F')">취소철회</a>
					                            <a href="#none" class="btnNormal displaynone" onclick="OrderHistory.withdraw('E','20200105-0000311|274|000A|5283','', 'F')">교환철회</a>
					                            <a href="#none" class="btnNormal displaynone" onclick="OrderHistory.withdraw('R','20200105-0000311|274|000A|5283','', 'F')">반품철회</a>
					                        </td>
					                        <td>
					                            <p class="displaynone"><a href="#none" class="btnNormal" onclick="OrderLayer.getDetailInfo('?product_no=274&amp;order_id=20200105-0000311&amp;ord_item_code=20200105-0000311-01');">상세정보</a></p>
					                            <p class="">-</p>
					                        </td>
					                    </tr>
									</tbody>
								</table>
							</div>
    					</div>
						<div class="orderArea">
					        <div class="title">
					            <h3>배송지정보</h3>
					        </div>
					        <div class="ec-base-table">
					            <table summary="">
									<caption>배송지정보</caption>
					            	<colgroup>
										<col style="width:160px">
										<col style="width:auto">
									</colgroup>
									<tbody>
										<tr class="displaynone">
											<th scope="row">수령지</th>
	                    					<td>
						                        <strong></strong>
						                        <ul class="list">
													<li>- 주소 : </li>
						                            <li>- 전화번호 : </li>
						                            <li>- 영업시간 : </li>
						                            <li>- 수령 가능일 : </li>
						                            <li>- 수령지 안내 : </li>
						                        </ul>
												<div class="map displaynone">
	                            					<p>* 약도</p>
                                                </div>
	                    					</td>
	                					</tr>
										<tr>
											<th scope="row">받으시는분</th>
						                    <td><span>박수지</span></td>
						                </tr>
										<tr class="">
											<th scope="row">우편번호</th>
					                    	<td><span>11815</span></td>
						                </tr>
										<tr class="">
											<th scope="row">주소</th>
						                    <td><span>경기도 의정부시 용민로 441 (민락동) 엘에이치브라운빌리지 1404동 1704호</span></td>
						                </tr>
										<tr>
											<th scope="row">일반전화</th>
						                    <td></td>
					                	</tr>
										<tr>
											<th scope="row">휴대전화</th>
					                    	<td><span>010-7428-7272</span></td>
					                	</tr>
										<tr>
											<th scope="row">배송메시지</th>
						                    <td><span></span></td>
										</tr>
									</tbody>
								</table>
							</div>
					    </div>
						<div class="ec-base-button">
					        <span class="gRight">
					            <a href="/myshop/order/list.html?page=1" class="btnSubmitFix sizeM">주문목록보기</a>
					        </span>
					    </div>
					</div>
				</form>        
			</div>
		</div>
	</div>
	
	<br><br><br>
          <!-- footer -->
          
		<%@ include file="/footer.jsp" %>
	
	
</body>
<style type="text/css">
html {
    width: 100%;
    height: 100%;
}

body {
    min-width: 1050px;
}
body, code {
    font-family: 'Noto Sans KR',sans-serif;
    color: #353535;
    background: #fff;
    font-size: 13px;
}
html, body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, pre, code, form, fieldset, legend, input, textarea, p, blockquote, th, td, img {
    margin: 0;
    padding: 0;
}
body {
    display: block;
    margin: 0px;
}
#wrap {
    position: relative;
    margin: 0 auto;
}
div {
    display: block;
}
#container {
    margin: 0 auto;
    *zoom: 1;
    min-width: 1050px;
}
#container:after {
    content: "";
    display: block;
    clear: both;
}

#content {
    width: 1050px;
    /* margin: 200px auto 100px; */
    margin: auto;
}
.path {
    overflow: hidden;
    height: 60px;
    line-height: 30px;
    *zoom: 1;
}
.path span {
    overflow: hidden;
    position: absolute;
    width: 0;
    height: 0;
    white-space: nowrap;
    text-indent: 100%;
}
.path ol {
    float: right;
}
ol {
    display: block;
    list-style-type: decimal;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;
}
.path li:first-child {
    background: none;
}
.path li {
    float: left;
    padding: 0 0 0 12px;
    margin: 0 0 0 8px;
    color: #757575;
    background: url(//img.echosting.cafe24.com/skin/base/layout/ico_path.gif) no-repeat 0 10px;
}
li {
    list-style: none;
}
li {
    display: list-item;
    text-align: -webkit-match-parent;
}
.path li a {
    color: #757575;
}
a {
    text-decoration: none;
    color: #000;
}
a {
    text-decoration: none!important;
}
user agent stylesheet
a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
    text-decoration: underline;
}
.path li strong, .path li strong a {
    color: #2e2e2e;
}
strong {
    font-weight: bold;
}
.titleArea {
    width: 1050px;
    min-height: 30px;
    margin: 30px auto 20px;
}
.titleArea h2 {
    display: inline-block;
    color: #2e2e2e;
    font-size: 25px;
    *display: inline;
    border: 0px;
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
form {
    display: block;
    margin-top: 0em;
}
input, select, textarea {
    font-size: 100%;
    font-family: "돋움",Dotum;
    color: #353535;
    vertical-align: middle;
}
input[type="hidden" i] {
    display: none;
    -webkit-appearance: initial;
    background-color: initial;
    cursor: default;
    padding: initial;
    border: initial;
}
input {
    -webkit-writing-mode: horizontal-tb !important;
    text-rendering: auto;
    color: -internal-light-dark-color(black, white);
    letter-spacing: normal;
    word-spacing: normal;
    text-transform: none;
    text-indent: 0px;
    text-shadow: none;
    display: inline-block;
    text-align: start;
    -webkit-appearance: textfield;
    background-color: -internal-light-dark-color(white, black);
    -webkit-rtl-ordering: logical;
    cursor: text;
    margin: 0em;
    font: 400 13.3333px Arial;
    padding: 1px 0px;
    border-width: 2px;
    border-style: inset;
    border-color: initial;
    border-image: initial;
}
.xans-myshop-orderhistorydetail .orderArea:first-child .title {
    margin-top: 0;
}
.xans-myshop-orderhistorydetail .title {
    margin: 40px 0 10px 10px;
}
.xans-myshop-orderhistorydetail .title h3 {
    color: #353535;
    font-size: 12px;
}
h1, h3 {
    margin: 0;
}
h3 {
    display: block;
    font-size: 1.17em;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
}
.ec-base-table table {
    position: relative;
    margin: 10px 0 0;
    border: 1px solid #d7d5d5;
    border-top: 0;
    color: #fff;
    line-height: 1.5;
}
table {
    width: 100%;
    border: 0;
    border-spacing: 0;
}
table {
    width: 100%;
    border: 0;
    border-spacing: 0;
    font-size: 13px;
}
table[Attributes Style] {
    border-top-width: 1px;
    border-right-width: 1px;
    border-bottom-width: 1px;
    border-left-width: 1px;
}
table {
    display: table;
    border-spacing: 2px;
    border-color: grey;
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
colgroup {
    display: table-column-group;
}
col {
    display: table-column;
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
.ec-base-table th:first-child {
    border-left: 0;
}
.ec-base-table tbody th {
    padding: 11px 0 10px 18px;
    border: 1px solid #dfdfdf;
    border-bottom-width: 0;
    color: #353535;
    text-align: left;
    font-weight: normal;
    background-color: #fff;
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
.ec-base-table td {
    padding: 11px 10px 10px;
    border-top: 1px solid #dfdfdf;
    color: #353535;
    vertical-align: middle;
    word-break: break-all;
    word-wrap: break-word;
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
.displaynone {
    display: none !important;
}
button {
    overflow: visible;
    padding: 0;
    margin: 0;
    border: 0;
    cursor: pointer;
}
button {
    -webkit-appearance: button;
    -webkit-writing-mode: horizontal-tb !important;
    text-rendering: auto;
    color: buttontext;
    letter-spacing: normal;
    word-spacing: normal;
    text-transform: none;
    text-indent: 0px;
    text-shadow: none;
    display: inline-block;
    text-align: center;
    align-items: flex-start;
    cursor: default;
    background-color: buttonface;
    box-sizing: border-box;
    margin: 0em;
    font: 400 13.3333px Arial;
    padding: 1px 6px;
    border-width: 2px;
    border-style: outset;
    border-color: buttonface;
    border-image: initial;
}
.xans-myshop-orderhistorydetail .title {
    margin: 40px 0 10px 10px;
}
.xans-myshop-orderhistorydetail .title h3 {
    color: #353535;
    font-size: 12px;
}
.ec-base-table table {
    position: relative;
    margin: 10px 0 0;
    border: 1px solid #d7d5d5;
    border-top: 0;
    color: #fff;
    line-height: 1.5;
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
.xans-myshop-orderhistorydetail .ec-base-table .sum th, .xans-myshop-orderhistorydetail .ec-base-table .sum td {
    font-weight: bold;
    background: #fbfafa;
}
.ec-base-table th:first-child {
    border-left: 0;
}
.ec-base-table tbody th {
    padding: 11px 0 10px 18px;
    border: 1px solid #dfdfdf;
    border-bottom-width: 0;
    color: #353535;
    text-align: left;
    font-weight: normal;
    background-color: #fff;
}
.ec-base-table th {
    word-break: break-all;
    word-wrap: break-word;
}
.xans-myshop-orderhistorydetail .ec-base-table .sum th, .xans-myshop-orderhistorydetail .ec-base-table .sum td {
    font-weight: bold;
    background: #fbfafa;
}
.ec-base-table td {
    padding: 11px 10px 10px;
    border-top: 1px solid #dfdfdf;
    color: #353535;
    vertical-align: middle;
    word-break: break-all;
    word-wrap: break-word;
}
.gSpace20 {
    margin-right: 20px;
}
.txt14 {
    font-size: 14px;
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
.xans-myshop-orderhistorydetail .ec-base-table tbody + tbody tr:first-child th, .xans-myshop-orderhistorydetail .ec-base-table tbody + tbody tr:first-child td {
    border-top: 1px solid #e9e9e9;
}
.xans-myshop-orderhistorydetail .ec-base-table .sum th, .xans-myshop-orderhistorydetail .ec-base-table .sum td {
    font-weight: bold;
    background: #fbfafa;
}
.ec-base-table th:first-child {
    border-left: 0;
}
.ec-base-table tbody th {
    padding: 11px 0 10px 18px;
    border: 1px solid #dfdfdf;
    border-bottom-width: 0;
    color: #353535;
    text-align: left;
    font-weight: normal;
    background-color: #fff;
}
.ec-base-table th {
    word-break: break-all;
    word-wrap: break-word;
}
.gSpace20 {
    margin-right: 20px;
}
.xans-myshop-orderhistorydetail .ec-base-table.total table {
    position: relative;
    z-index: 1;
    margin: -1px 0 0;
   /*  border: 1px solid #777; */
}
.xans-myshop-orderhistorydetail .ec-base-table.total table:before {
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
.txtEm {
    color: #333;
}
.txt18 {
    font-size: 18px;
    letter-spacing: -1px;
}
p {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}
.xans-myshop-orderhistorydetail .title {
    margin: 40px 0 10px 10px;
}
.xans-myshop-orderhistorydetail .title h3 {
    color: #353535;
    font-size: 12px;
}
.ec-base-table.typeList table {
    border-top: 1px solid #d7d5d5;
}
.ec-base-table table {
    position: relative;
    margin: 10px 0 0;
    border: 1px solid #d7d5d5;
    border-top: 0;
    color: #fff;
    line-height: 1.5;
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
.ec-base-table .right {
    text-align: right;
}
tfoot {
    display: table-footer-group;
    vertical-align: middle;
    border-color: inherit;
}
.ec-base-table.typeList tfoot td {
    padding: 15px 10px 17px;
    background: #fff;
}
.ec-base-table.typeList td {
    padding: 8px 10px 7px;
}
.xans-myshop-orderhistorydetail .ec-base-table tfoot .gLeft {
    float: left;
    margin: 6px 0 0;
}
.ec-base-table .right {
    text-align: right;
}
.gIndent10 {
    margin-left: 10px;
}
.txt18 {
    font-size: 18px;
    letter-spacing: -1px;
}
.ec-base-table .center {
    text-align: center;
}
.ec-base-table.typeList .center td, .ec-base-table.typeList td.center {
    padding-left: 0;
    padding-right: 0;
}
.ec-base-table.typeList td {
    padding: 8px 10px 7px;
}
.xans-myshop-orderhistorydetail .ec-base-table .thumb img {
    width: 80px;
}
.ec-base-table img {
    vertical-align: middle;
}
img, fieldset {
    border: none;
    vertical-align: top;
}
.ec-base-table.typeList .center td.left {
    padding-left: 10px;
}
.ec-base-table.typeList .center td, .ec-base-table.typeList td.center {
    padding-left: 0;
    padding-right: 0;
}
.ec-base-table.typeList td {
    padding: 8px 10px 7px;
}
.ec-base-table .left {
    text-align: left;
}
.xans-myshop-orderhistorydetail .ec-base-table div.option, .xans-myshop-orderhistorydetail .ec-base-table ul.option > li {
    margin: 9px 0 0;
    color: #757575;
    line-height: 16px;
}
.gBlank5 {
    display: block;
    margin-top: 5px;
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
.txtInfo {
    color: #707070;
}
.txtEm {
    color: #333;
}
.xans-myshop-orderhistorydetail .title {
    margin: 40px 0 10px 10px;
}
.xans-myshop-orderhistorydetail .title h3 {
    color: #353535;
    font-size: 12px;
}
.ec-base-button {
    padding: 10px 0;
    text-align: center;
}
.ec-base-button:after {
    display: block;
    content: "";
    clear: both;
}
.ec-base-button .gLeft {
    float: left;
    text-align: left;
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
.ec-base-button .gRight {
    float: right;
    text-align: right;
}
[class^='btn'][class*='Fix'].sizeM {
    width: 120px;
    padding-left: 8px;
    padding-right: 8px;
}
[class^='btn'][class*='Fix'] {
    width: 72px;
    word-break: keep-all;
    word-wrap: break-word;
}
[class^='btn'].sizeM {
    padding: 10px 16px;
}
[class^='btnSubmit'], a[class^='btnSubmit'] {
    display: inline-block;
    box-sizing: border-box;
    padding: 2px 8px;
    border: 1px solid transparent;
    border-radius: 2px;
    font-family: "굴림",Gulim;
    font-size: 12px;
    line-height: 18px;
    font-weight: normal;
    text-decoration: none;
    vertical-align: middle;
    word-spacing: -0.5px;
    letter-spacing: 0;
    text-align: center;
    white-space: nowrap;
    color: #fff;
    background-color: #05ce7c;
}
.xans-myshop-orderhistorydetail .totalDetail {
    display: none;
    width: 300px;
    color: #757575;
}
.ec-base-layer {
    position: absolute;
    z-index: 100;
    border: 1px solid #757575;
    background: #fff;
}
.ec-base-layer .header {
    padding: 7px 35px 7px 19px;
    color: #fff;
    background: #124734;
}
.ec-base-layer .header > h1, .ec-base-layer .header > h3 {
    font-size: 14px;
    line-height: 1.5;
}
.ec-base-layer .content {
    padding: 20px;
    font-size: 12px;
}
.xans-myshop-orderhistorydetail .totalDetail .content p {
    margin: 0 0 8px;
    padding: 0 0 10px;
    color: #008bcc;
    font-size: 16px;
    font-weight: bold;
    text-align: right;
    border-bottom: 1px dotted #b0b1b3;
}
.ec-base-desc {
    overflow: hidden;
    text-align: left;
}
.ec-base-desc:after {
    content: "";
    display: block;
    clear: both;
}
.ec-base-desc.typeDot dt, .ec-base-desc.typeDot .term {
    position: relative;
    padding: 0 4px 0 10px;
}
.ec-base-desc.gLarge dt, .ec-base-desc.gLarge .term {
    width: 50%;
}
.ec-base-desc dt, .ec-base-desc .term {
    float: left;
    width: 100px;
    margin: 0 0 2px;
    padding: 0 4px 0 0;
    line-height: 22px;
    -webkit-box-sizing: border-box;
    -moz-webkit-box: border-box;
    box-sizing: border-box;
    font-weight: normal;
}
.ec-base-desc.typeDot dt:before, .ec-base-desc.typeDot .term:before {
    position: absolute;
    top: 50%;
    left: 0;
    content: "";
    display: block;
    width: 2px;
    height: 2px;
    margin: -2px 0 0 0;
    background: #383838;
}
.ec-base-desc.rightDD dd, .ec-base-desc.rightDD .desc {
    padding-right: 0;
}
.ec-base-desc.rightDT dt, .ec-base-desc.rightDD dd, .ec-base-desc.rightDT .term, .ec-base-desc.rightDD .desc, .ec-base-desc.right, .ec-base-desc .right {
    text-align: right;
}
.ec-base-desc.gLarge dd, .ec-base-desc.gLarge .desc {
    padding: 0 0 0 50%;
}
.ec-base-desc dd, .ec-base-desc .desc {
    display: block;
    margin: 0 0 2px;
    padding: 0 5px 0 100px;
    min-height: 22px;
    line-height: 22px;
    word-wrap: break-word;
    word-break: break-all;
}
.ec-base-desc dd:after, .ec-base-desc .desc:after {
    content: "";
    display: block;
    clear: left;
}
.ec-base-layer .close {
    position: absolute;
    right: 0;
    top: 0;
    padding: 11px 20px;
    cursor: pointer;
}
.xans-myshop-orderhistorydetail .totalDetail {
    display: none;
    width: 300px;
    color: #757575;
}
.ec-base-layer {
    position: absolute;
    z-index: 100;
    border: 1px solid #757575;
    background: #fff;
}
.ec-base-layer .header {
    padding: 7px 35px 7px 19px;
    color: #fff;
    background: #124734;
}
.ec-base-layer .header > h1, .ec-base-layer .header > h3 {
    font-size: 14px;
    line-height: 1.5;
}
.ec-base-layer .content {
    padding: 20px;
    font-size: 12px;
}
.xans-myshop-orderhistorydetail .totalDetail .content p {
    margin: 0 0 8px;
    padding: 0 0 10px;
    color: #008bcc;
    font-size: 16px;
    font-weight: bold;
    text-align: right;
    border-bottom: 1px dotted #b0b1b3;
}
.ec-base-desc {
    overflow: hidden;
    text-align: left;
}
.ec-base-desc:after {
    content: "";
    display: block;
    clear: both;
}
.ec-base-layer .close {
    position: absolute;
    right: 0;
    top: 0;
    padding: 11px 20px;
    cursor: pointer;
} 


</style>
</html>