<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%request.setCharacterEncoding("UTF-8");%>
	<%response.setContentType("text/html; charset=UTF-8");%>
	
    <%@ page import = "com.mvc.vo.Vo_Product" %>
    <%@ page import = "com.mvc.vo.Vo_Prod_option" %>
    <%@ page import = "com.mvc.vo.Vo_Account" %>
    <%@ page import = "com.mvc.vo.Vo_Order_Num" %>
	<%@ page import = "java.util.List" %>
	
	
	
	<% int order_seq = (int)request.getAttribute("order_seq"); %>
	<% String amount = (String)request.getAttribute("amount"); %>
	<% String totalPrice = (String)request.getAttribute("totalPrice");%>
	<% String prod_id = (String)request.getAttribute("prod_id");%>
   
    

<!DOCTYPE html>
<html>
<head>
    <title>KAKAOPAY - 결제</title>
    <meta charset="utf-8">
    <meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <link rel="stylesheet" type="text/css" href="//t1.daumcdn.net/kakaopay/tesla/20191122/pg-web/css/common.min.css">
    <script src="//t1.daumcdn.net/kakaopay/tesla/20180108/pg_web/js/lib/jquery.min.js"></script>
    

<script src="//t1.daumcdn.net/kakaopay/tesla/20180108/pg_web/js/lib/spin.min.js"></script>

<script src="/dist/js/v2/min_common_payment.js?v=99"></script>

<script src="/dist/js/v2/min_web_waiting.js?v=99"></script>

<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

	
 <script type="text/javascript">

 	function afterorder(){
 		 		
 		var order_seq_tmp = $("#order_seq").val();
 		var amount_tmp = $("#amount").val();
 		var total_tmp = $("#totalPrice").val();
 		var prod_id_tmp = $("#prod_id").val();
		 
 		var url = "Product.do?command=cartComplete&prod_id=" + prod_id_tmp + 
 					"&totalPrice=" + total_tmp + "&amount=" + amount_tmp + "&order_seq=" + order_seq_tmp;
 			 		
 		opener.location.href = url;
 		window.close(); 
 	}
	
 	$(document).ready(function(){
 		
 		$("#close").click(function(){
			
 			var order_seq_test = $("#order_seq").val();
			var result = confirm('카카오페이 결제를 취소하시겠습니까?');
			
			if(result) { 
				var url = "Product.do?command=cartPayDelete&order_seq=" + order_seq_test;
				opener.document.location = url;
				window.close();
				
			} else { 
		}
	});
 });
	
	
</script>

</head>
<body>

		<div class="kakaopay_layer">
		<span class="dimmed_layer loading_layer" style="display:none"></span>
		<span id="spin"></span>
		<div class="inner_kakaopay">
			<div class="layer_head">
				<strong class="img_pay logo_kakaopay">kakaopay</strong>
			</div>
			<form action=""> 
			<input id = "amount" type = "hidden" name = "amount" value = "<%=amount%>"/>
			<input id = "totalPrice" type = "hidden" name = "totalPrice" value = "<%=totalPrice%>"/> 
			<input id = "prod_id" type = "hidden" name = "prod_id" value = "<%=prod_id%>"/> 
			<input id = "order_seq" type = "hidden" name = "order_seq" value = "<%=order_seq%>"/> 
			<div class="layer_body">
					<fieldset>
						<legend class="screen_out">휴대폰 번호 및 생년월일 입력</legend>
						<ol class="list_order">
							<li><em class="emph_num">1</em><span>휴대폰에서 카카오페이 결제 후,</span> </li>
							<li><em class="emph_num">2</em><em class="emph_info">하단의 <span>결제</span> 완료 버튼</em>을 눌러주세요.</li>
						</ol>
						<div class="area_btn">
							<button type="button" class="btn_submit" 
							id = "complete" onclick = "javascript: afterorder();">결제 완료</button>
						</div>
					</fieldset>
			</div>
			</form>
			<div class="layer_foot">
				<button type = "button" class="btn_close" id = "close">닫기</button>
			</div>
		</div>
	</div>

</body>
</html>