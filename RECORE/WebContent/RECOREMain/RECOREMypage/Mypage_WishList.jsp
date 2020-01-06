<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8");%>
<%@ page import="com.mvc.vo.Vo_Account" %>
<%@ page import="com.mvc.vo.Vo_Wish" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mapage_WishList</title>

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/RECOREMain/RECOREMypage/cssMy/Mypage_WishList_CSS.css"/>
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
  .ec-base-table thead th {
    text-align: center;
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
  
  #header{
  	position: relative;
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
	});

	function allchk(bool){ //전체 선택 박스가 체크 되면 실행
		$("input[type=checkbox]").each(function(){
			$(this).prop("checked",bool); //나머지 상품들을 전부 체크로 바꿔준다
		});
	}
	
	function deleteChecked(){
		alert("버튼 클릭?");
		var Arr_prod_no = new Array();
		for(var i=0;i<$('#chktd input').length;i++){
			var box = document.getElementById("wish_idx_"+i);
			if(box.checked){
				Arr_prod_no.push(document.getElementById("wish_idx_"+i).value);
			}
		}
		location.href="mypage.do?command=deletecheckedwish&arr_chk="+Arr_prod_no;
		console.log(Arr_prod_id);
	}
	
	function pageMove(pageNo){
		alert(pageNo);
		location.href = "mypage.do?command=wishlist&pageno="+pageNo;
	}
</script>
</head>

<body id="main">
<%
	Vo_Account vo_acc = (Vo_Account)session.getAttribute("vo");
	/* List<Vo_wish> vo_wish = (List)request.getAttribute("vo_wish");
	Object vo_wish = request.getAttribute("vo_wish"); */
	List<Vo_Wish> vo_wish = (List<Vo_Wish>)request.getAttribute("list_wish");
%>
	<!-- header -->
	<%@ include file="/header.jsp" %>

	<div id="wrap">
	    <div id="container">
	        <div id="content" style="margin-top: 130px;">
	        	
	        	<!-- <div class="path">
				    <span>현재 위치</span>
				    <ol>
				    	<li><a href="/">홈</a></li>
				        <li><a href="mypage.do?command=main">마이쇼핑</a></li>
				        <li title="현재 위치"><strong>관심상품</strong></li>
				    </ol>
				</div> -->
	        
				<div class="titleArea">
				    <h2>관심상품</h2>
				</div>
		
				<div class="xans-element- xans-myshop xans-myshop-wishlist ec-base-table typeList xans-record-">
					<table border="1" summary="" class="">
						<%-- <caption>관심상품 목록</caption> --%><!-- css display:none이 적용안되는 듯. 일단 주석처리-->
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
									<input type="checkbox" name="all" id="allCheck" onclick="allchk(this.checked);">
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
			            	<c:if test="${null eq list_wish}">
			            		<!-- <p class="message displaynone">관심상품 내역이 없습니다.</p> -->
			            		<tr><td colspan="9"><p class=""><br>관심상품 내역이 없습니다.</p></td></tr>
			            	</c:if>
			            	<!-- @@@@@wish 리스트 반복문@@@@@ -->
			            	<c:if test="${null ne list_wish}"> 
			            	<c:forEach var="wish" items="${list_wish}" varStatus="status" begin="${(page.rowContent * page.pageNo) - page.rowContent}" end="${(page.rowContent * page.pageNo) - 1}">
				            	<tr class="xans-record-">
									<td id="chktd"><!-- wish_idx[] 원래 input name-->
										<!-- <input name="chk" id="wish_idx_0" enable-order="1" reserve-order="N" enable-purchase="1" class="" is-set-product="F" value="126" type="checkbox"> -->
										<input type="checkbox" id="wish_idx_${status.index}" name="chk" value="${wish.prod_no}">
									</td>
					                <td class="thumb">
					                	<a href="<%=request.getContextPath()%>/Product.do?command=ProdDetail&pseq=${wish.prod_no}&catdno=${wish.catd_no}">
					                		<img src="<%=request.getContextPath()%>/RECOREMain/RECOREProduct/product/${wish.prod_no}/f_img.png">
					                		<!-- <img src="//dalisalda.com/web/product/medium/20191115/d34787634339f49b3938426c0213c468.jpg" alt=""> -->
					                	</a>
				                	</td>
					                <td class="left">
					                    <strong class="name">
					                    <!-- <a href="상품1경로@@@@@" class="ec-product-name">[프레시버블]<br>유기농 소프넛(솝베리) 친환경 살림 세트 500g</a> -->
					                    <%-- <a href="상품1경로@@@@@" class="ec-product-name"><%=vo_wish.get(0).getProd_name() %></a> --%>
					                    	<a href="<%=request.getContextPath()%>/Product.do?command=ProdDetail&pseq=${wish.prod_no}&catdno=${wish.catd_no}" class="ec-product-name"><strong>[${wish.prod_brand}]</strong><br>${wish.prod_name}</a>
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
										<!-- <strong class="">25,500원<br></strong><br><strong class="displaynone">25500</strong> -->
										<%-- <strong class=""><%=vo_wish2.get(0).getProd_price() %>원<br></strong><br><strong class="displaynone">25500</strong> --%>
										<strong class=""><fmt:formatNumber value="${wish.prod_price}" groupingUsed="true"></fmt:formatNumber>원<br></strong><br><strong class="displaynone">25500</strong>
									</td>
					                <td><span class="txtInfo"></span></td>
					                <td>
					                	<div class="txtInfo">기본배송<div class="displaynone">(해외배송가능)</div></div>
					                </td>
					                <td>
										<!-- <span class="">2,500원<br></span> 조건</td> -->
										<span class="">무료배송<br></span>  </td>
					                <!-- <td class="price right">28,000원</td> -->
					                <%-- <td class="price right"><%=vo_wish2.get(0).getProd_price() %>원</td> --%>
					                <td class="price right"><fmt:formatNumber value="${wish.prod_price}" groupingUsed="true"></fmt:formatNumber>원</td>
					                <td class="button">
					                    <a href="Product.do?command=Order&pseq=${wish.prod_no}" class="btnSubmit ">주문하기</a>
					                    <!-- <a href="#none" onclick="NewWishlist.actionOrder('basket', 0)" class="btnNormal ">장바구니담기</a> -->
					                    <!-- <a href="mypage.do?command=insertcart&prod_id=수정@@@@@@@@" class="btnNormal ">장바구니담기</a> -->
					                    <!-- <a href="#none" class="btnNormal btn_wishlist_del" rel="135||000A||"><i class="icoDelete"></i> 삭제</a> -->
					                    <a href="mypage.do?command=deletewishone&prod_no=${wish.prod_no}" class="btnNormal btn_wishlist_del" rel="135||000A||"><i class="icoDelete"></i> 삭제</a>
					                </td>
				            	</tr>
							</c:forEach>
							</c:if>
							<%-- </c:otherwise> --%>
							<!-- <tr>
								<td>확인@@@@@@@</td>
								<td>확인@@@@@@@</td>
								<td>확인@@@@@@@</td>
								<td>확인@@@@@@@</td>
								<td>확인@@@@@@@</td>
								<td>확인@@@@@@@</td>
								<td>확인@@@@@@@</td>
								<td>확인@@@@@@@</td>
								<td>확인@@@@@@@</td>
							</tr> -->
						</tbody>
					</table>
					<!-- <p class="message displaynone">관심상품 내역이 없습니다.</p> -->
				</div>
				
				<div class="xans-element- xans-myshop xans-myshop-wishlistbutton ec-base-button xans-record-">
					<span class="gLeft">
				        <strong class="text">선택상품을</strong>
				        <a href="#none" class="btnEm" onclick="deleteChecked();"><i class="icoDelete"></i> 삭제하기</a>
				        <!-- <a href="#none" class="btnNormal" onclick="NewWishlist.basket();">장바구니 담기</a> -->
				    </span>
					<span class="gRight">
				        <a href="#none" class="btnSubmitFix sizeM">전체상품주문</a>
				        <!-- <a href="#none" class="btnEmFix sizeM" onclick="NewWishlist.deleteAll();">관심상품 비우기</a> -->
				        <a href="mypage.do?command=deletewishall" class="btnEmFix sizeM">관심상품 비우기</a>
				    </span>
				</div>
				
				<div class="xans-element- xans-myshop xans-myshop-wishlistpaging ec-base-paginate">
					<a href="javascript:pageMove(${page.firstPageNo})" class="first">
						<img src="//img.echosting.cafe24.com/skin/base/common/btn_page_first.gif" alt="첫 페이지">
					</a>
					<a href="javascript:pageMove(${page.prevPageNo})">
						<img src="//img.echosting.cafe24.com/skin/base/common/btn_page_prev.gif" alt="이전 페이지">
					</a>
					<ol>
						<c:forEach var="i" begin="${page.startPage}" end="${page.endPage}">
							<li class="xans-record-">
								<a href="javascript:pageMove(${i})" class="this">${i}</a>
								<%-- <a href="" class="this" onclick="pageMove(${i})">${i}</a> --%>
							</li>
						</c:forEach>
				    </ol>
					<a href="javascript:pageMove(${page.nextPageNo})">
						<img src="//img.echosting.cafe24.com/skin/base/common/btn_page_next.gif" alt="다음 페이지">
					</a>
					<a href="javascript:pageMove(${page.lastPageNo})" class="last">
						<img src="//img.echosting.cafe24.com/skin/base/common/btn_page_last.gif" alt="마지막 페이지">
					</a>
				</div>
			</div><!-- content 끝@@@@@@ -->
		</div>
		</div>
	        <hr class="layout">
	        
			<!-- footer -->
			<%@ include file="/footer.jsp" %>
</body>
</html>