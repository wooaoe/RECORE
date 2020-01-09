<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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

 <script type="text/javascript">
	$(document).ready(function(){
		$("#complete").click(function(){
			opener.location.href = "Product.do?command=complete";
			window.close();
		});
	});
	$("#close").click(function(){
		var result = confirm('카카오페이 결제를 취소하시겠습니까?');
		if(result) { 
			alert("취소 되었습니다.");
			self.close();
		} else { 
		}
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
			<form action="Product.do"> 
			<input type = "hidden" name = "command" value = "complete"/>
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
			<script type="text/javascript">
				function afterorder(){
					
				}
			
			
			</script>
			
			<div class="layer_foot">
				<button class="btn_close"><span class="img_pay" id = "close">닫기</span></button>
			</div>
		</div>
	</div>

</body>
</html>