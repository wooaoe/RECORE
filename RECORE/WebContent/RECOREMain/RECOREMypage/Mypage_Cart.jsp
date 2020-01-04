<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8");%>
<%@ page import="com.mvc.vo.Vo_Account" %>
<%@ page import="com.mvc.vo.Vo_Cart" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mypage_Cart</title>

	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/RECOREMain/RECOREMypage/cssMy/Mypage_Cart_CSS.css"/>
	
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
<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
	$(function(){ 
		
		$("input[name=chk]").click(function(){ //전체선택 후 상품 체크박스가 하나라도 체크 해제되면 전체선택 취소해준다
			if($("input[name=all]:checked").length == 1){ // 전체 선택이 되어있다면
				if($("input[name=chk]:checked").length != 300){ // 수정필요@@@@ 상품의 길이 가져와야함
					$("input[name=all]").prop("checked",false); //전체 선택 해제
				}
			}
		});
		
		/* $("#deleteChk").click(function(){
			alert("선택삭제 클릭?");
			alert($("#basket_chk_id_0").val());
			var Arr_prod_id = new Array();
			if($("#basket_chk_id_0").is(":checked")){
				Arr_prod_id.push($("#basket_chk_id_0").val());

			}
			console.log(Arr_prod_id);
		}); */
		
	});
	
	function allchk(bool){ //전체 선택 박스가 체크 되면 실행
		$("input[type=checkbox]").each(function(){
			$(this).prop("checked",bool); //나머지 상품들을 전부 체크로 바꿔준다
		});
	}
	
	function amountUp(index){
		var rec = parseInt(document.getElementById("quantity_id_"+index).value);
		var up = rec+1;
		document.getElementById("quantity_id_"+index).value = up;
	}
	
	function amountDown(index){
		var rec = parseInt(document.getElementById("quantity_id_"+index).value);
		var up = rec-1;
		if(up>0){
			document.getElementById("quantity_id_"+index).value = up;
		}else{
			alert("수량은 최소 1개 이상이어야 합니다.");
		}
	}
	
	function modifyAmount(index, prod_id){
		var rec = parseInt(document.getElementById("quantity_id_"+index).value);
		location.href="mypage.do?command=cartupdate&prod_id="+prod_id+"&cart_amount="+rec;
		alert(id);
	}
	
	function deleteChecked(){
		alert("버튼 클릭?");
		var Arr_prod_id = new Array();
		for(var i=0;i<$('#chktd input').length;i++){
			var box = document.getElementById("basket_chk_id_"+i);
			if(box.checked){
				Arr_prod_id.push(document.getElementById("basket_chk_id_"+i).value);
			}
		}
		location.href="mypage.do?command=deletecheckedcart&arr_chk="+Arr_prod_id;
		console.log(Arr_prod_id);
	}
	
	/* function deleteChecked(index,lastindex){
		alert("체크 삭제 들어왔니?");
		var Arr_prod_id = new Array();
		Arr_prod_id.push(document.getElementById("basket_chk_id_"+index).value);
		for(var i=0;i<=lastindex;i++){
			Arr_prod_id[i] = document.getElementById("basket_chk_id_"+index).value;
			Arr_prod_id.push(document.getElementById("basket_chk_id_"+index).value);
		} 
		alert(Arr_prod_id);
		console.log(Arr_prod_id);
	} */
	
</script>
</head>
<body id="main">
<%
	Vo_Account vo_acc = (Vo_Account)session.getAttribute("vo");
	/* List<Vo_wish> vo_wish = (List)request.getAttribute("vo_wish");
	Object vo_wish = request.getAttribute("vo_wish"); */
	List<Vo_Cart> list_cart = (List<Vo_Cart>)request.getAttribute("list_cart");
%>
	<!-- header -->
	<%@ include file="/header.jsp" %>
	
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
									<li><a href="/myshop/mileage/historyList.html">가용적립금 : <strong><fmt:formatNumber value="<%=vo_acc.getAcc_point() %>" groupingUsed="true"></fmt:formatNumber>원</strong></a></li>
	                    			<li class="displaynone"><a href="/myshop/deposits/historyList.html">예치금 : <strong></strong></a></li>
	                    			<!-- 쿠폰 없음@@@@@@@@@@@@@@@ -->
	                    			<!-- <li><a href="/myshop/coupon/coupon.html">쿠폰 : <strong>3개</strong></a></li> -->
	                			</ul>
							</div>
	        			</div>
					</div>
					<div class="xans-element- xans-order xans-order-tabinfo ec-base-tab typeLight ">
						<ul class="menu">
							<li class="selected "><a href="/order/basket.html">국내배송상품 (${list_cart.size()})</a></li>
	       	 			</ul>
					</div>
					<!-- @@@@@장바구니가 비었을 때@@@@@ -->
					<%-- <c:if test="${null eq list_cart}">
						<div class="xans-element- xans-order xans-order-empty ">
							<p>장바구니가 비어 있습니다.</p>
						</div>
					</c:if> --%>
					<!-- @@@@장바구니에 상품이 있을 때@@@@@ -->
					<%-- <c:if test="${null ne list_cart}">  --%>
						<div class="orderListArea ec-base-table typeList gBorder">
		        			<%-- <div class="xans-element- xans-order xans-order-normtitle title "><h3>일반상품 (${list_cart.size()})</h3>
							</div> --%>
		
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
										<th scope="col"><input type="checkbox" name="all" onclick="allchk(this.checked);"></th>
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
											<span class="gLeft">[기본배송]</span> 상품구매금액 
 											<strong>
 												<c:set var="sum" value="0"></c:set>
 												<c:forEach var="cart_price" items="${list_cart}">
 													<c:set var="sum" value="${sum + (cart_price.prod_price*cart_price.cart_amount)}"></c:set>
 												</c:forEach>
 												<fmt:formatNumber value="${sum}" groupingUsed="true"></fmt:formatNumber>
 												<%-- <c:out value="${sum}"></c:out>원 <span class="displaynone">()</span> --%>
 											</strong>
											<!-- <strong>22000원 <span class="displaynone">()</span></strong> -->
											<span class="displaynone"> </span><span class="displaynone"> + 부가세 <span class="displaynone"> </span></span> + 배송비 <span id="normal_normal_ship_fee">0</span>
											<span class="displaynone"> </span> <span id="normal_normal_benefit_price_area" class="displaynone"> - 상품할인금액 <span id="normal_normal_benefit_price">0</span> </span> = 합계 : <strong class="txtEm gIndent10">
											<span id="normal_normal_ship_fee_sum" class="txt18"><fmt:formatNumber value="${sum}" groupingUsed="true"></fmt:formatNumber></span>원</strong> <span class="displaynone"> </span>
										</td>
		                			</tr>
	                			</tfoot>
	                			<tbody class="xans-element- xans-order xans-order-list center">
	                				<!-- 장바구니가 비었을 때@@@@@@@@@@@@@ -->
		                			<c:if test="${null eq list_cart}">
											<tr><td colspan="10"><p class=""><br>장바구니가 비어 있습니다.</p></td></tr>
									</c:if>
									<!-- 장바구니에 상품이 있을 때@@@@@@@@@@@@ -->
									<c:if test="${null ne list_cart}"> 
	                				<c:forEach var="cart" items="${list_cart}" varStatus="status">
	                				<tr class="xans-record-">
										<td id="chktd">
											<!-- <input type="checkbox" id="basket_chk_id_0" name="chk"> -->
											<%-- <input type="checkbox" id="basket_chk_id_${status.index}" name="chk" value="${cart.prod_id}" onclick="deleteChecked(${status.index});"> --%>
											<%-- <input type="checkbox" id="basket_chk_id_0" name="chk" value="${cart.prod_id}"> --%>
											<%-- <input type="checkbox" id="basket_chk_id_${status.index}" name="chk" value="${cart.prod_id}"> --%>
											<input type="checkbox" id="basket_chk_id_${status.index}" name="chk" value="${cart.prod_id}">
										</td>
					                    <td class="thumb gClearLine">
					                    	<a href="/product/detail.html?product_no=261&amp;cate_no=91">
					                    	<img src="<%=request.getContextPath() %>/RECOREMain/RECOREProduct/product/${cart.prod_no}/f_img.png">
				                    		<!-- <img src="//dalisalda.com/web/product/tiny/20191206/90446b2ad04fff657071104925ed4b7b.jpg" onerror="this.src='//img.echosting.cafe24.com/thumb/img_product_small.gif';" alt="[웬즈데이블루]아보카도 타조알 비누 퓨어"> -->
					                    	</a>
					                    </td>
					                    <td class="left gClearLine">
		                        			<strong class="name">
			                        			<a href="/product/웬즈데이블루아보카도-타조알-비누-퓨어/261/category/91/" class="ec-product-name">
			                        				<strong>[${cart.prod_brand}]</strong><br>${cart.prod_name}
			                        			</a>
		                        			</strong>    <span class="displaynone engName">(영문명 : )</span>
		                        			<p class="gBlank5 displaynone"><strong>배송주기</strong> <span class="txtEm"></span></p>
		                    			</td>
		                    			<td class="right">
		                        			<div id="product_price_div0" class="">
												<%-- <strong>${cart.prod_price}원</strong><p class="displaynone"></p> --%>
												<fmt:formatNumber value="${cart.prod_price}" groupingUsed="true"></fmt:formatNumber>
												
											</div>
											<!-- 할인가격@@@@@@@@@@@ -->
		                        			<!-- <div id="product_sale_price_div0" class="displaynone">
												<strong><span id="product_sale_price_front0">17,000</span>원</strong><p class="displaynone"></p>
											</div> -->
		                    			</td>
					                    <td>
					                        <span class="">
					                            <span class="ec-base-qty">
					                            <!-- 수량 -->
					                            <%-- <input id="quantity_id_0" name="quantity_name_0" size="2" value="${cart.cart_amount}" type="text"> --%>
					                            <input id="quantity_id_${status.index}" name="quantity_name_0" size="2" value="${cart.cart_amount}" type="text">
					                            <!-- 수량 증가 버튼 -->
					                            <!-- <a href="javascript:;" onclick="Basket.addQuantityShortcut('quantity_id_0', 0);"> -->
					                            <!-- <a href="#" onclick="amountUp();"> -->
					                            <a href="#" onclick="amountUp(${status.index});">
					                            	<img src="//img.echosting.cafe24.com/skin/base/common/btn_quantity_up.gif" alt="수량증가" class="up">
					                            </a>
					                            <!-- 수량 감소 버튼 -->
					                            <!-- <a href="javascript:;" onclick="Basket.outQuantityShortcut('quantity_id_0', 0);"> -->
					                            <!-- <a href="#" onclick="amountDown();"> -->
					                            <a href="#" onclick="amountDown(${status.index});">
					                            	<img src="//img.echosting.cafe24.com/skin/base/common/btn_quantity_down.gif" alt="수량감소" class="down">
					                            </a>
					                            </span>
					                            <!-- <a href="javascript:;" class="btnNormal gBlank5" onclick="Basket.modifyQuantity()">변경</a> -->
					                            <a href="#" class="btnNormal gBlank5" onclick="modifyAmount(${status.index},${cart.prod_id})">변경</a>
					                        </span>
					                        <span class="displaynone">1</span>
					                    </td>
					                    <td><span id="product_mileage0" class="txtInfo">-</span></td>
					                    <td><div class="txtInfo">기본배송<br></div></td>
					                    <td rowspan="1" class="">
											<p class=""><br>무료배송<span class="displaynone"><br></span></td>
		                    			<td class="right">
											<strong><span id="sum_price_front0"><fmt:formatNumber value="${cart.prod_price * cart.cart_amount}" groupingUsed="true"></fmt:formatNumber></span>원</strong><div class="displaynone"></div>
										</td>
					                    <td class="button">
					                        <a href="javascript:;" class="btnSubmit " onclick="Basket.orderBasketItem(0);">주문하기</a>
					                        <a href="javascript:;" class="btnSubmit displaynone" onclick="Basket.orderBasketItem(0);">정기배송 신청</a>
					                        <!-- <a href="javascript:;" class="btnNormal" onclick="BasketNew.moveWish(0);">관심상품등록</a> -->
					                        <a href="mypage.do?command=insertwish&prod_no=${cart.prod_no}" class="btnNormal">관심상품등록</a>
					                        <a href="mypage.do?command=deletecartone&prod_id=${cart.prod_id}" class="btnNormal"><i class="icoDelete"></i> 삭제</a>
					                        <!-- <a href="javascript:;" class="btnNormal" onclick="Basket.deleteBasketItem(0);"><i class="icoDelete"></i> 삭제</a> -->
					                    </td>
		                			</tr>
		                			</c:forEach>
		                			</c:if>
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
				            <a href="#none" class="btnEm" onclick="deleteChecked();"><i class="icoDelete"></i> 삭제하기</a>
				            <!-- <a href="#none" class="btnEm" id="deleteChk"><i class="icoDelete"></i> 삭제하기</a> -->
				            <a href="#none" onclick="Basket.addWishList()" class="btnNormal displaynone">관심상품등록</a>
				            <!--a href="#none" onclick="Basket.moveOversea()" class="btnNormal ">해외배송상품 장바구니로 이동</a-->
				            <a href="#none" onclick="Basket.hopeProduct('park21yc'); return false;" class="btnNormal displaynone">상품조르기</a>
				        </span>
						<span class="gRight">
				            <a href="#none" onclick="Basket.orderStorePickupSelectBasket(this)" class="btnNormal displaynone" link-order="/order/orderform.html?basket_type=all_buy" link-login="/member/login.html">스토어픽업 상품 선택</a>
				            <a href="mypage.do?command=deletecartall" class="btnNormal" onclick="Basket.emptyBasket()">장바구니비우기</a>
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
											<strong><span class="txt23"><fmt:formatNumber value="${sum}" groupingUsed="true"></fmt:formatNumber></span>원</strong> <span class="txt14 displaynone"></span>
										</div>
									</td>
	                    			<td class="displaynone">
	                    				<div class="box txt16">
											<strong><span class="txt23">0</span>원</strong> <span class="txt14 displaynone"></span>
										</div>
									</td>
	                    			<td>
	                        			<div class="box shipping txt16">
	                            			<strong class="txt23">+ </strong><strong><span id="total_delv_price_front" class="txt23">0</span>원</strong> <span class="txt14 displaynone"></span>
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
											<strong class="txt23">= </strong><strong><span id="total_order_price_front" class="txt23"><fmt:formatNumber value="${sum}" groupingUsed="true"></fmt:formatNumber></span>원</strong> <span class="txt14 displaynone"><span id="total_order_price_back"></span></span>
										</div>
									</td>
	                			</tr>
                			</tbody>
						</table>
					</div>
					
					<%-- </c:if> --%>
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
		</div>
	</div>
	        
	        <hr class="layout">
	        
          
          
          <!-- footer -->
          
		<%@ include file="/footer.jsp" %>

</body>
</html>