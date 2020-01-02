<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%	request.setCharacterEncoding("UTF-8");%>
<% 	response.setContentType("text/html; charset=UTF-8");%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import = "java.util.List" %>
<%@ page import = "com.mvc.vo.Vo_Product" %>

<!DOCTYPE html>
<html class="no-js">
<!--<![endif]-->
<head>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

<%@ include file="/headP.jsp"%>


<!-- 임의로 스타일 적용하기 -->
<style type="text/css">
	
	.testpadding {
		padding: 80px;
	}
	
	#productInfo {
		text-align: center;
		color: black;
	}
	
	#frontimg {
		width: 445px;
		height: 100%;
	}
	
	@font-face {
		font-family: 'Noto Sans Kannada', sans-serif;
		src: url("//fonts.googleapis.com/earlyaccess/notosanskannada.css") format("truetype");
		font-style: normal;
		font-weight: normal;
	}
	
	ul{
		font-family: 'Noto Sans Kannada', sans-serif;
	    font-size: 18px; 
	}

</style>
</head>

<body id="body">

	<%@ include file="/footerPdetail.jsp"%>

	<% Vo_Product pvo = (Vo_Product)request.getAttribute("pvo"); %>
	
	<%! String url; %>
	<%! int catdno;  %>
	<% if(pvo.getProd_catd() == 6 || pvo.getProd_catd() == 7 || pvo.getProd_catd() == 8 ||
		  pvo.getProd_catd() == 9 || pvo.getProd_catd() == 10 || pvo.getProd_catd() == 11 ||
		  pvo.getProd_catd() == 12){ %>
	<% url = "ChildSelectAll"; %>
	<% } %>
	

	<!--상품 상세 페이지 -->
	<section class="single-product">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
				
					<ol class="breadcrumb">
						<li><a
							href="<%=request.getContextPath()%>/RECOREMain/index.jsp">Home</a></li>
						<li><a href="Product.do?command=ProdSelectAll">Product</a></li>

						<!-- @@카테고리 타고 넘어오는 부분 종류 뭔지 써주기@@ -->
    			    	<li class="active"><a
							href="Product.do?command=<%=url%>&catdno=${pvo.prod_catd}">${cdvo.catd_name}</a></li>
					</ol>
				</div>
				<div class="col-md-6">
					<ol class="product-pagination text-right">
						<li><a href="#"><i class="tf-ion-ios-arrow-left"></i>
								Next </a></li>
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
										<img id="frontimg"
											src="<%=request.getContextPath()%>/RECOREMain/RECOREProduct/product/${pvo.prod_no}/f_img.png"
											alt='' data-zoom-image="<%=request.getContextPath()%>/RECOREMain/RECOREProduct/product/${pvo.prod_no}/f_img.png" />
									</div>
									<div class='item'>
									<img id="frontimg" src='<%=request.getContextPath()%>/RECOREMain/RECOREProduct/product/${pvo.prod_no}/f_img.png' alt='' 
									data-zoom-image="<%=request.getContextPath()%>/RECOREMain/RECOREProduct/product/${pvo.prod_no}/f_img.png" />
								</div>
								</div>

								<!-- sag sol -->
								<a class='left carousel-control' href='#carousel-custom'
									data-slide='prev'> <i class="tf-ion-ios-arrow-left"></i>
								</a> 
								<a class='right carousel-control' href='#carousel-custom'
									data-slide='next'> <i class="tf-ion-ios-arrow-right"></i>
								</a>
							</div>



							<!-- @@ 이미지 넘어가는 부분 @@ -->
							<ol class='carousel-indicators mCustomScrollbar meartlab'>
								<li data-target='#carousel-custom' data-slide-to='0'
									class='active'><img
									src='<%=request.getContextPath()%>/RECOREMain/RECOREProduct/product/${pvo.prod_no}/f_img.png'
									alt='' /></li>
								<li data-target='#carousel-custom' data-slide-to='1'><img
									src='<%=request.getContextPath()%>/RECOREMain/RECOREProduct/product/${pvo.prod_no}/f_img.png'
									alt='' /></li>
							</ol>

						</div>
					</div>
				</div>



				<!-- @@상품 이름, 가격 / 상세 정보글@@ -->
				<div class="col-md-7" style="position: relative; left: 50px;">
					<div class="single-product-details">
						<h2 style = "margin-top: 0px;">${pvo.prod_name}</h2>
						<p class="product-price">
							<fmt:formatNumber value="${pvo.prod_price}" groupingUsed="true">
							</fmt:formatNumber>원
						</p>

						<!-- @@상세 정보글@@ -->
						<p class="product-description mt-20">${pvo.prod_note}&nbsp;</p>
						<!-- <p>제품 정보 글 쓰는 곳</p>
						<br> -->
						
						<br>
						<div class="product-size">
							<span>색상:</span> 
							<select class="form-control">
								<c:forEach var = "color" items = "${povo}">
								<option>${color.prod_color}</option>
								</c:forEach>
							</select>
						</div>
						
						

						<!-- @@사이즈@@ -->
						<div class="product-size">
							<span>사이즈:</span> 
							<select class="form-control">
								<c:forEach var = "size" items = "${povo}">
								<option>${size.prod_size}</option>
								</c:forEach>
							</select>
						</div>


						<!-- @@상품 수량@@ -->
						<div class="product-quantity">
							<span>수량:</span>
							<div class="product-quantity-slider">
								<div class="input-group bootstrap-touchspin">
								
									<span class="input-group-btn">
										<button id="minus" class="btn btn-default bootstrap-touchspin-down"
											type="button" onclick="change(-1)"> -
										</button>
									</span> 
									
									<span class="input-group-addon bootstrap-touchspin-prefix"
										style="display: none;">
									</span> 
									
									<input id="product-quantity"
										type="text" value="0" name="product-quantity"
										class="form-control" style="display: block;"> 
									<span class="input-group-addon bootstrap-touchspin-postfix"
										style="display: none;">
									</span> 
									
									<span class="input-group-btn">
										<button id="plus"
											class="btn btn-default bootstrap-touchspin-up" type="button"
											onclick="change(1)"> +
										</button>
									</span>
									
								</div>
							</div>
						</div>

						<!-- @@장바구니 / 바로구매 / 관심상품@@ -->

						<!-- 최상위 폴더 / 해당파일이 존재하는 폴더 / 해당파일 -->
						<br>
						<div class = "color-swatches">
							<span>총 금액 :</span><span style = "margin-left: 5px;"><fmt:formatNumber value="${pvo.prod_price}" groupingUsed="true">
							</fmt:formatNumber>원
						</span>		
						</div>
						<br><br>
						<a href="../RECOREMypage/Mypage_Cart.jsp"
							class="btn btn-main mt-20">장바구니</a>&nbsp;&nbsp;
						<a href="Product.do?command=Order&pseq=${pvo.prod_no}" 
						class="btn btn-main mt-20">바로 구매</a>&nbsp;&nbsp; 
						<a href="../RECOREMypage/Mypage_WishList.jsp" 
						class="btn btn-main mt-20">관심상품</a>
					</div>
				</div>
			</div>


			<!-- @@ Detail / Q&A / Review @@ -->
			<div class="row">
				<div class="col-xs-12">
					<div class="tabCommon mt-20">
						<br><br><br><br>
						<ul class="nav nav-tabs" style = "font-size: 11pt;">
							<li class="active"><a data-toggle="tab" href="#details"
								aria-expanded="true">DETAIL</a></li>
							<li class=""><a data-toggle="tab" href="#reviews"
								aria-expanded="false">REVIEW</a></li>
							<li class=""><a data-toggle="tab" href="#reviews"
								aria-expanded="false">Q&A</a></li>
						</ul>
						<div class="tab-content patternbg">
							
							<!-- <h4 id = "productInfo">제품 설명 헤드라인</h4>
					<p style = "text-align: center;">dddddddddddddddd</p> -->


							<!-- @@ 상세 내용 이미지 들어가는 곳 @@ -->
							<c:forEach begin="1" end="${pvo.prod_con_count}" step="1" var="i">
								<div id="details" class="tab-pane fade active in">
									<p>
										<img style="width: 900px; position: relative; left: 80px;"
											src="<%=request.getContextPath()%>/RECOREMain/RECOREProduct/product/${pvo.prod_no}/con_img${i}.png">
									</p>
								</div>
							</c:forEach>


							<!-- @@리뷰 상세@@ -->
							<div id="reviews" class="tab-pane fade">
								<div class="post-comments">
									<ul class="media-list comments-list m-bot-50 clearlist">

										<!-- Comment Item start-->
										<li class="media"><a class="pull-left" href="#"> 
											<img class="media-object comment-avatar" src="imagesProd/blog/avater-1.jpg" 
											alt="" width="50" height="50" />
										</a>

											<div class="media-body">
												<div class="comment-info">
													<h4 class="comment-author">
														<!-- @@고객 아이디@@ -->
														<a href="#">motop**</a>
													</h4>
													
													<!-- @@ 글 작성 시간 @@ -->
													<time datetime="2019-12-24T23:00">Dec 23, 2019, at 11:34</time>
													
													<!-- @@ reply누르면 댓글 작성할 수 있게 @@  -->
													<a class="comment-button" href="#">
													<i class="tf-ion-chatbubbles"></i>Reply</a>
												</div>
												
												<!-- @@ 고객 리뷰글 가져오기 @@  -->
												<p>리뷰글 적는 곳</p>
												
											</div>
										</li>
										<!-- @@ 리뷰 작성 끝 @@ -->


										<!-- @@ 위에 리뷰 반복 @@-->
										<li class="media"><a class="pull-left" href="#"> <img
												class="media-object comment-avatar"
												src="imagesProd/blog/avater-4.jpg" alt="" width="50"
												height="50" />
										</a>

											<div class="media-body">

												<div class="comment-info">
													<div class="comment-author">
														<a href="#">Jonathon Andrew</a>
													</div>
													<time datetime="2013-04-06T13:53">July 02, 2015, at
														11:34</time>
													<a class="comment-button" href="#"><i
														class="tf-ion-chatbubbles"></i>Reply</a>
												</div>

												<p>리뷰글 적는곳</p>

											</div></li>
										<!-- End Comment Item -->

										<!-- Comment Item start-->
										<li class="media"><a class="pull-left" href="#"> <img
												class="media-object comment-avatar"
												src="imagesProd/blog/avater-1.jpg" alt="" width="50"
												height="50">
										</a>

											<div class="media-body">

												<div class="comment-info">
													<div class="comment-author">
														<a href="#">Jonathon Andrew</a>
													</div>
													<time datetime="2013-04-06T13:53">July 02, 2015, at
														11:34</time>
													<a class="comment-button" href="#"><i
														class="tf-ion-chatbubbles"></i>Reply</a>
												</div>

												<p>Lorem ipsum dolor sit amet, consectetur adipiscing
													elit. Quisque at magna ut ante eleifend eleifend.</p>

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


	<!-- @@ 연관 상품 추천 @@ -->
	<section class="products related-products section">
		<div class="container">
			<div class="row">
				<div class="title text-center">
					<h2>연관 상품</h2>
				</div>
			</div>
			<%-- <div>${pvo.prod_catd}</div> --%>
			
			<div class="row">
			<!-- @@ 연관 상품 @@ -->
			<c:set var = "i" value = "0"></c:set>
			<c:forEach var = "sub" items = "${plist}">
			<c:choose >
			<c:when test="${sub.prod_catd eq pvo.prod_catd && i < 4}"> 
				<div class="col-md-3">
					<div class="product-item">
						<div class="product-thumb">
						
							<!-- 세일 여부 -->
							<!-- <span class="bage">Sale</span> -->
							<!-- Bag이면 가방이랑 연관된 상품, ACC면 악세사리랑 연관된 상품이 뜨도록 어떻게??? -->
								<img class="img-responsive"
									src="<%=request.getContextPath()%>/RECOREMain/RECOREProduct/product/${sub.prod_no}/f_img.png"
									alt="product-img" />
							<div class="preview-meta">
								<ul>
									<!--@@ 이미지 마우스오버할 때 검색/관심상품/장바구니 추가할 수 있게 @@ -->
									<li><span data-toggle="modal" data-target="#product-modal">
											<i class="tf-ion-ios-search"></i>
										</span>
									</li>
									<!-- @@ 관심상품 @@ -->
									<li><a href="#"><i class="tf-ion-ios-heart"></i></a></li>
									<!-- @@ 장바구니 @@ -->
									<li><a href=""><i class="tf-ion-android-cart"></i></a></li>
								</ul>
							</div>
						</div>
						<!-- @@ 상품 이름, 가격 @@ -->
						<div class="product-content">
							<h4>
								<a href="<%-- Product.do?command=${pvo.prod_comm} --%>#"
								style = "overflow:hidden; word-wrap:break-word;">${sub.prod_name}</a>
							</h4>
							<p class="price"><fmt:formatNumber value="${sub.prod_price}" groupingUsed="true">
							</fmt:formatNumber>원
							</p>
						</div>
					</div>
				</div>
				<c:set var = "i" value = "${i+1}"></c:set>
			  </c:when>
			 </c:choose>
			</c:forEach>
			
			
			
			</div> 
		</div>
	</section>




	<!-- Modal -->
	<div class="modal product-modal fade" id="product-modal">
		<button type="button" class="close" data-dismiss="modal"
			aria-label="Close">
			<i class="tf-ion-close"></i>
		</button>
		<div class="modal-dialog " role="document">
			<!-- @@ modal 폼 사이즈와 위치 조절 @@ -->
			<div class="modal-content" style = "position: relative; width: 650px; right: 90px;">
				<div class="modal-body" style = "padding-top: 25px; padding-bottom: 25px;">
					<div class="row">
					<!-- @@ 해당 상품 사진 @@ -->
					<c:set var = "i" value = "0"></c:set>
					<c:forEach var = "modal" items = "${plist}">
					<c:choose>
					<c:when test="${modal.prod_catd eq pvo.prod_catd && i < 2}">
						<div class="col-md-8" >
							<div class="modal-image">
								<img  class="img-responsive"
									src="<%=request.getContextPath()%>/RECOREMain/RECOREProduct/product/${modal.prod_no}/f_img.png" /> 
							</div>
						</div>
						
						<!-- @@ 상품 이름, 가격, 상세 내용 들어가는 곳 @@ -->
						<div class="col-md-3" style = "padding: 0px; margin-left: 15px;">
							<div class="product-short-details">
								<h2 class="product-title">${modal.prod_name}</h2>
								<p class="product-price"><fmt:formatNumber value="${modal.prod_price}" groupingUsed="true">
							</fmt:formatNumber>원</p>
								<p class="product-short-description">${modal.prod_note}</p>
								<a href="" class="btn btn-main" style = "display: flex; height: 6vh;
								justify-content: center; align-items: center;">장바구니</a> 
								<a href="Product.do?command=ProdDetail&pseq=${modal.prod_no}"
									class="btn btn-transparent">상세페이지</a>
							</div>
						</div>
					<c:set var = "i" value = "${i+1}"></c:set>	
					</c:when>
					</c:choose>
					</c:forEach>
					
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- @@ 화살표 누르면 상단으로 @@ -->
	
	<div style = "position: fixed; bottom: 30px; right: 30px;">
		<a href = "#body"><img src = "<%=request.getContextPath()%>/images/up-arrow.png" /></a>
	</div>

	<!-- footer -->
	<%@ include file="/footer.jsp"%>


	<!-- 
    Essential Scripts
    =====================================-->

	<!-- Main jQuery -->
	<script
		src="<%=request.getContextPath()%>/RECOREMain/plugins/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap 3.1 -->
	<script
		src="<%=request.getContextPath()%>/RECOREMain/plugins/bootstrap/js/bootstrap.min.js"></script>
	<!-- Bootstrap Touchpin -->
	<script
		src="<%=request.getContextPath()%>/RECOREMain/plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js"></script>
	<!-- Instagram Feed Js -->
	<script
		src="<%=request.getContextPath()%>/RECOREMain/plugins/instafeed-js/instafeed.min.js"></script>
	<!-- Video Lightbox Plugin -->
	<script
		src="<%=request.getContextPath()%>/RECOREMain/plugins/ekko-lightbox/dist/ekko-lightbox.min.js"></script>
	<!-- Count Down Js -->
	<script
		src="<%=request.getContextPath()%>/RECOREMain/plugins/SyoTimer/build/jquery.syotimer.min.js"></script>

	<!-- Revolution Slider -->
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/RECOREMain/plugins/revolution-slider/revolution/js/jquery.themepunch.tools.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/RECOREMain/plugins/revolution-slider/revolution/js/jquery.themepunch.revolution.min.js"></script>

	<!-- Revolution Slider -->
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/RECOREMain/plugins/revolution-slider/revolution/js/extensions/revolution.extension.actions.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/RECOREMain/plugins/revolution-slider/revolution/js/extensions/revolution.extension.carousel.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/RECOREMain/plugins/revolution-slider/revolution/js/extensions/revolution.extension.kenburn.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/RECOREMain/plugins/revolution-slider/revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/RECOREMain/plugins/revolution-slider/revolution/js/extensions/revolution.extension.migration.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/RECOREMain/plugins/revolution-slider/revolution/js/extensions/revolution.extension.navigation.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/RECOREMain/plugins/revolution-slider/revolution/js/extensions/revolution.extension.parallax.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/RECOREMain/plugins/revolution-slider/revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/RECOREMain/plugins/revolution-slider/revolution/js/extensions/revolution.extension.video.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/RECOREMain/plugins/revolution-slider/revolution/js/extensions/revolution.extension.video.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/RECOREMain/plugins/revolution-slider/assets/warning.js"></script>



	<!-- Google Mapl -->
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCC72vZw-6tGqFyRhhg5CkF2fqfILn2Tsw"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/RECOREMain/plugins/google-map/gmap.js"></script>

	<!-- Main Js File -->
	<script src="<%=request.getContextPath()%>/RECOREMain/js/script.js"></script>



</body>
</html>