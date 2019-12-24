<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mapage_WishList</title>

<link rel="stylesheet" type="text/css" href="cssMy/Mypage_WishList_CSS.css"/>
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
				    <h2>관심상품</h2>
				</div>
		
				<div class="xans-element- xans-myshop xans-myshop-wishlist ec-base-table typeList xans-record-">
					<table border="1" summary="" class="">
						<caption>관심상품 목록</caption>
					    <colgroup>
							<col style="width:27px;">
							<col style="width:92px">
							<col style="width:auto">
							<col style="width:105px">
							<col style="width:100px">
							<col style="width:100px">
							<col style="width:85px">
							<col style="width:105px">
							<col style="width:110px">
						</colgroup>
						<thead>
							<tr>
								<th scope="col">
									<input type="checkbox" onclick="NewWishlist.checkAll(this);">
								</th>
				                <th scope="col">이미지</th>
				                <th scope="col">상품정보</th>
				                <th scope="col">판매가</th>
				                <th scope="col">적립금</th>
				                <th scope="col">배송구분</th>
				                <th scope="col">배송비</th>
				                <th scope="col">합계</th>
				                <th scope="col">선택</th>
				            </tr>
			            </thead>
			            <tbody class="xans-element- xans-myshop xans-myshop-wishlistitem center">
			            	<tr class="xans-record-">
								<td>
									<input name="wish_idx[]" id="wish_idx_0" enable-order="1" reserve-order="N" enable-purchase="1" class="" is-set-product="F" value="126" type="checkbox">
								</td>
				                <td class="thumb">
				                	<a href="상품1경로@@@@@@@@@">
				                	<img src="//dalisalda.com/web/product/medium/20191115/d34787634339f49b3938426c0213c468.jpg" alt="">
				                	</a>
			                	</td>
				                <td class="left">
				                    <strong class="name">
				                    <a href="상품1경로@@@@@" class="ec-product-name">[프레시버블]<br>유기농 소프넛(솝베리) 친환경 살림 세트 500g</a>
				                    </strong>
				                    <ul class="xans-element- xans-myshop xans-myshop-optionall option">
				                    	<li class="xans-record-">
											<strong class="displaynone"></strong>
											<span class="displaynone">(개)</span><br>
											<a href="#none" onclick="NewWishlist.showOptionChangeLayer('wishlist_option_modify_layer_0')" class="btnNormal gBlank5 displaynone">옵션변경</a>
				                            <div class="optionModify ec-base-layer" id="wishlist_option_modify_layer_0">
				                                <div class="header">
				                                    <h3>옵션변경</h3>
				                                </div>
				                                <div class="content">
													<ul class="prdInfo">
														<li></li>
				                                        <li class="option"></li>
				                                    </ul>
													<div class="prdModify">
				                                        <h4>상품옵션</h4>
			                                        </div>
				                                </div>
				                                <div class="ec-base-button">
				                                    <a href="#none" class="btnSubmitFix sizeS " onclick="NewWishlist.modify('add', '0', '135');">추가</a>
				                                    <a href="#none" class="btnNormalFix sizeS" onclick="NewWishlist.modify('update', '0', '135');">변경</a>
				                                </div>
					                                <a href="#none" class="close" onclick="$('.optionModify').hide();"><img src="//img.echosting.cafe24.com/skin/base/common/btn_close.gif" alt="닫기"></a>
					                            </div>
						
				                        </li>
									</ul>
								</td>
				                <td class="price right">
									<strong class="">25,500원<br></strong><br><strong class="displaynone">25500</strong>
								</td>
				                <td><span class="txtInfo"></span></td>
				                <td>
				                	<div class="txtInfo">기본배송<div class="displaynone">(해외배송가능)</div></div>
				                </td>
				                <td>
									<span class="">2,500원<br></span> 조건</td>
				                <td class="price right">28,000원</td>
				                <td class="button">
				                    <a href="#none" onclick="NewWishlist.actionOrder('order', 0)" class="btnSubmit ">주문하기</a>
				                    <a href="#none" onclick="NewWishlist.actionOrder('basket', 0)" class="btnNormal ">장바구니담기</a>
				                    <a href="#none" class="btnNormal btn_wishlist_del" rel="135||000A||"><i class="icoDelete"></i> 삭제</a>
				                </td>
			            	</tr>
						</tbody>
					</table>
					<p class="message displaynone">관심상품 내역이 없습니다.</p>
				</div>
				
				<div class="xans-element- xans-myshop xans-myshop-wishlistbutton ec-base-button xans-record-">
					<span class="gLeft">
				        <strong class="text">선택상품을</strong>
				        <a href="#none" class="btnEm" onclick="NewWishlist.deleteSelect();"><i class="icoDelete"></i> 삭제하기</a>
				        <a href="#none" class="btnNormal" onclick="NewWishlist.basket();">장바구니 담기</a>
				    </span>
					<span class="gRight">
				        <a href="#none" class="btnSubmitFix sizeM" onclick="NewWishlist.orderAll();">전체상품주문</a>
				        <a href="#none" class="btnEmFix sizeM" onclick="NewWishlist.deleteAll();">관심상품 비우기</a>
				    </span>
				</div>
				
				<div class="xans-element- xans-myshop xans-myshop-wishlistpaging ec-base-paginate">
					<a href="#none" class="first">
						<img src="//img.echosting.cafe24.com/skin/base/common/btn_page_first.gif" alt="첫 페이지">
					</a>
					<a href="#none">
						<img src="//img.echosting.cafe24.com/skin/base/common/btn_page_prev.gif" alt="이전 페이지">
					</a>
					<ol>
						<li class="xans-record-">
							<a href="?page=1" class="this">1</a>
						</li>
				    </ol>
					<a href="#none">
						<img src="//img.echosting.cafe24.com/skin/base/common/btn_page_next.gif" alt="다음 페이지">
					</a>
					<a href="#none" class="last">
						<img src="//img.echosting.cafe24.com/skin/base/common/btn_page_last.gif" alt="마지막 페이지">
					</a>
				</div>
			</div><!-- content 끝@@@@@@ -->
				
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