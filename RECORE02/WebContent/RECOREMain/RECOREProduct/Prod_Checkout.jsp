<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%request.setCharacterEncoding("UTF-8");%>
	<%response.setContentType("text/html; charset=UTF-8");%>
    
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

    <link rel="shortcut icon" href="https://assets.kolonmall.com/_ui/img/favicon/series/favicon-ada37e71c5.ico"/>
    <link rel="icon" href="https://assets.kolonmall.com/_ui/img/favicon/series/favicon-32-707cb76054.png" sizes="32x32">
    <link rel="icon" href="https://assets.kolonmall.com/_ui/img/favicon/series/favicon-128-d1761d33cd.png" sizes="128x128">
    <link rel="apple-touch-icon-precomposed" href="/_ui/img/favicon/series/favicon-152.png">


<link rel="stylesheet" href="https://assets.kolonmall.com/_ui/css/kop/common-f380db13f2.css"/>
<link rel="stylesheet" href="https://assets.kolonmall.com/_ui/css/kop/desktop/application-1b80a09c0c.css"/>

<link rel="stylesheet" href="https://assets.kolonmall.com/_ui/css/series/desktop/application-9bf7fef9f4.css"/>

<link rel="stylesheet" href="https://assets.kolonmall.com/_ui/css/build/kop/desktop-3fea64876b.bundle.css"/>

<link rel="stylesheet" href="https://assets.kolonmall.com/_ui/css/kop/desktop/Order-a59824e1c6.css"/>

<link rel="stylesheet" href="cssProd/style.css"/>


<!-- <link rel="stylesheet" href="cssMain/style.css"/> -->

    
    <style type="text/css">
    /* 전체적인 폼 위치 편경 */
    #kolon-content{
    
    	position: relative;
    	margin: 106px 0 80px;
    	overflow: hidden;
    	padding-left: 50px;
    	padding-right: 50px;
    
    }
  
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
  .xans-myshop-orderstate .cs {
  	padding: 12px;
  }
    
    </style>
    
</head>


<!-- header -->

<div class="site-wrap">

  <!--   <div class="site-mobile-menu">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div> .site-mobile-menu -->
    
    
   <!--  <div class="site-navbar-wrap" style = "background-color: white;"> -->
      <div class="site-navbar-top">
        <div class="container py-3">
        
        <!-- @@@로고 위치 @@@-->
        <br>
        <div style = "text-align: center;"><a href = "../index.html"><img alt="" src = "imagesMain/donut.png"></a></div>
       <!--  </div> -->
          <div class="row align-items-center">
            <div class="col-6">
              <!-- <a href="#" class="p-2 pl-0"><span class="icon-twitter"></span></a>
              <a href="#" class="p-2 pl-0"><span class="icon-facebook"></span></a>
              <a href="#" class="p-2 pl-0"><span class="icon-linkedin"></span></a>
              <a href="#" class="p-2 pl-0"><span class="icon-instagram"></span></a> -->
            </div>
            
            
          </div>
        </div>
      </div>
</div>



<body class = "series-site V2 layout-width-1000">

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
							<td class="thumb"><a href="product_detail_test.html"><img
									src="imagesProd/shop/single-products/ulkin01.jpg"
									alt="[RE;CODE] 점퍼 후드 스트링백 상품 썸네일"></a></td>
							<td class="product text-left"><h4>
									UL:KIN&nbsp;<small></small>
								</h4>
								<p>
									<a href="/Product/RYBAW19152KHX">@@상품 제목@@</a>
								</p>
								<ul class="meta">
									<li><em>수량 </em><span>1</span></li>
									<li><em>옵션</em>&nbsp;<span>@색상@, @사이즈@</span></li>
								</ul>
								<div class="options"></div>
								
								<!-- 편의점 픽업 가능 옵션 삭제 -->
								<div class="additional">
									<!-- <span class="cvs-usable-tag">편의점픽업 가능</span> -->
								</div></td>
							<td class="price">@가격@</td>
							<td class="range">1</td>
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
						<strong>주문상품금액</strong><span>59,000</span>원
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
						<strong>총 주문금액</strong><span id="totalBasePriceV2"><em>59,000</em>원</span>
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
						<span id="customerNameArea">최승혜</span><span
							id="customerMobileNumberArea">01064733048</span><span
							id="customerEmailArea">motop68@gmail.com</span>
					</dd>
					<dt class="mb-22">
						받는분<em class="required" aria-required="true">필수</em>
					</dt>
					<dd class="mb-22">
						<div class="col-2">
							<input name="firstName" type="text" placeholder="이름을 입력하세요."
								maxlength="10" value="최승혜">
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
								
								<!-- 편의점 픽업 옵션 삭제 -->
								
								<!-- i></i><label
								for="cvs_addrV2">편의점 픽업
									<div class="help">
										<span class="tool-tip">주문상품이 편의점 픽업이 가능한 상품으로<br>구성된
											경우에 편의점 픽업을 선택할 수 있습니다.
										</span>
									</div>
							</label> --></span>
							<button type="button" class="btn btn-line btn-small">나의
								배송지</button>
						</div>
					</dd>
					<div style="display: block;">
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
									<button type="button" class="btn btn-line btn-small">우편번호찾기</button>
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
								<div class="col-1">
									<input type="text" name="codeName" placeholder="편의점명"
										readonly="" value="">
								</div>
								<div class="col-2">
									<button type="button" class="btn btn-line btn-small">편의점
										찾기</button>
								</div>
							</div>
							<div class="row">
								<input type="text" class="full" placeholder="편의점 전화번호"
									readonly="" value="">
								<p class="cvs-guide">
									<!-- <span class="tag">안내</span><span class="txt">편의점 픽업 상품은
										배송완료 후 6일 이내 수령해야 하며, 기간 내 미 수령 시, 배송비 고객 부담으로 반품처리됩니다.</span> -->
								</p>
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
								type="tel" maxlength="4" value="6473"><input
								name="cellPhone3" type="tel" maxlength="4" value="3048">
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
				<!-- <h5>보유금 사용</h5>
				<dl class="order-form">
					<dt>Gift Code</dt>
					<dd>
						<div class="col-1 box-input number-input ">
							<div class="input-wrapper">
								<input name="appliedEmployeeCouponAmount" type="text"
									class=" full" readonly="" value=""><span><em>원</em>
									/ <i>0</i>장</span>
							</div>
							<p class="desc">각 Gift Code 금액이상의 주문상품에 사용가능합니다.</p>
						</div>
						<div>
							<button type="button" class="btn btn-line btn-small">번호입력</button>
						</div>
					</dd>-->
					
					<br>
					
					
					<!-- 예치금 -->
					<dt>예치금</dt>
					<dd>
						<div class="col-1 box-input number-input">
							<div class="input-wrapper">
								<input name="usedDepositInput" type="text" class="full"
									placeholder="0" value="0"><span><em>원</em> / 0원</span>
							</div>
						</div>
						<div>
							<span class="checkbox"><input name="allDepositCheckbox"
								type="checkbox" id="allDepositCheckboxV2" value=""><i></i></span><label
								for="allDepositCheckboxV2">모두사용</label>
						</div>
					</dd>
					
					<!-- 포인트 -->
					<dt>포인트</dt>
					<dd>
						<div class="col-1 box-input number-input">
							<div class="input-wrapper">
								<input name="usedPointInput" type="text" class="full"
									placeholder="0" value="0"><span><em>P</em> / 0P</span>
							</div>
							<p class="desc">
								보유포인트내에서 주문금액만큼 즉시 사용이 가능합니다.<br>RECORE포인트와 쿠폰 사용시 유효기간을 꼭
								확인해 주시고 유효기간이 지나기 전에 입금해 주시기 바라며 유효기간이 이후 입금할 경우 주문이 취소됩니다.
							</p>
						</div>
						<div>
							<span class="checkbox"><input name="allPointCheckbox"
								id="allPointV2" type="checkbox" value=""><i></i></span><label
								for="allPointV2">모두사용</label>
						</div>
					</dd>
				</dl>
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
				<div class="way-info">
					<div class="card" style="display: block;">
						<h5>신용카드 이용안내</h5>
						<dl>
							<dt>무이자 할부</dt>
							<dd>
								<ul>
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
							<dt>즉시할인</dt>
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
			
			<!-- footer -->
			
			<footer class="footer section text-center">
		11111111111111111111111111111111111
			</footer>
			
			
			
          </div>
		</div>
		
		
		
		
		
		
		
		
		
		
		
		<!-- 오른쪽에 뜨는 결제 정보 폼 -->
		<div style="min-height: 771.063px;">
			<div class="react-sticky" style="transform: translateZ(0px);">
				<article class="sticky-menu" style="left: 0px;">
					<div class="sticky-bill">
						<h1>결제정보</h1>
						<div class="default-pay">
							<div>
								<strong>주문상품금액</strong><span>59,000<em>원</em></span>
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
								<strong>총 결제예정금액</strong><span data-total-price="59,000"><em>59,000</em>원</span>
							</div>
						</div>
						<div class="saving-point">
							<div>
								<strong>적립 예정 포인트</strong><span>2,950<em> P</em></span>
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

</html>
</body>