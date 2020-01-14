<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<%
	response.setContentType("text/html; charset=UTF-8");
%>

	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    <%@ page import="com.mvc.vo.Vo_Category_Detail"%>
    <%@ page import="com.mvc.vo.Vo_Order_Num"%>
    <%@ page import="com.mvc.vo.Vo_Order_Num2"%>
    <%@ page import="com.mvc.vo.Vo_Order"%>
    <%@ page import="com.mvc.vo.Vo_Order_Prod"%>
    <%@ page import="com.mvc.vo.Vo_Product"%>
    <%@ page import = "java.util.List"%>
    
    <% Vo_Product pvo = (Vo_Product)request.getAttribute("pvo"); %>
    <% List<Vo_Order_Num> orderlist = (List)request.getAttribute("orderlist"); %>
    <% Vo_Order_Num2 onum2 = (Vo_Order_Num2)request.getAttribute("ordernum"); %>
    <% Vo_Order pnum = (Vo_Order)request.getAttribute("prod_order"); %>
    <% int totalPrice = Integer.parseInt(request.getParameter("totalPrice")); %>
   	<% int order_seq = Integer.parseInt(request.getParameter("order_seq")); %>
   	<% int amount = Integer.parseInt(request.getParameter("amount")); %>
    <% List<String> acc_addrs = (List<String>)request.getAttribute("acc_addrs"); %>

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
    
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    
  </head>
  
  <body id = "body">
  
  <%@ include file="/header.jsp"%>
    
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
     		<c:set var = "i" value = "0"></c:set>
     		<c:forEach var = "orderno" items = "${orderlist}">
     		<c:set var = "i" value = "${orderlist.size()}"></c:set>
     		</c:forEach>
        <ul>
			<li>주문번호 : <strong>${ordernum.order_no}</strong>
			</li>
            <li>주문일자 : <span>${ordernum.order_date}</span>
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
             <strong class="txtEm txt18" id = "aftertotal">
             <fmt:formatNumber><%=totalPrice%>
			 </fmt:formatNumber>
            </strong>
            <strong class="txtEm">원</strong> 
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
				 + 배송비 0 <span class="displaynone"> - 상품할인금액&nbsp;${ordernum.order_point}</span> = 합계 : 
				 <strong class="txtEm gIndent10">
		 		<span class="txt18">${prod_order.order_price}</span>원
		 		</strong> 
		 		<span class="displaynone"></span>
			</td>
			

		</tr>
		</tfoot>
		
		<tbody class="xans-element- xans-order xans-order-normalresultlist center">
			<tr class="xans-record-">
			<td class="thumb">
				<a href="<%=request.getContextPath()%>/Product.do?command=ProdDetail&pseq=${pvo.prod_no}&catdno=${pvo.prod_catd}">
				<img src="<%=request.getContextPath()%>/RECOREMain/RECOREProduct/product/${pvo.prod_no}/f_img.png" onerror="" alt="">
				</a></td>
            <td class="left">
            <strong class="name"><a href="<%=request.getContextPath()%>/Product.do?command=ProdDetail&pseq=${pvo.prod_no}&catdno=${pvo.prod_catd}" class="ec-product-name">${pvo.prod_name}</a></strong>
            <div class="option "></div>
              <p class="gBlank5 displaynone">무이자할부 상품</p>
            </td>
            
            <td class="right">
              <div class="displaynone">
              <strong> <fmt:formatNumber>${pvo.prod_price}
			 </fmt:formatNumber>원</strong>
              <div class="displaynone">
              </div>
              </div>
           	</td>
                        
            <td>${prod_order.order_amount}</td>
            <td><span class="txtInfo">-</span></td>
            <td><div class="txtInfo">기본배송</div></td>
            <td class="right">
			<strong>${prod_order.order_price}</strong>
			
			<div class="displaynone"></div>
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
			
		<strong><span class="txt23"><fmt:formatNumber><%=pvo.getProd_price() * amount%></fmt:formatNumber></span>원</strong><span class="displaynone"></span>
		</div>
		</td>
		<td class=""><div class="box txt16">
		<strong>- <span class="txt23"><fmt:formatNumber>${ordernum.order_point}</fmt:formatNumber></span>원</strong><span class="displaynone"></span>
		</div>
		</td>
	
		<td><div class="box txtEm txt16">
		<strong><span class="txt23"><fmt:formatNumber><%=totalPrice - onum2.getOrder_point()%></fmt:formatNumber></span>원</strong><span class="displaynone"></span>
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
        <td><strong class="txt14">${ordernum.order_point}</strong>원</td>
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
	      <td><span>${vo.acc_name}</span></td>
	    </tr>
	
		<tr class="">
		<th scope="row">우편번호</th>
	      <td><span>${ordernum.order_zipcode}</span></td>
	    </tr>
		<tr class="">
		<th scope="row">주소</th>
          <td><span>${ordernum.order_addr}&nbsp;${ordernum.order_addr2}</span></td>
         </tr>
		<tr>
		<th scope="row">휴대전화</th>
		<td><span>${vo.acc_phone}</span></td>
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