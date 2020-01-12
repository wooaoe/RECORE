<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%request.setCharacterEncoding("UTF-8");%>
	<%response.setContentType("text/html; charset=UTF-8");%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ page import="com.mvc.vo.Vo_Category_Detail"%>
    <%@ page import="com.mvc.vo.Vo_Order_Num"%>
    <%@ page import="com.mvc.vo.Vo_Order"%>
    <%@ page import="com.mvc.vo.Vo_Order_Prod"%>
    <%@ page import="com.mvc.vo.Vo_Product"%>
    <%@ page import = "java.util.List"%>
    
    <%Vo_Account sessionVo = (Vo_Account) session.getAttribute("vo");%>
   
    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RECORE - PAYMENT</title>
<meta charset="utf-8">
    
    <%@ include file = "/head.jsp" %>
    
    <style type="text/css">
    	#img-fluid{
    		max-width: 350px;
    		height: 350px;
    	}   
    	html{
    		scroll-behavior: smooth;
    	} 
    	.prodButtonWhite{
			background-color: white; 
			border:1px solid ;
			border-radius: 50%; 
			border-color:#a0d9d9; 
			width: 30px; 
			height: 30px; 
			text-align: center;
			float: left; 
			margin-right: 10px;
			cursor: pointer;
		}
		.prodButton{
			background-color: #a0d9d9; 
			border:2px solid ; 
			border-radius: 50%;  
			border-color:#a0d9d9; 
			width: 30px; 
			height: 30px; 
			text-align: center;
			float: left; 
			margin-right: 10px;
			cursor: pointer;
		}
		
    </style>
    
    <link rel="stylesheet" type="text/css" 
    href="<%=request.getContextPath()%>/RECOREMain/RECOREProduct/cssOrder/afterOder_page.css"/>
    
    
  </head>
  
  <body id = "body">
  
  <%@ include file = "/header.jsp" %>
    
    <div id="wrap">
    
    <div id="container">
    <div id="content" style="margin-top: 100px;">
            
	<div class="path">
    <span>현재 위치</span>
     <ol>
     	<li><a href="<%=request.getContextPath()%>/RECOREMain/index.html">홈</a></li>
        <li>주문서 작성</li>
        <li title="현재 위치"><strong>주문완료</strong></li>
    </ol>
    </div>

	<div class="titleArea">
    <h2>주문완료</h2>
	</div>

	<form id="frm_order_result" name="frm_order_result" action="" method="post" target="_self" enctype="multipart/form-data">
	<input id="order_id" name="order_id" value="20200105-0000241" type="hidden">
	<input id="bank_url_hidden" name="bank_url_hidden" value="" type="hidden">
	<div class="xans-element- xans-order xans-order-result xans-record-">
	
	
	<div class="orderInfo" style = "width: 70%;">
        <p>
         <strong>고객님의 주문이 완료 되었습니다.</strong>
            	주문내역 및 배송에 관한 안내는 <a href="<%=request.getContextPath()%>/mypage.do?command=orderlist&pageno=1">주문조회</a> 를 통하여 확인 가능합니다.
        </p>
        <ul>
     
			<li>주문번호 : <strong></strong>
			</li>
            <li>주문일자 : <span></span>
			</li>
        </ul>
			
	</div>
	
	<div class="orderArea">
        <div class="title">
            <h3>결제정보</h3>
        </div>

        <div class="ec-base-table">
            <table border="1" summary="">
				<caption>결제정보</caption>
				<colgroup>
				<col style="width:140px;">
				<col style="width:auto;">
				</colgroup>
		<tbody>
		<tr>
		<th scope="row">최종결제금액</th>
           <td>
           	<%--  <c:set var = "i" value = "0"></c:set>
           	 <c:forEach var = "porder" items = "${pOrderlist}">
             <c:set var = "i" value = "${pOrderlist.size()}"></c:set>
             </c:forEach> --%>
             <strong class="txtEm txt18" id = "aftertotal">
            </strong><strong class="txtEm">원</strong> 
             <span class="txtEm displaynone"></span>
           </td>
        
        </tr>
		<tr>
		<th scope="row">결제수단</th>
           <td>
             <strong><span>카카오페이 결제</span></strong>
             
            </td>
        </tr>
	</tbody>
	</table>
	</div>
    </div>
    
    
    
	<div class="orderListArea">
        <div class="title">
            <h3>주문 상품 정보</h3>
        </div>

        <div class="ec-base-table typeList " nspace="normal">
            <table border="1" summary="">
			<caption>기본배송</caption>
			<colgroup>
			<col style="width:92px">
			<col style="width:auto">
			<col style="width:98px">
			<col style="width:75px">
			<col style="width:98px">
			<col style="width:98px">
			<col style="width:98px">
			</colgroup>
          
          <tr>
			<th scope="col">이미지</th>
            <th scope="col">상품정보</th>
            <th scope="col">판매가</th>
            <th scope="col">수량</th>
            <th scope="col">적립금</th>
            <th scope="col">배송구분</th>
            <th scope="col">합계</th>
          </tr>
          
          
		<tfoot class="right">
		
		<tr>
		   
			<td colspan="7">
				<span class="gLeft">[기본배송]</span> 상품구매금액 
				<strong>
				<span class="displaynone"> (0)</span>
				</strong>
				<span class="displaynone"></span>
				 + 배송비 0 <span class="displaynone"> - 상품할인금액 </span> = 합계 : 
				 <strong class="txtEm gIndent10">
		 		<span class="txt18"></span>원
		 		</strong> 
		 		<span class="displaynone"></span>
			</td>
			

		</tr>
		</tfoot>
		
		<tbody class="xans-element- xans-order xans-order-normalresultlist center">
			<tr class="xans-record-">
			<td class="thumb">
				<a href="/product/detail.html?product_no=303&amp;cate_no=91">
				<img src="//dalisalda.com/web/product/tiny/20191212/6353d3867b386a9d99c10eddc8e5914f.jpg" onerror="this.src='//img.echosting.cafe24.com/thumb/img_product_small.gif';" alt="">
				</a></td>
            <td class="left">
            <strong class="name"><a href="/product/아르지탈-민트-치약/303/category/91/" class="ec-product-name">[아르지탈] 민트 치약</a></strong>
            <div class="option "></div>
              <p class="gBlank5 displaynone">무이자할부 상품</p>
            </td>
            <td class="right">
              <div class="displaynone">
              <strong>15,000원</strong>
              <div class="displaynone">
              </div>
              </div>
           	</td>
                        
            <td>1</td>
            <td><span class="txtInfo">-</span></td>
            <td><div class="txtInfo">기본배송</div></td>
            <td class="right">
			<strong>15,000원</strong>
			
			<div class="displaynone"></div>
			</td>
            </tr>
			<tr class="xans-record-">
					
             <td class="thumb">
                 <a href="/product/detail.html?product_no=303&amp;cate_no=91">
                 <img src="//dalisalda.com/web/product/tiny/20191212/6353d3867b386a9d99c10eddc8e5914f.jpg" 
                   onerror="this.src='//img.echosting.cafe24.com/thumb/img_product_small.gif';" alt=""></a></td>
                 <td class="left">
                 <strong class="name">
                 <a href="/product/아르지탈-민트-치약/303/category/91/" class="ec-product-name">[아르지탈] 민트 치약
                 </a>
                 </strong>
            <div class="option "></div>
               <p class="gBlank5 displaynone">무이자할부 상품</p>
             </td>
                        
             <td class="right">
               <div class="">
               <strong>0원</strong>
               <div class="displaynone">
               </div>
               </div>
             </td>
             <td>1</td>
             <td><span class="txtInfo">-</span></td>
             <td><div class="txtInfo">기본배송</div></td>
                        <td class="right">
                        
			 <strong>0원</strong><div class="displaynone"></div>
			 </td>
             </tr>
			</tbody>
			</table>
			</div>
    </div>
    
 	<div class="orderArea displaynone">
 	   
    </div>  
    
    
	<div class="totalArea">
        <div class="ec-base-table typeList gBorder total">
            <table border="1" summary="">
	<caption>결제금액</caption>
	<colgroup>
	<col style="width:33.33%; height: 33.33%">
	<col style="width:33.33%" class="">
	<col style="width:33.33%">
	</colgroup>
	<thead>
	
	<tr>
		<th scope="col" style = "text-align:center;">
			<strong >총 주문 금액</strong> 
		</th>
	    <th scope="col" class="" style = "text-align:center;">
			<strong class="">적립금 사용</strong>
			<strong class="displaynone"></strong>
		</th>
	    <th scope="col" style = "text-align:center;"><strong style = "text-align:center;">총 결제금액</strong></th>
	</tr>
	</thead>
	
	<tbody class="center">
		<tr>
		<td class="price">
		<div class="box txt16">
		<strong><span class="txt23">17,500</span>원</strong><span class="displaynone"></span>
		</div>
		</td>
		<td class=""><div class="box txt16">
		<strong>- <span class="txt23">2,500</span>원</strong><span class="displaynone"></span>
		</div>
		</td>
	
		<td><div class="box txtEm txt16">
		<strong><span class="txt23">15,000</span>원</strong><span class="displaynone"></span>
	</div>
	</td>
    </tr>
    </tbody>
	</table>
	</div>
       
    <div class="detail">
    <div class="ec-base-table gMerge ">
      <table border="1" summary="">
		<caption>할인 내역</caption>
		                <colgroup>
		<col style="width:140px">
		<col style="width:auto">
		</colgroup>
	<tbody>
	<tr class="sum txt13">
	<th scope="row"><strong>적립금 적용</strong></th>
        <td><strong class="txt14">2,500</strong>원</td>
    </tr>
	
</tbody>
</table>
</div>
            
      <div class="ec-base-table gMerge displaynone">
         <table border="1" summary="">
		<caption>부가결제 내역</caption>
		<colgroup>
		<col style="width:140px">
		<col style="width:auto">
		</colgroup>

		<div class="orderArea">
        <div class="title">
            <h3>배송지정보</h3>
        </div>
        <div class="ec-base-table">
      
        <table border="1" summary="">
		
		<caption>배송지 정보</caption>
		<colgroup>
		<col style="width:140px;">
		<col style="width:auto;">
		</colgroup>

		<tbody>
		<th scope="row">받으시는분</th>
	      <td><span></span></td>
	    </tr>
	
		<tr class="">
		<th scope="row">우편번호</th>
	      <td><span>08740</span></td>
	    </tr>
		<tr class="">
		<th scope="row">주소</th>
          <td><span>서울특별시 관악구 남부순환로233길 29-3 (봉천동) 샤인빌 304호</span></td>
         </tr>

		<tr>
		<th scope="row">일반전화</th>
		<td></td>
		</tr>
		<tr>
		<th scope="row">휴대전화</th>
		<td><span>010-6473-3048</span></td>
		</tr>
		<tr>
		<th scope="row">배송메시지</th>
		<td></td>
	    </tr>
		</tbody>
	</table>
	
	</div>
	</div>
	
	<div class="ec-base-button">
	        
        <span class="gRight">
            <a href="<%=request.getContextPath()%>/RECOREMain/index.html" class="btnNormalFix sizeL">쇼핑계속하기</a>
            <a href="<%=request.getContextPath()%>/mypage.do?command=orderlist&pageno=1" class="btnSubmitFix sizeL">주문확인하기</a>
        </span>
    </div>
    

    
		<div id="order_layer_detail" class="totalDetail ec-base-layer">
	        <div class="header">
	            <h3>총 주문금액 상세내역</h3>
	        </div>
	        <div class="content">
	            <p>17,500원</p>
	            <ul class="ec-base-desc typeDot gLarge rightDD">
					<li>
						<strong class="term">상품금액</strong><span class="desc">15,000원</span>
					</li>
	 
	                <li>
						<strong class="term">배송비</strong><span class="desc">2,500원</span>
					</li>
	            </ul>
			</div>
	        <a href="#none" class="close" onclick="OrderLayer.offDiv('order_layer_detail');">
	        <img src="//img.echosting.cafe24.com/skin/base/common/btn_close.gif" alt="닫기"></a>
	    </div>

	</table>
	</div>
	</div>
	</div>
	</div>
	</form>

	</div>
	</div>
    
	

    <%@ include file="/footer.jsp" %>
    
  </div>

  <script src="<%=request.getContextPath()%>/RECOREMain/js/jquery-3.3.1.min.js"></script>
  <script src="<%=request.getContextPath()%>/RECOREMain/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="<%=request.getContextPath()%>/RECOREMain/js/jquery-ui.js"></script>
  <script src="<%=request.getContextPath()%>/RECOREMain/js/popper.min.js"></script>
  <script src="<%=request.getContextPath()%>/RECOREMain/js/bootstrap.min.js"></script>
  <script src="<%=request.getContextPath()%>/RECOREMain/js/owl.carousel.min.js"></script>
  <script src="<%=request.getContextPath()%>/RECOREMain/js/jquery.stellar.min.js"></script>
  <script src="<%=request.getContextPath()%>/RECOREMain/js/jquery.countdown.min.js"></script>
  <script src="<%=request.getContextPath()%>/RECOREMain/js/jquery.magnific-popup.min.js"></script>
  <script src="<%=request.getContextPath()%>/RECOREMain/js/bootstrap-datepicker.min.js"></script>
  <script src="<%=request.getContextPath()%>/RECOREMain/js/aos.js"></script>

  <script src="<%=request.getContextPath()%>/RECOREMain/js/main.js"></script>

</body>
</html>