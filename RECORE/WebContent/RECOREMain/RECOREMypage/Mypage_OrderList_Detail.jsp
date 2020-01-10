<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8");%>
<%@ page import="com.mvc.vo.Vo_Account" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mypage_OrderList_Detail</title>
	
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
  a[class^='btnNormal']:hover {
  	color: #F56D3E;
  }
  a:hover {
    color: #F56D3E;
    text-decoration: underline;
  }
  .ec-base-paginate li a.this {
    padding-bottom: 0px;
    border-bottom: 0px;
    color: #939393;
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
   html{
  	scroll-behavior : smooth;
  }
  </style>
<script type="text/javascript">
	function updateStatus(status,order_no,prod_id){ //주문상태 변경
		location.href = "mypage.do?command=updateorder&orderno="+order_no+"&prodid="+prod_id+"&status="+status;
		
	}
	
	function managerUpdate(order_no,prod_id){ //관리자 운송장 번호 등록
		var tno = prompt('운송장 번호를 입력하세요','');
		location.href = "mypage.do?command=managerupdate&tno="+tno+"&orderno="+order_no+"&prodid="+prod_id;
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
	        <div id="content" style="margin-top: 30px;">
	  
				<div class="path">
	    			<span>현재 위치</span>
	    			<ol>
	    				<li><a href="/">홈</a></li>
	        			<li><a href="mypage.do?command=main">마이쇼핑</a></li>
	        			<li title="현재 위치"><strong>주문상세조회</strong></li>
	    			</ol>
	    		</div>
	
				<div class="titleArea">
	    			<h2>주문상세조회</h2>
				</div>
	
				<form id="detailForm" name="detailForm" action="/exec/front/MyShop/OrderCancel/" method="POST" enctype="multipart/form-data">
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
						                    <td>${vo_order.order_no}</td>
						                </tr>
										<tr>
											<th scope="row">주문일자</th>
						                    <td>${vo_order.order_date}</td>
					                	</tr>
										<tr>
											<th scope="row">주문자</th>
						                    <td><span>${vo_acc.acc_name}</span></td>
						                </tr>
										<%-- <tr>
											<th scope="row">주문처리상태</th>
						                    <td>${vo_olist.order_status}</td>
						                </tr> --%>
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
	                   						<c:set var="sum" value="0"></c:set>
	                   						<c:forEach var="tmp" items="${vo_olist}"> <!-- 총 주문 금액 -->
	                   							<c:set var="sum" value="${sum + (tmp.order_price * tmp.order_amount)}"></c:set>
	                   						</c:forEach>
	                        					<span class="gSpace20">
	                            					<strong class="txt14"><fmt:formatNumber value="${sum}" groupingUsed="true"></fmt:formatNumber></strong>원
	                        					</span>
                    						</td>
	                					</tr>
                					</tbody>
									<tbody class="">
										<tr class="sum">
											<th scope="row">총 할인금액</th>
						                    <td><strong class="txt14"><fmt:formatNumber value="${vo_order.order_point}" groupingUsed="true"></fmt:formatNumber></strong>원</td>
						                </tr>
										<!-- <tr class="">
											<th scope="row">쿠폰할인</th>
						                    <td>
					                        	<span class="gSpace20">2,500원</span>
						                        <a href="#none" class="eUsedCouponDetail btnNormal">내역보기</a>
						                    </td>
					                	</tr> -->
										<!-- <tr class="">
											<th scope="row">추가할인금액</th>
						                    <td>
						                        <span class="gSpace20">100원</span>
						                        <a href="#none" class="btnNormal" onclick="OrderLayer.onDiv('order_layer_addsale', event);">내역보기</a>
						                    </td>
						                </tr> -->
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
						                            <strong class="txt18"><fmt:formatNumber value="${sum - vo_order.order_point}" groupingUsed="true"></fmt:formatNumber></strong>원
						                        </span>
						                    </td>
						                </tr>
										<tr class="">
											<th scope="row">결제수단</th>
	                    					<td>
						                        <strong><span>카드 결제</span></strong>
						                        <p>
						                            <span>명세서에 나이스 올더게이트(으)로 표기됩니다</span>
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
											<span class="gLeft">[기본배송]</span> 상품구매금액 <strong><fmt:formatNumber value="${sum}" groupingUsed="true"></fmt:formatNumber></strong> + 배송비 0 - 상품할인금액 <fmt:formatNumber value="${vo_order.order_point}" groupingUsed="true"></fmt:formatNumber> = 합계 :  <strong class="txtEm gIndent10"><span class="txt18"><fmt:formatNumber value="${sum - vo_order.order_point}" groupingUsed="true"></fmt:formatNumber>원</span></strong>
											</td>
	                    				</tr>
                    				</tfoot>
                    				<tbody class="xans-element- xans-myshop xans-myshop-orderhistorydetailbasic center">
                    				<c:forEach var="olist" items="${vo_olist}">
                    					<tr class="xans-record-">
											<td class="thumb">
												<a href="Product.do?command=ProdDetail&pseq=${olist.prod_no}&catdno=${olist.catd_no}">
												<img src="<%=request.getContextPath() %>/RECOREMain/RECOREProduct/product/${olist.prod_no}/f_img.png" alt="">
												</a>
											</td>
	                        				<td class="left">
	                            				<strong class="name">
	                            				<a href="Product.do?command=ProdDetail&pseq=${olist.prod_no}&catdno=${olist.catd_no}" class="ec-product-name">[${olist.prod_brand}]<br>${olist.prod_name}</a>
	                            				</strong>
	                            				<div class="option "></div>
	                        				</td>
	                        				<td>${olist.order_amount}</td> <!-- 수량@@@@ -->
	                        				<td class="right">
					                            <div class="">
					                                <strong><fmt:formatNumber value="${olist.order_price}" groupingUsed="true"></fmt:formatNumber>원</strong>
					                            </div>
	                        				</td>
	                        				<td>
	                        					<div class="txtInfo">기본배송</div>
	                        				</td>
					                        <td class="state">
					                            <p class="txtEm">${olist.order_status}</p>
					                        </td>
					                        <td>
					                        	<c:choose>
					                        		<c:when test="<%=acc.getAcc_no() == 1 %>">
					                        			<c:if test="${olist.order_status eq '입금완료' and olist.order_tno eq 0}">
							                				<a href="javascript:managerUpdate(${vo_order.order_no},${olist.prod_id})" class="btnNormal">배송상태변경</a>
							                			</c:if>
					       							</c:when>
					       							<c:otherwise>
							                        	<!-- 주문상태에 따른 버튼 -->
									                	<c:if test="${olist.order_status eq '입금완료' or olist.order_status eq '배송준비중'}">
									                		<a href="javascript:updateStatus('취소',${vo_order.order_no},${olist.prod_id})" class="btnNormal">취소신청</a>
									                	</c:if>
									                	<c:if test="${olist.order_status eq '배송중' }">
										                    <a href="javascript:updateStatus('배송완료',${vo_order.order_no},${olist.prod_id})" class="btnNormal">구매확정</a>
									                	</c:if>
									                	<c:if test="${olist.order_status eq '배송완료'}">
										                    <a href="javascript:updateStatus('교환',${vo_order.order_no},${olist.prod_id})" class="btnNormal">교환신청</a>
										                    <a href="javascript:updateStatus('반품',${vo_order.order_no},${olist.prod_id})" class="btnNormal">반품신청</a>
									                    </c:if>
									                    <c:if test="${olist.order_status eq '배송완료' and olist.order_isreview ne 'Y'}">
									                    	<a href="mypage.do?command=reviewform&orderno=${vo_order.order_no}&prodid=${olist.prod_id}" class="btnNormal">리뷰작성</a>
									                    </c:if>
					       							</c:otherwise>               	
					                        	</c:choose>
					                        </td>
					                    </tr>
					                    </c:forEach>
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
										<tr>
											<th scope="row">받으시는분</th>
						                    <td><span>${vo_acc.acc_name}</span></td>
						                </tr>
										<tr class="">
											<th scope="row">우편번호</th>
					                    	<td><span>${vo_order.order_zipcode}</span></td>
						                </tr>
										<tr class="">
											<th scope="row">주소</th>
						                    <td><span>${vo_order.order_addr}&nbsp;${vo_order.order_addr2}</span></td>
						                </tr>
										<tr>
											<th scope="row">일반전화</th>
						                    <td></td>
					                	</tr>
										<tr>
											<th scope="row">휴대전화</th>
					                    	<td><span>${vo_acc.acc_phone}</span></td>
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
					            <a href="mypage.do?command=orderlist&pageno=1" class="btnSubmitFix sizeM" style="background-color:#A0D9D9;">주문목록보기</a>
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