<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
%>
<%
	response.setContentType("text/html; charset=UTF-8");
%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="com.mvc.vo.Vo_Prod_option"%>
<%@ page import="com.mvc.vo.Vo_Product"%>
<%@ page import="com.mvc.vo.Vo_Account"%>
<%@ page import="com.mvc.vo.Vo_Order_Num"%>
<%@ page import="com.mvc.vo.Vo_Order"%>


<!DOCTYPE html>
<html>
<head>
<title>RECORE-CHECKOUT</title>

<meta charset="utf-8">

<meta name="description" content="">

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="format-detection" content="telephone=no">
<meta name="viewport"
	content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
<meta content="9e69513f-3466-4c49-a861-ec68fe0777c8" name="csrf-token">
<meta name="google-site-verification"
	content="BR5o5r7ViKMPI6vloq9TUj0OAZkmujygD-KXjxO2ABY" />

<link rel="apple-touch-icon-precomposed" href="">


<link rel="stylesheet"
	href="https://assets.kolonmall.com/_ui/css/kop/common-f380db13f2.css" />
<link rel="stylesheet"
	href="https://assets.kolonmall.com/_ui/css/kop/desktop/application-1b80a09c0c.css" />

<link rel="stylesheet"
	href="https://assets.kolonmall.com/_ui/css/series/desktop/application-9bf7fef9f4.css" />

<link rel="stylesheet"
	href="https://assets.kolonmall.com/_ui/css/build/kop/desktop-3fea64876b.bundle.css" />

<link rel="stylesheet"
	href="https://assets.kolonmall.com/_ui/css/kop/desktop/Order-a59824e1c6.css" />

<!-- <script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script> -->

<!-- jQuery -->
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<!-- iamport.payment.js -->
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>


<%@ include file="/head.jsp"%>

<style type="text/css">

/* 전체적인 폼 위치 편경 */
#kolon-content {
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


<body class="series-site V2 layout-width-1000">

	<% Vo_Product pvo = (Vo_Product) request.getAttribute("pvo");%>
	<% Vo_Account acc = (Vo_Account) session.getAttribute("vo");%>
	<% String[] arr = acc.getAcc_phone().split("-");%>

	<script type="text/javascript">
    
	function payment(){
		
		if($("input:checkbox[id='agreeV2']").is(":checked") == false){
			alert("동의란을 체크하세요.");
		}else if($("#kakaoV2").prop("checked")==false){
			alert("결제수단을 체크해주세요.");
		}else{
			var popup1 = (document.body.offsetWidth / 2) - (434.4 / 2);
			//&nbsp;만들 팝업창 좌우 크기의 1/2 만큼 보정값으로 빼주었음

			var popup2= (document.body.offsetHeight / 2);
			//&nbsp;만들 팝업창 상하 크기의 1/2 만큼 보정값으로 빼주었음

			window.open("RECOREMain/RECOREProduct/kakaopay.jsp",  
					"popupNo2", "status=no, height=569.6, width=434.4" + ", left=" + popup1 + ",  top=" + popup2);
		}
	}
	function goPopup(){
		
		var popupX = (document.body.offsetWidth / 2) - (570 / 2);
		var popupY= (document.body.offsetHeight / 2);
		
	    var pop = window.open("RECOREMain/RECOREProduct/jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes," + "left=" + popupX + ", top=" + popupY);
		
	}
	
	/** API 서비스 제공항목 확대 (2017.02) **/
	function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn
			, detBdNmList, bdNm, bdKdcd, siNm, sggNm, emdNm, liNm, rn, udrtYn, buldMnnm, buldSlno, mtYn, lnbrMnnm, lnbrSlno, emdNo){
		// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
		document.form.roadAddrPart1.value = roadAddrPart1;
		document.form.addrDetail.value = addrDetail;
		document.form.zipNo.value = zipNo;
	}
   
	</script>

	<!-- header -->
	<%@ include file="/header.jsp"%>

	<section id="kolon-content">
		<article class="cart-wrap">
			<h3>주문서 작성</h3>
			<ul class="cart-step">
				<span>장바구니</span>
				<span class="active">주문서작성</span>
				<span class="last">주문완료</span>
			</ul>
			<div>
			<c:set var="count" value="0"></c:set>
			<c:forEach var = "prod" items = "${polist}" varStatus = "status">
			<c:set var="count" value="${polist.size()}"></c:set>
			</c:forEach>
				<div class="order-lists">
					<p class="all-select">주문상품(${count})</p>
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
						<c:forEach var = "prod" items = "${plist}" varStatus = "status">
							<tr>
								<td class="thumb" style="">
								 <a href="Product.do?command=ProdDetail&pseq=${prod.prod_no}&catdno=${prod.prod_catd}"><img
										src="<%=request.getContextPath()%>/RECOREMain/RECOREProduct/product/${prod.prod_no}/f_img.png"
										alt=""></a></td>

								<td class="product text-left">
									<!-- @@ 상품 브랜드 @@ -->
									<h4 style="position: relative; top: 20px;">
										${prod.prod_brand}&nbsp;</h4>
									<p style="width: 600px; position: relative; top: 20px;">
										<a href="Product.do?command=ProdDetail&pseq=${prod.prod_no}&catdno=${prod.prod_catd}">${prod.prod_name}</a>
									</p>

									<ul class="meta" style="position: relative; top: 20px;">
										<li><em>수량</em> <span>${prod_amount[status.index]}</span></li>
										<li><em>옵션</em>&nbsp; 
										<span> 
											${polist.get(status.index).getProd_color()}, &nbsp;${polist.get(status.index).getProd_size()}
										 </span>
										 </li>
									</ul>
									<div class="options"></div>
								</td>
								
								<td class="price">
								<fmt:formatNumber>${prod.prod_price * prod_amount[status.index]}
								</fmt:formatNumber>원</td>
								<!-- @@ 상품 수량 @@ -->
								<td class="range">${prod_amount[status.index]}</td>
								<td class="delivery division" rowspan="1"><div>택배배송</div>
									<div class="cost">배송비 무료</div></td>
							</tr>
						</c:forEach>
						</tbody>
					</table>
				</div>


				<!-- 주문상품 금액 / 배송비 / 총 주문금액 -->
				<div class="billing-v2">
					<div class="default-pay">
						<div>
							<c:set var="sum" value="0"></c:set>
							<c:forEach var = "prod" items = "${plist}" varStatus = "status">
							<c:set var="sum" value="${sum + prod.prod_price * prod_amount[status.index]}"></c:set>
							</c:forEach>
							<strong>주문상품금액</strong> 
							<span> 
								<fmt:formatNumber>${sum}</fmt:formatNumber>원
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
							<strong>총 주문금액</strong><span id="totalBasePriceV2">
							<em><fmt:formatNumber>${sum}
							</fmt:formatNumber></em>원</span>
						</div>
					</div>
				</div>
			</div>


			<!-- 주문자 정보 입력 -->
			<form id="form" name="form">

				<div class="order-write">
					<h5>주문고객 / 배송지 정보</h5>
					<dl class="order-form">
						<dt>주문고객</dt>
						<dd class="user-info">
							<span id="customerNameArea"><%=acc.getAcc_name()%></span><span
								id="customerMobileNumberArea"><%=acc.getAcc_phone()%></span><span
								id="customerEmailArea"><%=acc.getAcc_email()%></span>
						</dd>
						<dt class="mb-22">
							받는분<em class="required" aria-required="true" required = "required">필수</em>
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
								<span class="radio"> <input name="deliveryType"
									type="radio" id="user_sameV2" value="SAME_CUSTOMER_ADDRESS"><i></i>&nbsp;

									<label for="user_sameV2">주문고객과 동일</label></span> <span class="radio">
									<input name="deliveryType" type="radio" id="new_addrV2" value="NEW"><i></i>&nbsp; 
									<label for="new_addrV2">새로 입력</label>
								</span>

								<script type="text/javascript">
								
								$(document).ready(function(){
										$("#new_addrV2").click(function(){
											
											goPopup();
											
										});
										$("#user_sameV2").click(function(){
											
											$("#zipNo").val("<%=acc.getAcc_zipcode()%>");
											$("#roadAddrPart1").val("<%=acc.getAcc_addr()%>");
											$("#addrDetail").val("<%=acc.getAcc_addr2()%>");
										
										});
											
									});
								</script>
								<span class="radio"> <input name="deliveryType"
									type="radio" id="cvs_addrV2" value="CVSNET">
								</span>
							</div>
						</dd>

						<div style="display: block;">
							<dt>
								우편번호<em class="required" aria-required="true">필수</em>
							</dt>
							<dd>
								<div class="row">
									<div class="col-2">
										<input type="hidden" id="confmKey" name="confmKey" value="">
										<input type="text" id="zipNo" name="zipNo" placeholder="우편번호" />
									</div>
									<div class="col-3">
										<button type="button" class="btn btn-line btn-small"
											style="background-color: #A0D9D9; color: white;"
											onclick="goPopup();">우편번호찾기</button>
									</div>
								</div>
								<div class="row">
									<input type="text" id="roadAddrPart1" name="roadAddrPart1"
										class="inputTypeText" placeholder="도로명주소" readonly="readonly"
										value="" />
								</div>
								<div class="row">
									<input type="text" id="addrDetail" name="addrDetail"
										placeholder="상세주소" value="" />
								</div>
							</dd>
						</div>
						<div class="addr-cvs" style="display: none;">
							<dt>
								주소<em class="required" aria-required="true">필수</em>
							</dt>
							<dd>
								<div class="row"></div>
							</dd>
						</div>


						<!-- 휴대폰/전화번호/배송메모 입력받는 폼 -->
						<dt>
							휴대폰<em class="required" aria-required="true">필수</em>
						</dt>
						<dd>
							<div class="col-phone">
								<input type="hidden" name="cellPhone"> 
								<select name="cellPhone1">
									<option value="010">010</option>
									<option value="011">011</option>
									<option value="016">016</option>
									<option value="017">017</option>
									<option value="018">018</option>
									<option value="019">019</option>
								</select> 
								<input name="cellPhone2" type="tel" maxlength="4"
									value="<%=arr[1]%>"> <input name="cellPhone3"
									type="tel" maxlength="4" value="<%=arr[2]%>">
							</div>
						</dd>
						<dt>전화번호</dt>
						<dd>
							<div class="col-phone">
								<input type="hidden" name="phone">
								<select name="phone01">
									<option value="02">02</option>
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
									<option value="0130">0130</option>
									</select>
									<input name="phone02" type="tel" maxlength="4" value="">
									<input name="phone03" type="tel" maxlength="4" value="">
							</div>
						</dd>

						<!-- 배송 메모 -->
						<dt>
							배송메모<em></em>
						</dt>

						<!-- 배송시 요청사항 -->
						<dd>
							<div class="row">
								<span class="select col-2"> <select name="deliveryMemo">
										<option value="">배송시 요청사항을 선택해 주세요</option>
										<option value="부재 시 경비실에 맡겨주세요">부재 시 경비실에 맡겨주세요</option>
										<option value="빠른 배송 부탁드립니다">빠른 배송 부탁드립니다</option>
										<option value="배송 전 연락바랍니다">배송 전 연락바랍니다</option>
										<option value="txtbox">직접입력</option>
								</select>
								</span>
							</div>
						</dd>
					</dl>
				</div>
			</form>

			<!-- 포인트 사용 -->
			<form>
				<div class="order-write sale-select">
					<br>
					<dt>적립금</dt>
					<div>
						<input type="text" value = "<%=acc.getAcc_point()%>" id = "point" style="text-align: right;" />원&nbsp;&nbsp;&nbsp;&nbsp;
						<span class="checkbox">
						<input name="allDepositCheckbox" type="checkbox" id="allDepositCheckboxV2"><i></i>
						</span>
						<label for="allDepositCheckboxV2">모두사용</label>
					</div>
					<c:set var = "pointusing" value = "<%=acc.getAcc_point()%>"></c:set>
				
			</form>
			
			<script type="text/javascript">
			$(document).ready(function(){
			
			$("#allDepositCheckboxV2").change(function(){
		
				var point = $("#point").val();
				var point2 = <%=acc.getAcc_point()%>;
				var originprice = ${sum};
									
				var numformat = "<fmt:formatNumber>${sum}</fmt:formatNumber>원";	
				var numformat_point = "<fmt:formatNumber>-<%=acc.getAcc_point()%></fmt:formatNumber>원";
				var res = "<fmt:formatNumber>${sum - pointusing}</fmt:formatNumber>원";
									
				if($("#allDepositCheckboxV2").is(":checked") == true){
					if(originprice < point){
						$("#allDepositCheckboxV2").prop("checked", false);
							alert("주문 금액 5만원 이상 시 적립금 사용이 가능합니다.");
					}else if(origin < 50000){
						$("#allDepositCheckboxV2").prop("checked", false);
						alert("주문 금액 5만원 이상 시 적립금 사용이 가능합니다.");
					}else{
						$("#point2").html(numformat_point);
						$("#totalPrice").html(res);
						$("#point").val("0");
					}
				}else{
					$("#totalPrice").html(numformat);
					$("#point2").empty();
					$("#point").val(point2);
				}
			});
		});
	</script>
			


			<!-- 결제수단 선택 폼 -->
			<form>
				<div class="order-info" id="paymentMethodAreaV2">
					<div class="way">
						<h5>결제수단선택</h5>
						<ul id="paymentMethodListAreaV2">

							<li><input type="radio" id="kakaoV2" name="paymentMethod"
								value="KAKAOPAY"><label for="kakaoV2" class="kakao">카카오페이</label></li>
						</ul>
					
						<span class="checkbox keep-payment"> 
						<input name="keepPayment" type="checkbox" id="keepPayment" value="">
							<i></i>
						</span> 
						<label for="keepPayment">지금 선택한 결제수단을 다음에도 사용</label>
					</div>
					<script type="text/javascript">
					$(document).ready(function(){
						
						$("#kakaoV2").click(function(){
							if($("#info").css("display") == "none"){
								$("#info").show(); 
							}else {
								$("#info").hide();
							}
						});
					});
					</script>

					<div class="kakao" id="info" style="display: none;">
						<h5>카카오페이 안내</h5>
						<ul class="bul-list">
							<li>카카오페이 결제 시 공인인증서 없이 30만원 이상 결제 가능합니다.</li>
							<li>카카오톡 안에서 개인카드(신용/체크)를 등록하여 다양한 곳에서 결제 시 간단하게 비밀번호만으로<br>
								결제할 수 있는 모바일 결제서비스입니다.
							</li>
							<li>본인명의 핸드폰에서 본인명의 카드로만 등록 후 사용 가능합니다.</li>
						</ul>
					</div>


					<!-- 신용카드 이용안내 폼 -->

					<div class="way-info01">
						<br>
						<br>
						<div class="card01" style="display: block;">
							<br>
							<br>
							<br>
							<br>
							<h5 style="text-align: center;">신용카드 이용안내</h5>
							<br>
							<dl>
								<dt style="text-align: center;">무이자 할부</dt>
								<dd>
									<ul style="position: center;">
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
												alt="하나SK카드"></span><span class="txt">5만원이상 2~6개월
												무이자할부</span></li>
										<li><span class="thumb"><img
												src="//s3-ap-northeast-2.amazonaws.com/kop.images/Comm_Img/card/card11.gif"
												alt="국민카드"></span><span class="txt">5만원이상 2~5개월 무이자할부</span></li>
										<li><span class="thumb"><img
												src="//s3-ap-northeast-2.amazonaws.com/kop.images/Comm_Img/card/card35.gif"
												alt="전북카드"></span><span class="txt">5만원이상 2~3개월 무이자할부</span></li>
									</ul>
								</dd>
								<dt style="text-align: center;">즉시할인</dt>
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


			<!-- 오른쪽에 뜨는 결제 정보 폼 -->
			<form id="form2" name="form2">
				<div style="min-height: 771.063px;" id="paymentform">
					<div class="react-sticky" style="transform: translateZ(0px);">
						<article class="sticky-menu"
							style="position: relative; bottom: 800px;">


							<div class="sticky-bill">

								<h1>결제정보</h1>
								<div class="default-pay">
									<div>
										<strong>주문상품금액</strong>
										<span>
										<fmt:formatNumber>${sum}
										</fmt:formatNumber></span>
									</div>
								</div>
								<div class="sale-pay">

									<div>
										<strong>총 보유금 사용</strong><span id = "point2"></span>
									</div>
								</div>
								<div class="delivery-cost">
									<div>
										<strong>총 배송비</strong><span>0<em>원</em></span>
									</div>
								</div>
								<div class="total">
									<div>
										<strong>예정금액</strong> 
										<span id="totalPrice">
										<fmt:formatNumber>${sum}
										</fmt:formatNumber>원</span>
									</div>
								</div>
							</div>

							<!-- 주문 동의 -->

							<div class="order-agree">
								<h5>주문동의</h5>
								<p>
									주문할 상품의 상품명, 상품가격, 배송정보를 확인하였으며, 구매에 동의하시겠습니까?<br>(전자상거래법
									제8조 제2항)
								</p>
								<p class="">주문제작상품의 경우, 교환/반품이 불가능 하다는 내용을 확인하였으며 이에 동의합니다.</p>
								<span class="checkbox"> 
								<input type="checkbox" id="agreeV2" value="" required="required"> 
								<i></i>
								</span> 
								<label for="agreeV2">동의합니다.</label>
								<div class="buttons end-row">
									<button type="button" value=""
										class="ladda-button btn btn-order btn-big" id="checkout"
										data-style="zoom-in" onclick="payment();">결제하기</button>
									<div class="ladda-progress" style="width: 0px;"></div>
								</div>
							</div>
						</article>
					</div>
				</div>
			</form>
		</article>
	</section>

</body>
</html>