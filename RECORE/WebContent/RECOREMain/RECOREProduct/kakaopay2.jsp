<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title></title>
    <meta charset="utf-8">
    <meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <link rel="stylesheet" type="text/css" href="//t1.daumcdn.net/kakaopay/tesla/20191122/pg-web/css/common.min.css">
    <script src="//t1.daumcdn.net/kakaopay/tesla/20180108/pg_web/js/lib/jquery.min.js"></script>
    
    <script>
        <!-- Google Analytics -->
        console.log('initializing GA');

        (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
            (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
            m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
        })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

        ga('create', 'UA-77118432-2', 'auto');
        ga('send', 'pageview');
        <!-- End Google Analytics -->
    </script>

<script>
		var hash = "9aadb391ec26d23b04eae7aa1ca5a28fc781a7cc35bfe5726ade1db31fc53589";
		var failUrl = "https://www.byseries.com:443/Pay/paymentCallbackClose";
		var remainingSec = 900;
		var cancelUrl = "https://www.byseries.com:443/Pay/paymentCallbackClose";
		var isCancelPost = false;
		var isFailPost = false;
		var isApprovalPost = false;
		var isIssuedSubscriptionOrder = false;
	</script>

<script src="//t1.daumcdn.net/kakaopay/tesla/20180108/pg_web/js/lib/spin.min.js"></script>

<script src="/dist/js/v2/min_common_payment.js?v=99"></script>

<script src="/dist/js/v2/min_web_waiting.js?v=99"></script>

</head>
<body>

<div id="payPopupDiv" class="pay_popup hide">
    <div class="inner_terms_layer">
        <div class="layer_head">
            <strong class="tit_terms">제목</strong>
        </div>
        <div class="layer_body">
            <div class="desc_terms">
                내용
            </div>
        </div>
        <div class="layer_foot">
            <button type="button" class="btn_terms">확인</button>
        </div>
    </div>
</div>

<div id="payAlertDiv" class="hide">
    <div class="agree_layer">
        <div class="inner_agree_layer inner_agree_layer2">
            <div class="layer_body">
                <div class="desc_agree"></div>
            </div>
            <div class="layer_foot">
                <button id="alertOkButton" class="btn_layer">확인</button>
            </div>
        </div>
    </div>
</div>

<div id="payConfirmDiv" class="hide">
    <div class="agree_layer">
        <div class="inner_agree_layer inner_agree_layer2">
            <div class="layer_body">
                <strong class="desc_agree">카카오페이 결제를 중단하시겠습니까?</strong>
            </div>
            <div class="layer_foot">
                <button id="confirmCancelButton" class="btn_layer2">취소</button>
                <button id="confirmOkButton" class="btn_layer2">확인</button>
            </div>
        </div>
    </div>
</div>


<div class="kakaopay_layer">
		<span class="dimmed_layer loading_layer" style="display:none"></span>
		<span id="spin"></span>
		<div class="inner_kakaopay">
			<div class="layer_head">
				<strong class="img_pay logo_kakaopay">kakaopay</strong>
			</div>
			<div class="layer_body">
				<!-- <form action = "Product.do">
				<input type = "hidden" name = "command" value = "complete" /> -->
					<fieldset>
						<legend class="screen_out">휴대폰 번호 및 생년월일 입력</legend>
						<ol class="list_order">
							<li><em class="emph_num">1</em><span>휴대폰에서 카카오페이 결제 후,</span> </li>
							<li><em class="emph_num">2</em><em class="emph_info">하단의 <span>결제</span> 완료 버튼</em>을 눌러주세요.</li>
						</ol>
						<div class="area_btn">
							<button type="button" class="btn_submit" 
							id = "complete">결제 완료</button>
							
							 <script type="text/javascript">
								$(document).ready(function(){
									$("#complete").click(function(){
										
										opener.location.href = "afterOrder_page.jsp";
										window.close();
										
									});
								});
							</script>
							
						</div>
					</fieldset>
				<!-- </form> -->
			</div>
			<div class="layer_foot">
				<button class="btn_close"><span class="img_pay" id = "close">닫기</span></button>
				<script type="text/javascript">
				
				$(document).ready(function(){
					
				$("#close").click(function(){
						
						var result = confirm('카카오페이 결제를 취소하시겠습니까?');

						if(result) { 
							self.close();
						} else { 
						}
							
					});
				});
				
				</script>
			</div>
		</div>
		<form id="approvalPost" action="approval" method="post">
		</form>
	</div>

</body>
</html>