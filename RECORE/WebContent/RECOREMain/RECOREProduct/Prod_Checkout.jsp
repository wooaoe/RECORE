<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%request.setCharacterEncoding("UTF-8");%>
	<%response.setContentType("text/html; charset=UTF-8");%>
	
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
	<%@ page import = "com.mvc.vo.Vo_Prod_option" %>
	<%@ page import = "com.mvc.vo.Vo_Product" %>
	<%@ page import = "com.mvc.vo.Vo_Account" %>
	<%@ page import = "java.util.List" %>
	<%@ page import = "java.util.ArrayList" %>
	
	
    
<!DOCTYPE html>
<html>
<head>
<title>
RECORE-CHECKOUT
</title>
    
<meta charset="utf-8">

<meta name="description" content="">

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="format-detection" content="telephone=no">
<meta name="viewport"
      content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
<meta content="9e69513f-3466-4c49-a861-ec68fe0777c8" name="csrf-token">
<meta name="google-site-verification" content="BR5o5r7ViKMPI6vloq9TUj0OAZkmujygD-KXjxO2ABY" />

    <!-- <link rel="shortcut icon" href="https://assets.kolonmall.com/_ui/img/favicon/series/favicon-ada37e71c5.ico"/>
    <link rel="icon" href="https://assets.kolonmall.com/_ui/img/favicon/series/favicon-32-707cb76054.png" sizes="32x32">
    <link rel="icon" href="https://assets.kolonmall.com/_ui/img/favicon/series/favicon-128-d1761d33cd.png" sizes="128x128">
    <link rel="apple-touch-icon-precomposed" href=""> -->


<link rel="stylesheet" href="https://assets.kolonmall.com/_ui/css/kop/common-f380db13f2.css"/>
<link rel="stylesheet" href="https://assets.kolonmall.com/_ui/css/kop/desktop/application-1b80a09c0c.css"/>

<link rel="stylesheet" href="https://assets.kolonmall.com/_ui/css/series/desktop/application-9bf7fef9f4.css"/>

<link rel="stylesheet" href="https://assets.kolonmall.com/_ui/css/build/kop/desktop-3fea64876b.bundle.css"/>

<link rel="stylesheet" href="https://assets.kolonmall.com/_ui/css/kop/desktop/Order-a59824e1c6.css"/>




<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito+Sans:200,300,400,700,900"> 
    <link rel="stylesheet" href="<%=request.getContextPath()%>/RECOREMain/fonts/icomoon/style.css">

    <link rel="stylesheet" href="<%=request.getContextPath()%>/RECOREMain/css/magnific-popup.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/RECOREMain/css/jquery-ui.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/RECOREMain/css/owl.carousel.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/RECOREMain/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/RECOREMain/css/bootstrap-datepicker.css">
    
    
    <link rel="stylesheet" href="<%=request.getContextPath()%>/RECOREMain/fonts/flaticon/font/flaticon.css">
  
    <link rel="stylesheet" href="<%=request.getContextPath()%>/RECOREMain/css/aos.css">

    <link rel="stylesheet" href="<%=request.getContextPath()%>/RECOREMain/css/style.css">
    
    <style type="text/css">
   
    /* 전체적인 폼 위치 편경 */
    #kolon-content{

    	position: relative;
    	margin: 0px 0 80px;
    	overflow: hidden;
    	padding-left: 50px;
    	padding-right: 50px;
    
    }
    
    .way-info {
	float: left;
	width: 300px
}
    
    </style>
    
</head>


<body class = "series-site V2 layout-width-1000">

	<% List<Vo_Prod_option> polist = (List)request.getAttribute("polist");%>
	<% Vo_Product pvo = (Vo_Product)request.getAttribute("pvo"); 
		int price = 0;
		for(int i = 0; i < polist.size(); i++){
		 if(polist.get(i).getProd_no() == pvo.getProd_no()){
			price = polist.get(i).getProd_stock() * pvo.getProd_price(); 
		 }else{ 
		} 	
	   }
	%>
	
	<% Vo_Account acc = (Vo_Account)session.getAttribute("acc"); %>
	<% String[] arr = acc.getAcc_phone().split("-"); %>

<!-- header -->
	<%@ include file="/header.jsp" %>

<section id="kolon-content">
	<article class="cart-wrap">
		<h3>주문서 작성</h3>
		<ul class="cart-step">
			<span>장바구니</span>
			<span class="active">주문서작성</span>
			<span class="last">주문완료</span>
		</ul>
		<div>
			<div class="order-lists">
				<p class="all-select">주문상품(1)</p>
				<table class="table table-order-desktop">
					<colgroup>
						<col width="100px">
						<col>
						<col width="214px">
						<col width="126px">
						<col width="235px">
					</colgroup>
					<thead>
						<tr>
							<th class="text-left">상품정보</th>
							<th>&nbsp;</th>
							<th>판매금액</th>
							<th>수량</th>
							<th>배송방법</th>
						</tr>
					</thead>
					
					<!-- 장바구니에 담았던 상품 정보 들어감 -->
					<tbody>
						<tr>
							<td class="thumb" style = ""><a href="product_detail_test.html"><img
									src="<%=request.getContextPath()%>/RECOREMain/RECOREProduct/product/${pvo.prod_no}/f_img.png"
									alt=""></a></td>
									
							<td class="product text-left">
								<!-- @@ 상품 브랜드 @@ -->
								<h4 style = "position: relative; top: 20px;">
									${pvo.prod_brand}&nbsp;
								</h4>
								<p style = "width: 600px; position: relative; top: 20px;">
									<a href="/Product/RYBAW19152KHX">${pvo.prod_name}</a>
								</p>
								
								<ul class="meta" style = "position: relative; top: 20px;">
									<li><em>수량</em>
									<% for(int i = 0; i < polist.size(); i++){ %>
									<% if(pvo.getProd_no() == polist.get(i).getProd_no()) { %>
										<span><%=polist.get(i).getProd_stock()%></span></li>
									<li><em>옵션</em>&nbsp;<span><%=polist.get(i).getProd_color() %>,
									<%=polist.get(i).getProd_size()%></span></li>
									<% } else { %>
									<% } %>
									<% } %>
								</ul>
								<div class="options"></div>
								</td>
							<td class="price">
							<fmt:formatNumber value="${pvo.prod_price}" groupingUsed="true">
							</fmt:formatNumber>원
							</td>
							<!-- @@ 상품 수량 @@ -->
							<td class="range">
							<% for(int i = 0; i < polist.size(); i++){ %>
									<% if(pvo.getProd_no() == polist.get(i).getProd_no()) { %>
										<%=polist.get(i).getProd_stock()%>
									<% } else { %>
									<% } %>
									<% } %>
							</td>
							<td class="delivery division" rowspan="1"><div>택배배송</div>
								<div class="cost">배송비 무료</div></td>
						</tr>
					</tbody>
				</table>
			</div>
			
			
			<!-- 주문상품 금액 / 배송비 / 총 주문금액 -->
			<div class="billing-v2">
				<div class="default-pay">
					<div>
					<c:set var = "sum" value = "${pvo.prod_price}"></c:set>
						<strong>주문상품금액</strong>
						<span>
						<fmt:formatNumber value="<%=price%>" 
						groupingUsed="true"></fmt:formatNumber>원
						</span>
					</div>
				</div>
				<div class="delivery-cost">
					<div class="before">
						<div>
							<strong>총 배송비</strong><span>0</span>원
						</div>
					</div>
				</div>
				<div class="sale-pay">
					<div class="before">
						<div>
							<strong>총 할인금액</strong> <span id="totalDiscounts">0원</span>
						</div>
					</div>
				</div>
				<div class="total">
					<div>
						<strong>총 주문금액</strong><span id="totalBasePriceV2"><em><fmt:formatNumber value="<%=price%>" 
						groupingUsed="true"></fmt:formatNumber></em>원</span>
					</div>
				</div>
			</div>
		</div>
		
		
		<!-- 주문자 정보 입력 -->
		<form>
			<div class="order-write">
				<h5>주문고객 / 배송지 정보</h5>
				<dl class="order-form">
					<dt>주문고객</dt>
					<dd class="user-info">
						<span id="customerNameArea"><%=acc.getAcc_name()%></span><span
							id="customerMobileNumberArea"><%=acc.getAcc_phone() %></span><span
							id="customerEmailArea"><%=acc.getAcc_email() %></span>
					</dd>
					<dt class="mb-22">
						받는분<em class="required" aria-required="true">필수</em>
					</dt>
					<dd class="mb-22">
						<div class="col-2">
							<input name="firstName" type="text" placeholder="이름을 입력하세요."
								maxlength="10" value="<%=acc.getAcc_name()%>">
						</div>
					</dd>
					<dt></dt>
					<dd class="min-height-auto">
						<div class="col-2 col-3 radio-wrap">
							<span class="radio"><input name="deliveryType"
								type="radio" id="user_sameV2" value="SAME_CUSTOMER_ADDRESS"><i></i>&nbsp;<label
								for="user_sameV2">주문고객과 동일</label></span><span class="radio"><input
								name="deliveryType" type="radio" id="new_addrV2" value="NEW"><i></i>&nbsp;<label
								for="new_addrV2">새로 입력</label></span><span class="radio"><input
								name="deliveryType" type="radio" id="cvs_addrV2" value="CVSNET">
								</span>
							<button type="button" class="btn btn-line btn-small" style = "background-color:#A0D9D9; color: white">
							나의 	배송지</button>
						</div>
					</dd>
					
					<div style= "display: block;">
						<dt>
							우편번호<em class="required" aria-required="true">필수</em>
						</dt>
						<dd>
							<div class="row">
								<div class="col-2">
									<input name="postalCode" type="text" id="postalCode"
										readonly="" value="">
								</div>
								<div class="col-3">
									<button type="button" class="btn btn-line btn-small" style = "background-color:#A0D9D9; color: white;">
									우편번호찾기</button>
								</div>
							</div>
							<div class="row">
								<input name="line1" type="text" class="full"
									placeholder="상세주소를 입력하세요." readonly="" value="">
							</div>
						</dd>
					</div>
					<div class="addr-cvs" style="display: none;">
						<dt>
							주소<em class="required" aria-required="true">필수</em>
						</dt>
						<dd>
							<div class="row">
								ddddddddd
							</div>
						</dd>
					</div>
					
					<!-- 휴대폰/전화번호/배송메모 입력받는 폼 -->
					<dt>
						휴대폰<em class="required" aria-required="true">필수</em>
					</dt>
					<dd>
						<div class="col-phone">
							<input type="hidden" name="cellPhone"><select
								name="cellPhone1"><option value="010">010</option>
								<option value="011">011</option>
								<option value="016">016</option>
								<option value="017">017</option>
								<option value="018">018</option>
								<option value="019">019</option></select><input name="cellPhone2"
								type="tel" maxlength="4" value="<%= arr[1]%>"><input
								name="cellPhone3" type="tel" maxlength="4" value="<%=arr[2]%>">
						</div>
					</dd>
					<dt>전화번호</dt>
					<dd>
						<div class="col-phone">
							<input type="hidden" name="phone"><select name="phone01"><option
									value="02">02</option>
								<option value="031">031</option>
								<option value="032">032</option>
								<option value="033">033</option>
								<option value="041">041</option>
								<option value="042">042</option>
								<option value="043">043</option>
								<option value="050">050</option>
								<option value="051">051</option>
								<option value="052">052</option>
								<option value="053">053</option>
								<option value="054">054</option>
								<option value="055">055</option>
								<option value="061">061</option>
								<option value="062">062</option>
								<option value="063">063</option>
								<option value="064">064</option>
								<option value="070">070</option>
								<option value="010">010</option>
								<option value="011">011</option>
								<option value="016">016</option>
								<option value="0130">0130</option></select><input name="phone02"
								type="tel" maxlength="4" value=""><input name="phone03"
								type="tel" maxlength="4" value="">
						</div>
					</dd>
					
					<!-- 배송 메모 -->
					<dt>
						배송메모<em></em>
					</dt>
					
					<!-- 배송시 요청사항 -->
					<dd>
						<div class="row">
							<span class="select col-2"><select name="deliveryMemo"><option
										value="">배송시 요청사항을 선택해 주세요</option>
									<option value="부재 시 경비실에 맡겨주세요">부재 시 경비실에 맡겨주세요</option>
									<option value="빠른 배송 부탁드립니다">빠른 배송 부탁드립니다</option>
									<option value="배송 전 연락바랍니다">배송 전 연락바랍니다</option>
									<option value="txtbox">직접입력</option></select></span>
						</div>
					</dd>
				</dl>
			</div>
		</form>
		<!-- <div class="order-write sale-select">
			<h5>할인혜택</h5>
			<dl class="order-form">
				<dt>프로모션 / 쿠폰</dt>
				<dd>
					<p class="tit">사용 가능한 할인 혜택</p>
					<p class="sale-summary">
						<strong>적용 할인 혜택 : <em>0</em>원
						</strong>프로모션 할인 : 0건 / 쿠폰 할인 : 0장
						<button type="button"
							class="btn btn-line btn-small btn-apply-sale">할인혜택 적용하기</button>
					</p>
				</dd>
			</dl>
		</div> -->
		
		
		<!-- 포인트 사용 -->
		<form>
			<div class="order-write sale-select">
			<br>
			<!-- 예치금 -->
			<dt>적립금</dt>
			<div>
				<input type = "text" value = "원" style = "text-align: right;"/>&nbsp;&nbsp;&nbsp;&nbsp;
				<span class="checkbox"><input name="allDepositCheckbox" type="checkbox" 
				id="allDepositCheckboxV2" value=""><i></i></span>
				<label for="allDepositCheckboxV2">모두사용</label>
			</div>
		</form>
		
		
		<!-- 결제수단 선택 폼 -->
		<form>
			<div class="order-info" id="paymentMethodAreaV2">
				<div class="way">
					<h5>결제수단선택</h5>
					<ul id="paymentMethodListAreaV2">
						<!-- <li><input type="radio" id="cardV2" name="paymentMethod"
							value="CARDNICEPAY"><label for="cardV2" class="card">신용카드</label></li>
						<li><input type="radio" id="naverV2" name="paymentMethod"
							value="NAVERPAY"><label for="naverV2" class="naver">네이버페이</label></li> -->
						<li><input type="radio" id="kakaoV2" name="paymentMethod"
							value="KAKAOPAY"><label for="kakaoV2" class="kakao">카카오페이</label></li>
						<!-- <li><input type="radio" id="smileV2" name="paymentMethod"
							value="SMILEPAY"><label for="smileV2" class="smile">스마일페이</label></li>
						<li><input type="radio" id="paycoV2" name="paymentMethod"
							value="PAYCO"><label for="paycoV2" class="payco">페이코</label></li>
						<li><input type="radio" id="bankV2" name="paymentMethod"
							value="BANDTRANSFERLGUPLUS"><label for="bankV2"
							class="bank">실시간 계좌이체</label></li> -->
					</ul>
					<span class="checkbox keep-payment"><input
						name="keepPayment" type="checkbox" id="keepPayment" value=""><i></i></span><label
						for="keepPayment">지금 선택한 결제수단을 다음에도 사용</label>
				</div>
				
		
				<!-- 신용카드 이용안내 폼 -->
				
				<div class="way-info01">
					<br><br>
					<div class="card01" style="display: block;">
						<br><br>
						<h5 style = "text-align: center;">신용카드 이용안내</h5>
						<br>
						<dl>
							<dt style = "text-align: center;">무이자 할부</dt>
							<dd>
								<ul style = "position: center;">
									<li><span class="thumb"><img
											src="//s3-ap-northeast-2.amazonaws.com/kop.images/Comm_Img/card/card41.gif"
											alt="신한카드"></span><span class="txt">5만원이상 2~6개월 무이자할부</span></li>
									<li><span class="thumb"><img
											src="//s3-ap-northeast-2.amazonaws.com/kop.images/Comm_Img/card/card51.gif"
											alt="삼성카드"></span><span class="txt">5만원이상 2~6개월 무이자할부</span></li>
									<li><span class="thumb"><img
											src="//s3-ap-northeast-2.amazonaws.com/kop.images/Comm_Img/card/card61.gif"
											alt="현대카드"></span><span class="txt">5만원이상 2~6개월 무이자할부</span></li>
									<li><span class="thumb"><img
											src="//s3-ap-northeast-2.amazonaws.com/kop.images/Comm_Img/card/card31.gif"
											alt="BC카드"></span><span class="txt">5만원이상 2~6개월 무이자할부</span></li>
									<li><span class="thumb"><img
											src="//s3-ap-northeast-2.amazonaws.com/kop.images/Comm_Img/card/card91.gif"
											alt="NH카드"></span><span class="txt">5만원이상 2~6개월 무이자할부</span></li>
									<li><span class="thumb"><img
											src="//s3-ap-northeast-2.amazonaws.com/kop.images/Comm_Img/card/card32.gif"
											alt="하나SK카드"></span><span class="txt">5만원이상 2~6개월 무이자할부</span></li>
									<li><span class="thumb"><img
											src="//s3-ap-northeast-2.amazonaws.com/kop.images/Comm_Img/card/card11.gif"
											alt="국민카드"></span><span class="txt">5만원이상 2~5개월 무이자할부</span></li>
									<li><span class="thumb"><img
											src="//s3-ap-northeast-2.amazonaws.com/kop.images/Comm_Img/card/card35.gif"
											alt="전북카드"></span><span class="txt">5만원이상 2~3개월 무이자할부</span></li>
								</ul>
							</dd>
							<dt style = "text-align: center;">즉시할인</dt>
							<dd>
								<ul>
									<li><span class="thumb"><img
											src="//s3-ap-northeast-2.amazonaws.com/kop.images/Comm_Img/card/card11.gif"
											alt="국민카드"></span><span class="txt">30만원 이상 결제 시
											20,000원 즉시 할인(선착순 1,500명 혜택 적용)</span></li>
								</ul>
							</dd>
						</dl>
					</div>
				</div>
			</div>
		</form>
		
		
		<div class="cart-info">
			<div class="col">
			
		<%-- 	<%@ include file="/RECOREMain/RECOREProduct/footer.jsp" %>  --%>
          </div>
		</div> 
		
		
		<!-- 오른쪽에 뜨는 결제 정보 폼 -->
		<div style="min-height: 771.063px;">
			<div class="react-sticky" style="transform: translateZ(0px);">
				<article class="sticky-menu" style = "position: relative; bottom: 800px;">
					<div class="sticky-bill" >
						<h1>결제정보</h1>
						<div class="default-pay">
							<div>
								<strong>주문상품금액</strong><span><fmt:formatNumber value="<%=price%>" 
						groupingUsed="true"></fmt:formatNumber><em>원</em></span>
							</div>
						</div>
						<div class="sale-pay">
						
						<!-- 프로모션과 쿠폰 할인금액 제외 -->
							<!-- <div>
								<strong>총 프로모션 할인금액</strong><span>- 0<em>원</em></span>
							</div>
							<div>
								<strong>총 쿠폰 할인금액</strong><span>- 0<em>원</em></span>
							</div> -->
							<div>
								<strong>총 보유금 사용</strong><span>- 0<em>원</em></span>
							</div>
						</div>
						<div class="delivery-cost">
							<div>
								<strong>총 배송비</strong><span>0<em>원</em></span>
							</div>
						</div>
						<div class="total">
							<div>
								<strong>총 결제예정금액</strong><span data-total-price="<fmt:formatNumber value="<%=price%>" 
						groupingUsed="true"></fmt:formatNumber>"><em><fmt:formatNumber value="<%=price%>" 
						groupingUsed="true"></fmt:formatNumber></em>원</span>
							</div>
						</div>
					</div>
					
					
					<!-- 주문 동의 -->
					<form>
						<div class="order-agree">
							<h5>주문동의</h5>
							<p>
								주문할 상품의 상품명, 상품가격, 배송정보를 확인하였으며, 구매에 동의하시겠습니까?<br>(전자상거래법
								제8조 제2항)
							</p>
							<p class="">주문제작상품의 경우, 교환/반품이 불가능 하다는 내용을 확인하였으며 이에 동의합니다.</p>
							<span class="checkbox"><input name="agree" type="checkbox"
								id="agreeV2" value=""><i></i></span><label for="agreeV2">동의합니다.</label>
						</div>
					</form>
					<div class="buttons end-row">
						<button type="button" class="ladda-button btn btn-order btn-big"
							id="checkoutFormSubmitBtnV2" data-style="zoom-in"
							data-ga-event-category="CHECKOUT" data-ga-event-action="BUTTON"
							data-ga-event-label="결제하기">
							<span class="ladda-label">결제하기</span><span class="ladda-spinner"></span>
							<div class="ladda-progress" style="width: 0px;"></div>
						</button>
					</div>
				</article>
			</div>
		</div>
	</article>
</section>

</body>
</html>

