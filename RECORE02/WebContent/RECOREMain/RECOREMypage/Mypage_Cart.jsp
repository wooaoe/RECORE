<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mypage_Cart</title>
<link rel="stylesheet" type="text/css" href="cssMy/Mypage_Cart_CSS.css"/>
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
	
	<!-- 장바구니 시작 -->
	<div id="wrap">
	    <div id="container">
	        <div id="content" style="margin-top: 100px;">
				<div class="titleArea">
				    <h2>장바구니</h2>
				</div>
	
				<div class="xans-element- xans-order xans-order-basketpackage ">
					<div class="xans-element- xans-order xans-order-dcinfo ec-base-box typeMember  ">
						<div class="information">
	            			<h3 class="title">혜택정보</h3>
	            			<div class="description">
	                			<ul class="mileage">
									<li><a href="/myshop/mileage/historyList.html">가용적립금 : <strong>0원</strong></a></li>
	                    			<li class="displaynone"><a href="/myshop/deposits/historyList.html">예치금 : <strong></strong></a></li>
	                    			<li><a href="/myshop/coupon/coupon.html">쿠폰 : <strong>3개</strong></a></li>
	                			</ul>
							</div>
	        			</div>
					</div>
					<div class="xans-element- xans-order xans-order-tabinfo ec-base-tab typeLight ">
						<ul class="menu">
							<li class="selected "><a href="/order/basket.html">국내배송상품 (1)</a></li>
	       	 			</ul>
					</div>
					<div class="orderListArea ec-base-table typeList gBorder">
	        			<div class="xans-element- xans-order xans-order-normtitle title "><h3>일반상품 (1)</h3>
						</div>
	
	        			<table border="1" summary="" class="xans-element- xans-order xans-order-normnormal xans-record-">
	        				<caption>기본배송</caption>
							<colgroup>
								<col style="width:27px">
								<col style="width:92px">
								<col style="width:auto">
								<col style="width:98px">
								<col style="width:75px">
								<col style="width:98px">
								<col style="width:98px">
								<col style="width:85px">
								<col style="width:98px">
								<col style="width:110px">
							</colgroup>
							<thead>
								<tr>
									<th scope="col"><input type="checkbox" onclick="Basket.setCheckBasketList('basket_product_normal_type_normal', this);"></th>
				                    <th scope="col">이미지</th>
				                    <th scope="col">상품정보</th>
				                    <th scope="col">판매가</th>
				                    <th scope="col">수량</th>
				                    <th scope="col" class="mileage">적립금</th>
				                    <th scope="col">배송구분</th>
				                    <th scope="col">배송비</th>
				                    <th scope="col">합계</th>
				                    <th scope="col">선택</th>
	                			</tr>
							</thead>
							<tfoot class="right">
								<tr>
									<td colspan="10">
										<span class="gLeft">[기본배송]</span> 상품구매금액 <strong>17,000 <span class="displaynone">()</span></strong><span class="displaynone"> </span><span class="displaynone"> + 부가세 <span class="displaynone"> </span></span> + 배송비 <span id="normal_normal_ship_fee">2,500</span><span class="displaynone"> </span> <span id="normal_normal_benefit_price_area" class="displaynone"> - 상품할인금액 <span id="normal_normal_benefit_price">0</span> </span> = 합계 : <strong class="txtEm gIndent10"><span id="normal_normal_ship_fee_sum" class="txt18">19,500</span>원</strong> <span class="displaynone"> </span>
									</td>
	                			</tr>
                			</tfoot>
                			<tbody class="xans-element- xans-order xans-order-list center">
                				<tr class="xans-record-">
									<td><input type="checkbox" id="basket_chk_id_0" name="basket_product_normal_type_normal"></td>
				                    <td class="thumb gClearLine"><a href="/product/detail.html?product_no=261&amp;cate_no=91"><img src="//dalisalda.com/web/product/tiny/20191206/90446b2ad04fff657071104925ed4b7b.jpg" onerror="this.src='//img.echosting.cafe24.com/thumb/img_product_small.gif';" alt="[웬즈데이블루]아보카도 타조알 비누 퓨어"></a></td>
				                    <td class="left gClearLine">
	                        			<strong class="name"><a href="/product/웬즈데이블루아보카도-타조알-비누-퓨어/261/category/91/" class="ec-product-name">[웬즈데이블루]<br>아보카도 타조알 비누 퓨어</a></strong>    <span class="displaynone engName">(영문명 : )</span>
	                        			<p class="gBlank5 displaynone"><strong>배송주기</strong> <span class="txtEm"></span></p>
	                    			</td>
	                    			<td class="right">
	                        			<div id="product_price_div0" class="">
											<strong>17,000원</strong><p class="displaynone"></p>
										</div>
	                        			<div id="product_sale_price_div0" class="displaynone">
											<strong><span id="product_sale_price_front0">17,000</span>원</strong><p class="displaynone"></p>
										</div>
	                    			</td>
				                    <td>
				                        <span class="">
				                            <span class="ec-base-qty"><input id="quantity_id_0" name="quantity_name_0" size="2" value="1" type="text"><a href="javascript:;" onclick="Basket.addQuantityShortcut('quantity_id_0', 0);"><img src="//img.echosting.cafe24.com/skin/base/common/btn_quantity_up.gif" alt="수량증가" class="up"></a><a href="javascript:;" onclick="Basket.outQuantityShortcut('quantity_id_0', 0);"><img src="//img.echosting.cafe24.com/skin/base/common/btn_quantity_down.gif" alt="수량감소" class="down"></a></span>
				                            <a href="javascript:;" class="btnNormal gBlank5" onclick="Basket.modifyQuantity()">변경</a>
				                        </span>
				                        <span class="displaynone">1</span>
				                    </td>
				                    <td><span id="product_mileage0" class="txtInfo">-</span></td>
				                    <td><div class="txtInfo">기본배송<br></div></td>
				                    <td rowspan="1" class="">
										<p class="">2,500원<span class="displaynone"><br></span><br></p>조건</td>
	                    			<td class="right">
										<strong><span id="sum_price_front0">17,000</span>원</strong><div class="displaynone"></div>
									</td>
				                    <td class="button">
				                        <a href="javascript:;" class="btnSubmit " onclick="Basket.orderBasketItem(0);">주문하기</a>
				                        <a href="javascript:;" class="btnSubmit displaynone" onclick="Basket.orderBasketItem(0);">정기배송 신청</a>
				                        <a href="javascript:;" class="btnNormal" onclick="BasketNew.moveWish(0);">관심상품등록</a>
				                        <a href="javascript:;" class="btnNormal" onclick="Basket.deleteBasketItem(0);"><i class="icoDelete"></i> 삭제</a>
				                    </td>
	                			</tr>
							</tbody>
						</table>
	
	        		</div>
					<div class="orderListArea ec-base-table typeList gBorder">
	        		</div>
					<div class="xans-element- xans-order xans-order-basketpriceinfoguide  ">
						<p class="info ">할인 적용 금액은 주문서작성의 결제예정금액에서 확인 가능합니다.</p>
						<p class="info displaynone">결제예정금액은 배송비가 포함된 금액이므로 주문서작성에서 확인 가능합니다.</p>
						<p class="info displaynone">추가증정 이벤트 상품의 옵션 및 수량 변경은 상품상세에서 가능합니다.</p>
					</div>
					<div class="xans-element- xans-order xans-order-selectorder ec-base-button ">
						<span class="gLeft">
				            <strong class="text">선택상품을</strong>
				            <a href="#none" class="btnEm" onclick="Basket.deleteBasket()"><i class="icoDelete"></i> 삭제하기</a>
				            <a href="#none" onclick="Basket.addWishList()" class="btnNormal displaynone">관심상품등록</a>
				            <!--a href="#none" onclick="Basket.moveOversea()" class="btnNormal ">해외배송상품 장바구니로 이동</a-->
				            <a href="#none" onclick="Basket.hopeProduct('park21yc'); return false;" class="btnNormal displaynone">상품조르기</a>
				        </span>
						<span class="gRight">
				            <a href="#none" onclick="Basket.orderStorePickupSelectBasket(this)" class="btnNormal displaynone" link-order="/order/orderform.html?basket_type=all_buy" link-login="/member/login.html">스토어픽업 상품 선택</a>
				            <a href="#none" class="btnNormal" onclick="Basket.emptyBasket()">장바구니비우기</a>
				            <a href="#none" class="btnNormal" onclick="Basket.estimatePrint(this)" link="/estimate/userform.html">견적서출력</a>
				        </span>
					</div>
					<!-- 총 주문금액 : 국내배송상품 -->
					<div class="xans-element- xans-order xans-order-totalsummary ec-base-table typeList gBorder total  ">
						<table border="1" summary="">
							<caption>총 주문금액</caption>
				            <colgroup>
								<col style="width:17%;">
								<col style="width:17%;" class="displaynone">
								<col style="width:19%;">
								<col style="width:17%;" class="displaynone">
								<col style="width:auto;">
							</colgroup>
							<thead>
								<tr>
									<th scope="col"><strong>총 상품금액</strong></th>
				                    <th scope="col" class="displaynone"><strong>총 부가세</strong></th>
				                    <th scope="col"><strong>총 배송비</strong></th>
				                    <th scope="col" id="total_benefit_price_title_area" class="displaynone">
										<strong>총 할인금액</strong> <a href="#none" class="btnNormal" onclick="OrderLayer.onDiv('order_layer_benefit', event);">내역보기</a>
									</th>
				                    <th scope="col"><strong>결제예정금액</strong></th>
			                	</tr>
		                	</thead>
							<tbody class="center">
								<tr>
									<td>
										<div class="box txt16">
											<strong><span class="txt23">17,000</span>원</strong> <span class="txt14 displaynone"></span>
										</div>
									</td>
	                    			<td class="displaynone">
	                    				<div class="box txt16">
											<strong><span class="txt23">0</span>원</strong> <span class="txt14 displaynone"></span>
										</div>
									</td>
	                    			<td>
	                        			<div class="box shipping txt16">
	                            			<strong class="txt23">+ </strong><strong><span id="total_delv_price_front" class="txt23">2,500</span>원</strong> <span class="txt14 displaynone"></span>
	                            			<div class="shippingArea displaynone">(<span></span>
	                                			<div class="shippingFee">
	                                    			<a href="#none" class="btnNormal" id="">자세히</a>)
	                                    			<div class="ec-base-tooltip" style="display: none;">
	                                    			</div>
	                                			</div>
	                            			</div>
	                        			</div>
	                    			</td>
	                    			<td id="total_benefit_price_area" class="displaynone">
	                    				<div class="box txt16">
											<strong class="txt23">- </strong><strong><span id="total_product_discount_price_front" class="txt23">0</span>원</strong> <span class="txt14 displaynone"><span id="total_product_discount_price_back"></span></span>
										</div>
									</td>
	                    			<td>
	                    				<div class="box txtEm txt16">
											<strong class="txt23">= </strong><strong><span id="total_order_price_front" class="txt23">19,500</span>원</strong> <span class="txt14 displaynone"><span id="total_order_price_back"></span></span>
										</div>
									</td>
	                			</tr>
                			</tbody>
						</table>
					</div>
					<div class="xans-element- xans-order xans-order-totalorder ec-base-button justify">
						<a href="#none" onclick="Basket.orderAll(this)" link-order="/order/orderform.html?basket_type=all_buy" link-login="/member/login.html" class="btnSubmitFix sizeM  ">전체상품주문</a>
						<a href="#none" onclick="Basket.orderSelectBasket(this)" link-order="/order/orderform.html?basket_type=all_buy" link-login="/member/login.html" class="btnEmFix sizeM ">선택상품주문</a>
						<span class="gRight">
						
						<!-- 쇼핑계속하기 누르면 상품 전체 페이지 뜨도록 -->
	            			<a href="../product_all.html" class="btnNormalFix sizeM">쇼핑계속하기</a>
	        			</span>
					</div>
				</div>
	
	
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
		</div>

</body>
</html>