<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%request.setCharacterEncoding("UTF-8");%>
	<%response.setContentType("text/html; charset=UTF-8");%>
<!DOCTYPE html>
<html class="no-js"> <!--<![endif]-->
<head>
  <script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
  
   <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito+Sans:200,300,400,700,900"> 
    <link rel="stylesheet" href="fonts/icomoon/style.css">

    <link rel="stylesheet" href="cssMain01/magnific-popup.css">
   <!--  <link rel="stylesheet" href="cssMain01/jquery-ui.css"> -->
    <link rel="stylesheet" href="cssMain01/owl.carousel.min.css">
    <link rel="stylesheet" href="cssMain01/owl.theme.default.min.css">
    <link rel="stylesheet" href="cssMain01/bootstrap-datepicker.css">
    
    
    <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">
  
    <link rel="stylesheet" href="cssMain/aos.css">

    <link rel="stylesheet" href="cssMain/styleProd.css">
  
  
  
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <!-- <meta name="description" content="Aviato E-Commerce Template">
  
  <meta name="author" content="Themefisher.com"> -->

  <!-- Mobile Specific Meta-->
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>RECORE - PRODUCT</title>
    
  
  <!-- 상품 상세페이지 UI css -->
  
  
  <!-- Favicon -->
  <link rel="shortcut icon" type="image/x-icon" href="imagesProd/favicon.png" />
  
  <!-- Themefisher Icon font -->
  <link rel="stylesheet" href="plugins/themefisher-font/style.css">
  <!-- bootstrap.min css -->
  <link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css">
  
  <!-- REVOLUTION STYLE SHEETS -->
  <link rel="stylesheet" type="text/css" href="plugins/revolution-slider/revolution/css/settings.css">
  <link rel="stylesheet" type="text/css" href="plugins/revolution-slider/revolution/css/layers.css">
  <link rel="stylesheet" type="text/css" href="plugins/revolution-slider/revolution/css/navigation.css">
  
  <!-- Revolution Slider -->
  <link rel="stylesheet" type="text/css" href="plugins/revolution-slider/revolution/fonts/pe-icon-7-stroke/css/pe-icon-7-stroke.css">
  <link rel="stylesheet" type="text/css" href="plugins/revolution-slider/revolution/fonts/font-awesome/css/font-awesome.css">

  
  
 	<!-- <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito+Sans:200,300,400,700,900"> 
    <link rel="stylesheet" href="fonts/icomoon/style.css"> -->
    

 <!-- Main Stylesheet -->
  
  <link rel="stylesheet" href="cssProd/styleProd.css">
  
  
  <!-- 임의로 스타일 적용하기 -->
  <style type="text/css">
  
  .testpadding{
  	padding: 80px;
  }
  
  .navtest{
  	text-align:center;
  	padding: 10px;
  }
  
  .footertest{
  	background-color: #333333;
  	text-align: center;
  	padding: 10em 0;
  }
  
  #productInfo{
  	text-align: center;
  	color: black;
  }
  
  #logResMy{
  	margin-left: 200px;
  	position: relative;
  	top: 50%;
  }
 
    
    
  </style>
  
  
</head>

 	

<body id="body">

<%@ include file="header.jsp" %>

<!-- Main Menu Section -->
<!-- <section class="menu">
	
	 <nav class="navtest">
	 	<a href = "../index.html">RECORE로고</a>
	 </nav>
		
		recore 헤더
	<div style = "background-color:#F56D3E;">
    <div class="site-mobile-menu">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div> .site-mobile-menu
 	 <div class="site-navbar-wrap" style="position: static;">
      <div class="site-navbar-top">
        <div class="container py-3">
          <div class="row align-items-center">
            <div class="col-6">
            
            
              <a href="#" class="p-2 pl-0"><span class="icon-twitter"></span></a>
              <a href="#" class="p-2 pl-0"><span class="icon-facebook"></span></a>
              <a href="#" class="p-2 pl-0"><span class="icon-linkedin"></span></a>
              <a href="#" class="p-2 pl-0"><span class="icon-instagram"></span></a>
           
            
            </div>
            
            
            로그인/회원가입/마이페이지/장바구니
            
            <div class="col-6">
              <div class="d-flex ml-auto">
               	  <a href="#" class="d-flex align-items-center"></a>
                  <span class="icon-envelope mr-2"></span> 
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
           <div class = "row align-items-center">
            <div class="col-2">
             &nbsp;
            </div>            
            </div>
            <div class = "row align-items-center">
            <div class="col-2">
             &nbsp;
            </div>            
            </div>
            
          </div>
        </div>
      </div>
    </div>
 	</div>
		
		
		
		
		      	
	</nav>
</section> -->

<!--상품 상세 페이지 -->
<section class="single-product">
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<ol class="breadcrumb">
					<li><a href="../index.html">Home</a></li>
					<li><a href="Prod_All.jsp">Product</a></li>
					<li class="active">Bag</li>
				</ol>
			</div>
			<div class="col-md-6">
				<ol class="product-pagination text-right">
					<li><a href="#"><i class="tf-ion-ios-arrow-left"></i> Next </a></li>
					<li><a href="#">Preview <i class="tf-ion-ios-arrow-right"></i></a></li>
				</ol>
			</div>
		</div>
		<div class="row mt-20">
			<div class="col-md-5">
				<div class="single-product-slider">
					<div id='carousel-custom' class='carousel slide' data-ride='carousel'>
						<div class='carousel-outer'>
							<!-- me art lab slider -->
							<div class='carousel-inner '>
							
						
								 <div class='item active'>
									<img src='imagesProd/shop/single-products/ulkin01.jpg' alt='' data-zoom-image="imagesProd/shop/single-products/ulkin01.jpg" />
								</div>
								<div class='item'>
									<img src='imagesProd/shop/single-products/ulkin01.jpg' alt='' data-zoom-image="imagesProd/shop/single-products/ulkin01.jpg" />
								</div>
								
								<!-- <div class='item'>
									<img src='images/shop/single-products/product-3.jpg' alt='' data-zoom-image="images/shop/single-products/product-3.jpg" />
								</div>
								<div class='item'>
									<img src='images/shop/single-products/product-4.jpg' alt='' data-zoom-image="images/shop/single-products/product-4.jpg" />
								</div>
								<div class='item'>
									<img src='images/shop/single-products/product-5.jpg' alt='' data-zoom-image="images/shop/single-products/product-5.jpg" />
								</div>
								<div class='item'>
									<img src='images/shop/single-products/product-6.jpg' alt='' data-zoom-image="images/shop/single-products/product-6.jpg" />
								</div> -->
								
							</div>
							
							<!-- sag sol -->
							<a class='left carousel-control' href='#carousel-custom' data-slide='prev'>
								<i class="tf-ion-ios-arrow-left"></i>
							</a>
							<a class='right carousel-control' href='#carousel-custom' data-slide='next'>
								<i class="tf-ion-ios-arrow-right"></i>
							</a>
						</div>
						
						<!-- thumb -->
						<ol class='carousel-indicators mCustomScrollbar meartlab'>
							<!-- <li data-target='#carousel-custom' data-slide-to='0' class='active'>
								<img src='images/shop/single-products/product-1.jpg' alt='' />
							</li>
							<li data-target='#carousel-custom' data-slide-to='1'>
								<img src='images/shop/single-products/product-2.jpg' alt='' />
							</li>
							<li data-target='#carousel-custom' data-slide-to='2'>
								<img src='images/shop/single-products/product-3.jpg' alt='' />
							</li>
							<li data-target='#carousel-custom' data-slide-to='3'>
								<img src='images/shop/single-products/product-4.jpg' alt='' />
							</li>-->
							<li data-target='#carousel-custom' data-slide-to='4'>
								<img src='imagesProd/shop/single-products/ulkin01.jpg' alt='' />
							</li>
							<li data-target='#carousel-custom' data-slide-to='5'>
								<img src='imagesProd/shop/single-products/ulkin01.jpg' alt='' />
							</li>
							<li data-target='#carousel-custom' data-slide-to='6'>
								<img src='imagesProd/shop/single-products/ulkin01.jpg' alt='' />
							</li>
						</ol>
					</div>
				</div>
			</div>
			
			
			<!-- 상품 이름 / 상세 정보글 -->
			<div class="col-md-7">
				<div class="single-product-details">
					<h2>[ONLY-ONE]UL:KIN UPCYCLING LABEL_FRAME CLUTCH HASSAM_BK</h2>
					<p class="product-price">141,000원</p>
					
					<!-- 상세 정보글 -->
					<p class="product-description mt-20">
						제품 정보 글 쓰는 곳
					</p>
					<p>제품 정보 글 쓰는 곳</p>
					<br>
					
					<!-- 상품 색상 -->
					<div class="color-swatches">
						<span>색상:</span>
						<ul>
							<!-- <li>
								<a href="" class="swatch-violet"></a>
							</li> -->
							<li>
								<a href="" class="swatch-black"></a>
							</li>
							<!-- <li>
								<a href="" class="swatch-cream"></a>
							</li> -->
						</ul>
					</div>
					
					<!-- 사이즈 -->
					<div class="product-size">
						<span>사이즈:</span>
						<select class="form-control">
							<option>Free</option>
							<!-- <option>M</option>
							<option>L</option>
							<option>XL</option> -->
						</select>
					</div>
					
					<!-- 상품 수량 -->
					<div class="product-quantity">
						<span>수량:</span>
						<div class="product-quantity-slider">
							<div class="input-group bootstrap-touchspin">
							<span class="input-group-btn">
							<button id = "minus" class="btn btn-default bootstrap-touchspin-down" type="button" onclick = "change(-1)"> - </button>
							</span>
							<span class="input-group-addon bootstrap-touchspin-prefix" style="display: none;"></span>
							<input id="product-quantity" type="text" value="0" name="product-quantity" class="form-control" style="display: block;">
							<span class="input-group-addon bootstrap-touchspin-postfix" style="display: none;"></span>
							<span class="input-group-btn">
							<button id = "plus" class="btn btn-default bootstrap-touchspin-up" type="button" onclick = "change(1)"> + </button>
							</span>
							</div>
						</div>
					</div>
					
					<script type="text/javascript">
						function change(num){
							
								var number = ($(num).attr('value'));
								if(number==9){ // 숫자가 9이상이라면 초기화
									$(num).attr('value', '0');
								}else{
									var plus_num = parseInt(number) + 1;
									$(num).attr('value', plus_num);
								}
						}
					
					
					</script>
					
					
				
				
					
					<!-- 장바구니 / 바로구매 / 관심상품 -->
					
					<!-- 최상위 폴더 / 해당파일이 존재하는 폴더 / 해당파일 -->
					<a href="../RECOREMypage/Mypage_Cart.jsp" class="btn btn-main mt-20">장바구니 추가</a>
					<a href="Prod_Checkout.jsp" class="btn btn-main mt-20">바로 구매</a>
					<a href="../RECOREMypage/Mypage_WishList.jsp" class="btn btn-main mt-20">관심상품</a>
				</div>
			</div>
		</div>
		
		
		<!-- 상품 상세 내용 / 리뷰 -->
		<div class="row">
			<div class="col-xs-12">
				<div class="tabCommon mt-20">
					<ul class="nav nav-tabs">
						<li class="active"><a data-toggle="tab" href="#details" aria-expanded="true">상세 정보</a></li>
						<li class=""><a data-toggle="tab" href="#reviews" aria-expanded="false">리뷰</a></li>
					</ul>
					<div class="tab-content patternbg">
						<div id="details" class="tab-pane fade active in">
							<h4 id = "productInfo">제품 설명 헤드라인</h4>
							<p id = "productInfo">@@@@@@@제품 내용@@@@@@@@@@@@</p>
							<p id = "productInfo">@@@@@@@@@@@@@@@@@@@@@@@@@</p>
							<p id = "productInfo">@@@@@@@제품 내용@@@@@@@@@@@@</p>
							<p><img src = "imagesProd/shop/single-products/ulkindetail01.jpg"></p>
							<p>
							그 외 제품 정보 적으면 될 듯
							</p>
							<p>
							그 외 제품 정보 적으면 될 듯
							</p>
							<p>
							그 외 제품 정보 적으면 될 듯
							</p>
						</div>
						
						<!-- 리뷰 상세 -->
						<div id="reviews" class="tab-pane fade">
							<div class="post-comments">
						    	<ul class="media-list comments-list m-bot-50 clearlist">
						    	
								    <!-- Comment Item start-->
								    <li class="media">

								        <a class="pull-left" href="#">
								            <img class="media-object comment-avatar" src="imagesProd/blog/avater-1.jpg" alt="" width="50" height="50" />
								        </a>

								        <div class="media-body">
								            <div class="comment-info">
								                <h4 class="comment-author">
								                    <a href="#">motop**</a>
								                	
								                </h4>
								                <time datetime="2019-12-24T23:00">Dec 23, 2019, at 11:34</time>
								                <a class="comment-button" href="#"><i class="tf-ion-chatbubbles"></i>Reply</a>
								            </div>

								            <p>
												리뷰글 적는 곳
								            </p>
								        </div>

								    </li>
								    <!-- End Comment Item -->

								    <!-- Comment Item start-->
								    <li class="media">

								        <a class="pull-left" href="#">
								            <img class="media-object comment-avatar" src="imagesProd/blog/avater-4.jpg" alt="" width="50" height="50" />
								        </a>

								        <div class="media-body">

								            <div class="comment-info">
								                <div class="comment-author">
								                    <a href="#">Jonathon Andrew</a>
								                </div>
								                <time datetime="2013-04-06T13:53">July 02, 2015, at 11:34</time>
								                <a class="comment-button" href="#"><i class="tf-ion-chatbubbles"></i>Reply</a>
								            </div>

								            <p>
								                	리뷰글 적는곳
								            </p>

								        </div>

								    </li>
								    <!-- End Comment Item -->

								    <!-- Comment Item start-->
								    <li class="media">

								        <a class="pull-left" href="#">
								            <img class="media-object comment-avatar" src="imagesProd/blog/avater-1.jpg" alt="" width="50" height="50">
								        </a>

								        <div class="media-body">

								            <div class="comment-info">
								                <div class="comment-author">
								                    <a href="#">Jonathon Andrew</a>
								                </div>
								                <time datetime="2013-04-06T13:53">July 02, 2015, at 11:34</time>
								                <a class="comment-button" href="#"><i class="tf-ion-chatbubbles"></i>Reply</a>
								            </div>

								            <p>
								                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque at magna ut ante eleifend eleifend.
								            </p>

								        </div>

								    </li>
							</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>


<!-- 연관 상품 추천 -->
<section class="products related-products section">
	<div class="container">
		<div class="row">
			<div class="title text-center">
				<h2>연관 상품</h2>
			</div>
		</div>
		<div class="row">
			<div class="col-md-3">
				<div class="product-item">
					<div class="product-thumb">
						
						<!-- 세일 여부 -->
						<!-- <span class="bage">Sale</span> -->
						
						<img class="img-responsive" src="imagesProd/shop/products/ulkin02.jpg" alt="product-img" />
						<div class="preview-meta">
							<ul>
								<!--이미지 마우스오버할 때 검색/관심상품/장바구니 추가할 수 있게 -->
								 <li>
									<span  data-toggle="modal" data-target="#product-modal">
										<i class="tf-ion-ios-search"></i>
									</span>
								</li>
								
								<!-- 관심상품 -->
								<li>
			                        <a href="#" ><i class="tf-ion-ios-heart"></i></a>
								</li>
								
								<!-- 장바구니 -->
								<li>
									<a href=""><i class="tf-ion-android-cart"></i></a>
								</li>
							</ul>
                      	</div>
					</div>
					
					<!-- 상품 이름, 가격 -->
					<div class="product-content">
						<h4><a href="product-single.html">UL:KIN UPCYCLING LABEL_FRAME CLUTCH HASSAM_Navy</a></h4>
						<p class="price">141,000원</p>
					</div>
				</div>
			</div>
			
			<!-- 위에랑 똑같이 -->
			<div class="col-md-3">
				<div class="product-item">
					<div class="product-thumb">
						<img class="img-responsive" src="imagesProd/shop/products/product-1.jpg" alt="product-img" />
						<div class="preview-meta">
							<ul>
								<li>
									<span  data-toggle="modal" data-target="#product-modal">
										<i class="tf-ion-ios-search-strong"></i>
									</span>
								</li>
								<li>
			                        <a href="#" ><i class="tf-ion-ios-heart"></i></a>
								</li>
								<li>
									<a href=""><i class="tf-ion-android-cart"></i></a>
								</li>
							</ul>
                      	</div>
					</div>
					<div class="product-content">
						<h4><a href="product-single.html">Rainbow Shoes</a></h4>
						<p class="price">$200</p>
					</div>
				</div>
			</div>
			
			<!-- 위와 같음 -->
			<div class="col-md-3">
				<div class="product-item">
					<div class="product-thumb">
						<img class="img-responsive" src="imagesProd/shop/products/product-2.jpg" alt="product-img" />
						<div class="preview-meta">
							<ul>
								<li>
									<span  data-toggle="modal" data-target="#product-modal">
										<i class="tf-ion-ios-search"></i>
									</span>
								</li>
								<li>
			                        <a href="#" ><i class="tf-ion-ios-heart"></i></a>
								</li>
								<li>
									<a href=""><i class="tf-ion-android-cart"></i></a>
								</li>
							</ul>
                      	</div>
					</div>
					<div class="product-content">
						<h4><a href="product-single.html">Strayhorn SP</a></h4>
						<p class="price">$230</p>
					</div>
				</div>
			</div>
			
			<!-- 03 -->
			<div class="col-md-3">
				<div class="product-item">
					<div class="product-thumb">
						<img class="img-responsive" src="imagesProd/shop/products/product-3.jpg" alt="product-img" />
						<div class="preview-meta">
							<ul>
								<li>
									<span  data-toggle="modal" data-target="#product-modal">
										<i class="tf-ion-ios-search"></i>
									</span>
								</li>
								<li>
			                        <a href="#" ><i class="tf-ion-ios-heart"></i></a>
								</li>
								<li>
									<a href=""><i class="tf-ion-android-cart"></i></a>
								</li>
							</ul>
                      	</div>
					</div>
					<div class="product-content">
						<h4><a href="product-single.html">Bradley Mid</a></h4>
						<p class="price">$200</p>
					</div>
				</div>
			</div>
			
		</div>
	</div>
</section>




<!-- Modal -->
<div class="modal product-modal fade" id="product-modal">
	<button type="button" class="close" data-dismiss="modal" aria-label="Close">
		<i class="tf-ion-close"></i>
	</button>
  	<div class="modal-dialog " role="document">
    	<div class="modal-content">
	      	<div class="modal-body">
	        	<div class="row">
	        		<div class="col-md-8">
	        			<div class="modal-image">
		        			<img class="img-responsive" src="imagesProd/shop/products/modal-product.jpg" />
		        			연관상품 돋보기 누르면 미리 보기 가능 (장바구니 추가까지)
	        			</div>
	        		</div>
	        		<div class="col-md-3">
	        			<div class="product-short-details">
	        				<h2 class="product-title">GM Pendant, Basalt Grey</h2>
	        				<p class="product-price">$200</p>
	        				<p class="product-short-description">
	        					Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem iusto nihil cum. Illo laborum numquam rem aut officia dicta cumque.
	        				</p>
	        				<a href="" class="btn btn-main">Add To Cart</a>
	        				<a href="" class="btn btn-transparent">View Product Details</a>
	        			</div>
	        		</div>
	        	</div>
	        </div>
    	</div>
  	</div>
</div>


	<!-- footer -->
	<%@ include file="/footer.jsp" %>


    <!-- 
    Essential Scripts
    =====================================-->
    
    <!-- Main jQuery -->
    <script src="plugins/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap 3.1 -->
    <script src="plugins/bootstrap/js/bootstrap.min.js"></script>
    <!-- Bootstrap Touchpin -->
    <script src="plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js"></script>
    <!-- Instagram Feed Js -->
    <script src="plugins/instafeed-js/instafeed.min.js"></script>
    <!-- Video Lightbox Plugin -->
    <script src="plugins/ekko-lightbox/dist/ekko-lightbox.min.js"></script>
    <!-- Count Down Js -->
    <script src="plugins/SyoTimer/build/jquery.syotimer.min.js"></script>
    
    <!-- Revolution Slider -->
    <script type="text/javascript" src="plugins/revolution-slider/revolution/js/jquery.themepunch.tools.min.js"></script>
    <script type="text/javascript" src="plugins/revolution-slider/revolution/js/jquery.themepunch.revolution.min.js"></script>
    
    <!-- Revolution Slider -->
    <script type="text/javascript" src="plugins/revolution-slider/revolution/js/extensions/revolution.extension.actions.min.js"></script>
    <script type="text/javascript" src="plugins/revolution-slider/revolution/js/extensions/revolution.extension.carousel.min.js"></script>
    <script type="text/javascript" src="plugins/revolution-slider/revolution/js/extensions/revolution.extension.kenburn.min.js"></script>
    <script type="text/javascript" src="plugins/revolution-slider/revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
    <script type="text/javascript" src="plugins/revolution-slider/revolution/js/extensions/revolution.extension.migration.min.js"></script>
    <script type="text/javascript" src="plugins/revolution-slider/revolution/js/extensions/revolution.extension.navigation.min.js"></script>
    <script type="text/javascript" src="plugins/revolution-slider/revolution/js/extensions/revolution.extension.parallax.min.js"></script>
    <script type="text/javascript" src="plugins/revolution-slider/revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
    <script type="text/javascript" src="plugins/revolution-slider/revolution/js/extensions/revolution.extension.video.min.js"></script>
    <script type="text/javascript" src="plugins/revolution-slider/revolution/js/extensions/revolution.extension.video.min.js"></script>
    <script type="text/javascript" src="plugins/revolution-slider/assets/warning.js"></script>  



    <!-- Google Mapl -->
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCC72vZw-6tGqFyRhhg5CkF2fqfILn2Tsw"></script>
  <script type="text/javascript" src="plugins/google-map/gmap.js"></script>

    <!-- Main Js File -->
    <script src="js/script.js"></script>
    


  </body>
  </html>