<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mypage_FundingList</title>

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/RECOREMain/RECOREMypage/cssMy/Mypage_OrderList_CSS.css"/>

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link rel="stylesheet" href="<%=request.getContextPath()%>/RECOREMain/RECOREMypage/https://fonts.googleapis.com/css?family=Nunito+Sans:200,300,400,700,900"> 
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
  
 
  
  </style>



</head>

<body id="main">


	<!-- header -->
	<%@ include file="/header.jsp" %>
	
	

	<div id="wrap">
	    <div id="container">
	        <div id="content" style="margin-top: 100px;">
				<div class="titleArea">
				    <h2>펀딩조회</h2>
				</div>
				
				<!-- 주문내역 or 취소환불내역 선택 -->
				<div class="xans-element- xans-myshop xans-myshop-orderhistorytab ec-base-tab ">
					<ul class="menu">
						<li class="selected">
							<a href="/myshop/order/list.html?history_start_date=2019-09-19&amp;history_end_date=2019-12-18&amp;past_year=2018">펀딩내역조회 (0)</a>
						</li>
				    <!--     <li class="">
				       		<a href="/myshop/order/list.html?mode=cs&amp;history_start_date=2019-09-19&amp;history_end_date=2019-12-18&amp;past_year=2018">취소/반품/교환 내역 (0)</a>
				        </li>
				        <li class="displaynone">
				        	<a href="/myshop/order/list_old.html?mode=old&amp;history_start_date=2019-09-19&amp;history_end_date=2019-12-18&amp;past_year=2018">이전 주문내역 (0)</a>
				        </li> -->
				    </ul>
				</div>
				
				<!-- 날짜 선택 -->
				<form method="GET" id="OrderHistoryForm" name="OrderHistoryForm">
					<div class="xans-element- xans-myshop xans-myshop-orderhistoryhead ">
						<fieldset class="ec-base-box">
							<legend>검색기간설정</legend>
							
							<!-- 주문처리 상태 -->
					        <div class="stateSelect ">
					            <select id="order_status" name="order_status" class="fSelect">
									<option value="all">전체 펀딩상태</option>
									<option value="shipped_before">입금전</option>
									<option value="shipped_standby">배송준비중</option>
									<option value="shipped_begin">배송중</option>
									<option value="shipped_complate">배송완료</option>
									<option value="order_cancel">취소</option>
									<option value="order_exchange">교환</option>
									<option value="order_return">반품</option>
								</select>        
							</div>
							<!-- 기간 선택 -->
					        <span class="period">
					            <a href="#none" class="btnNormal" days="00"><img src="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date1.gif" offimage="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date1.gif" onimage="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date1_on.gif" alt="오늘"></a>
					            <a href="#none" class="btnNormal" days="07"><img src="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date2.gif" offimage="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date2.gif" onimage="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date2_on.gif" alt="1주일"></a>
					            <a href="#none" class="btnNormal" days="30"><img src="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date3.gif" offimage="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date3.gif" onimage="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date3_on.gif" alt="1개월"></a>
					            <a href="#none" class="btnNormal" days="90"><img src="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date4.gif" offimage="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date4.gif" onimage="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date4_on.gif" alt="3개월"></a>
					            <a href="#none" class="btnNormal" days="180"><img src="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date5.gif" offimage="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date5.gif" onimage="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date5_on.gif" alt="6개월"></a>
					        </span>
					        
					        <!-- 달력 선택 -->
					        <input id="history_start_date" name="history_start_date" class="fText hasDatepicker" readonly="readonly" size="10" value="2019-09-19" type="text">
					        <button type="button" class="ui-datepicker-trigger"><img src="//img.echosting.cafe24.com/skin/admin_ko_KR/myshop/ico_cal.gif" alt="..." title="..."></button> ~ <input id="history_end_date" name="history_end_date" class="fText hasDatepicker" readonly="readonly" size="10" value="2019-12-18" type="text">
					        <button type="button" class="ui-datepicker-trigger">
					        <img src="//img.echosting.cafe24.com/skin/admin_ko_KR/myshop/ico_cal.gif" alt="..." title="..."></button>        
					        <input alt="조회" id="order_search_btn" type="image" src="//img.echosting.cafe24.com/skin/admin_ko_KR/myshop/btn_search.gif">    
				        </fieldset>
				        
						<ul>
							<li>기본적으로 최근 3개월간의 자료가 조회되며, 기간 검색시 지난 펀딩내역을 조회하실 수 있습니다.</li>
					        <li>펀딩번호를 클릭하시면 해당 펀딩에 대한 상세내역을 확인하실 수 있습니다.</li>
					    </ul>
					</div>
					<input id="mode" name="mode" value="" type="hidden">
					<input id="term" name="term" value="" type="hidden">
				</form>
				
				<!-- 주문 상품 정보 -->
				<div class="xans-element- xans-myshop xans-myshop-orderhistorylistitem ec-base-table typeList">
					<div class="title">
				    	<h3>펀딩 참여 정보</h3>
				    </div>
				    
					<table border="1" summary="">
						<caption>펀딩 참여 정보</caption>
				        <colgroup>
							<col style="width:135px;">
							<col style="width:93px;">
							<col style="width:auto;">
							<col style="width:61px;">
							<col style="width:111px;">
							<col style="width:111px;">
							<col style="width:111px;">
						</colgroup>
						<thead>
							<tr>
								<th scope="col">참여일자<br>[참여번호]</th>
				                <th scope="col">이미지</th>
				                <th scope="col">상품정보</th>
				                <th scope="col">수량</th>
				                <th scope="col">상품구매금액</th>
				                <th scope="col">주문처리상태</th>
				                <th scope="col">취소/교환/반품</th>
				            </tr>
			            </thead>
						<tbody class="center displaynone">
							<tr class="">
								<td class="number displaynone">
				                	<p></p>
						            <p><a href="detail.html" class="line">[]</a></p>
				                    <a href="#none" class="btnNormal displaynone" onclick="">펀딩취소</a>
				                    <a href="cancel.html" class="btnNormal displaynone">취소신청</a>
				                    <a href="exchange.html" class="btnNormal displaynone">교환신청</a>
				                    <a href="return.html" class="btnNormal displaynone">반품신청</a>
				                </td>
				                <td class="thumb">
				                	<a href="/product/detail.html">
				                	<img src="//img.echosting.cafe24.com/thumb/img_product_small.gif" onerror="this.src='//img.echosting.cafe24.com/thumb/img_product_small.gif';" alt=""></a>
			                	</td>
				                <td class="product left top">
				                    <strong class="name"></strong>
				                    <div class="option displaynone"></div>
				                    <ul class="xans-element- xans-myshop xans-myshop-optionset option">
				                    	<li class=""><strong></strong> (개)</li>
									</ul>
									<p class="gBlank5 displaynone">무이자할부 상품</p>
				                </td>
				                <td></td>
				                <td class="right">
									<strong></strong><div class="displaynone"></div>
								</td>
				                <td class="state">
				                    <p class="txtEm"></p>
				                    <p class="displaynone"><a href="" target=""></a></p>
				                    <p class="displaynone"><a href="#none" class="line" onclick="">[]</a></p>
				                    <a href="/board/product/write.html" class="btnSubmit displaynone">구매후기</a>
				                    <a href="#none" class="btnNormal displaynone" onclick="">취소철회</a>
				                    <a href="#none" class="btnNormal displaynone" onclick="">교환철회</a>
				                    <a href="#none" class="btnNormal displaynone" onclick="">반품철회</a>
				                </td>
				                <td>
				                    <p class="displaynone"><a href="#none" class="btnNormal" onclick="">상세정보</a></p>
				                    <p class="displaynone">-</p>
				                </td>
				            </tr>
							<tr class="">
								<td class="number displaynone">
				                    <p></p>
                                    <p><a href="detail.html" class="line">[]</a></p>
				                    <a href="#none" class="btnNormal displaynone" onclick="">펀딩취소</a>
				                    <a href="cancel.html" class="btnNormal displaynone">취소신청</a>
				                    <a href="exchange.html" class="btnNormal displaynone">교환신청</a>
				                    <a href="return.html" class="btnNormal displaynone">반품신청</a>
				                </td>
				                <td class="thumb">
				                	<a href="/product/detail.html">
				                	<img src="//img.echosting.cafe24.com/thumb/img_product_small.gif" onerror="this.src='//img.echosting.cafe24.com/thumb/img_product_small.gif';" alt="">
				                	</a>
			                	</td>
				                <td class="product left top">
				                    <strong class="name"></strong>
				                    <div class="option displaynone"></div>
				                    <ul class="xans-element- xans-myshop xans-myshop-optionset option">
										<li class=""><strong></strong> (개)</li>
									</ul>
									<p class="gBlank5 displaynone">무이자할부 상품</p>
				                </td>
				                <td></td>
				                <td class="right">
									<strong></strong>
									<div class="displaynone"></div>
								</td>
				                <td class="state">
				                    <p class="txtEm"></p>
				                    <p class="displaynone"><a href="" target=""></a></p>
				                    <p class="displaynone"><a href="#none" class="line" onclick="">[]</a></p>
				                    <a href="/board/product/write.html" class="btnSubmit displaynone">구매후기</a>
				                    <a href="#none" class="btnNormal displaynone" onclick="">취소철회</a>
				                    <a href="#none" class="btnNormal displaynone" onclick="">교환철회</a>
				                    <a href="#none" class="btnNormal displaynone" onclick="">반품철회</a>
				                </td>
				                <td>
				                    <p class="displaynone"><a href="#none" class="btnNormal" onclick="">상세정보</a></p>
				                    <p class="displaynone">-</p>
				                </td>
				            </tr>
						</tbody>
					</table>
					<p class="message ">펀딩 내역이 없습니다.</p>
				</div>
	
				<div class="xans-element- xans-myshop xans-myshop-orderhistorypaging ec-base-paginate">
					<a href="?page=1&amp;history_start_date=2019-09-19&amp;history_end_date=2019-12-18&amp;past_year=2018" class="first">
						<img src="//img.echosting.cafe24.com/skin/base/common/btn_page_first.gif" alt="첫 페이지">
					</a>
					<a href="?page=1&amp;history_start_date=2019-09-19&amp;history_end_date=2019-12-18&amp;past_year=2018">
						<img src="//img.echosting.cafe24.com/skin/base/common/btn_page_prev.gif" alt="이전 페이지">
					</a>
					<ol>
						<li class="xans-record-">
							<a href="?page=1&amp;history_start_date=2019-09-19&amp;history_end_date=2019-12-18&amp;past_year=2018" class="this">1</a>
						</li>
				    </ol>
					<a href="?page=1&amp;history_start_date=2019-09-19&amp;history_end_date=2019-12-18&amp;past_year=2018">
						<img src="//img.echosting.cafe24.com/skin/base/common/btn_page_next.gif" alt="다음 페이지">
					</a>
					<a href="?page=1&amp;history_start_date=2019-09-19&amp;history_end_date=2019-12-18&amp;past_year=2018" class="last">
						<img src="//img.echosting.cafe24.com/skin/base/common/btn_page_last.gif" alt="마지막 페이지">
					</a>
				</div>
			</div>
	        
	       <hr class="layout">
	        
	       <!-- footer -->
		<%@ include file="/footer.jsp" %>
		
	
</body>
</html>