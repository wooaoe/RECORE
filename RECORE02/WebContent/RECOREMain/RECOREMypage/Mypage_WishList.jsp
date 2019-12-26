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
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito+Sans:200,300,400,700,900"> 
    <link rel="stylesheet" href="fonts/icomoon/style.css">

    <link rel="stylesheet" href="cssMain/magnific-popup.css">
    <link rel="stylesheet" href="cssMain/jquery-ui.css">
    <link rel="stylesheet" href="cssMain/owl.carousel.min.css">
    <link rel="stylesheet" href="cssMain/owl.theme.default.min.css">
    <link rel="stylesheet" href="cssMain/bootstrap-datepicker.css">
    
    
    <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">
  
    <link rel="stylesheet" href="cssMain/aos.css">

    <link rel="stylesheet" href="cssMain/styleMy.css">

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

	<!-- header -->
	<%@ include file="/header.jsp" %>

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
	        
			<!-- footer -->
			<%@ include file="/footer.jsp" %>
</body>
</html>