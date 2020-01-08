<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KAKAOPAY - 결제</title>

<head>
    <title></title>
    <meta charset="utf-8">
    <meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <link rel="stylesheet" type="text/css" href="//t1.daumcdn.net/kakaopay/tesla/20191122/pg-web/css/common.min.css">
    <script async="" src="https://www.google-analytics.com/analytics.js"></script><script src="//t1.daumcdn.net/kakaopay/tesla/20180108/pg_web/js/lib/jquery.min.js"></script>
    

<script type="text/javascript" src="/dist/js/v2/min_common_payment.js?v=99"></script>

<script type="text/javascript" src="//t1.daumcdn.net/kakaopay/tesla/20180702/jquery-qrcode-0.14.0.js"></script>

<script type="text/javascript" src="/dist/js/v2/min_user_info.js?v=99"></script>

 <script src="//t1.daumcdn.net/kakaopay/tesla/20180108/pg_web/js/lib/jquery.min.js"></script>
    
    

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
		<!-- 팝업 시작 -->
		<div class="kakao_popup">
			<div class="popup_payask_type">
				<div class="popup_head">
					<h1 class="screen_out">카카오페이 결제요청</h1>
				</div>
				<div class="popup_body">
					<strong class="screen_out">결제수단 선택 탭 목록</strong>

					<ul class="list_gnb">
						<!-- <li class="_tab_qr"><a href="#none" class="link_gnb">QR코드로 결제</a></li> -->
						<li class="_tab_talk on"><a href="#none" class="link_gnb">카톡 메시지로 결제</a></li>
					</ul>

					<!-- <div class="area_view _qr_area" style="display: none;">
						<h2 class="screen_out">QR코드로 결제</h2>
						<strong class="logo_pay"><img src="//t1.daumcdn.net/kakaopay/tesla/20181010/pg_web/images/logo_pay.png" class="img_g" alt="카카오페이"></strong>
						<p class="desc_payask">QR코드를 스캔하면<br>결제 페이지로 이동합니다.</p>
						<div class="area_qr">
							<div id="img_qr" style="text-align: center" class="img_g" alt="QR코드"><img src="data:image/png;base64,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"></div>
						</div>
					</div> -->
					<div class="area_view _talk_area hide" style="display: block;">
						<h2 class="screen_out">카톡 메시지로 결제</h2>
						<strong class="logo_pay"><img src="//t1.daumcdn.net/kakaopay/tesla/20181010/pg_web/images/logo_pay.png" class="img_g" alt="카카오페이"></strong>
						<p class="desc_payask">결제요청 메시지 전송을 위해<br>아래 정보를 입력해주세요.</p>
						<form id="userPost" method="post" action="/v1/ac881c4677120d2e98a815f3968360a0d2d332104a0ec57b9d5dd6259f6c6ad1/uinfo">
							<fieldset class="fld_payask">
								<legend class="screen_out">결제정보입력</legend>
								<ul class="list_payask">
									<li>
                                    <span class="txt_payask">
                                        <label for="userPhone" class="lab_payask">휴대폰 번호</label>
										 		<em id = "em" style = "font-size: 9pt; color: red;">특수문자 없이 숫자만 입력해주세요.</em>
                                    </span>
										<input type="text" id="userPhone" class="inp_payask" 
										placeholder="예) 01012345678" value="" autocomplete="off"
										maxlength="11" onkeyup="checkval();">
									
										<script type="text/javascript">
											function checkval(){
												
												if($("#userPhone").val().length == 11){
													$("#em").hide();
													$("#em2").text("특수문자 없이 숫자만 입력해주세요.");
													$("#userBirth").focus();
												}else if($("#userPhone").val().length == 0){
													$("#em").show();
												}
											}
											function checkval2(){
												
												if($("#userBirth").val().length == 6){
													$("#em2").hide();
													
												}else if($("#userBirth").val().length == 0){
													$("#em2").show();
												}else if($("#userBirth").val().length == 6 && $("#userPhone").val().length == 11){
													$("#request").css("background-color", "#f1f1f1");
												}
											}
										
										</script>
									
									</li>
									<li>
                                    <span class="txt_payask">
                                        <label for="userBirth" class="lab_payask">생년월일</label>
										 		<em id = "em2" style = "font-size: 9pt; color: red;"></em>
                                                                            </span>
										<input type="text" id="userBirth" class="inp_payask"  
										placeholder="예) 840301" value="" autocomplete="off"
										maxlength="6" onkeyup="checkval2();">
									</li>
								</ul>

								<button type="button" id = "request" class="btn_payask" style = "background-color:#ffe900; color: black;" >결제요청</button>
								<script type="text/javascript">
								
								$("#request").click(function(){
									
									/* var popup1 = (document.body.offsetWidth / 2) - (434.4 / 2);
									//&nbsp;만들 팝업창 좌우 크기의 1/2 만큼 보정값으로 빼주었음

									var popup2= (document.body.offsetHeight / 2) - (569.6 / 2);
									//&nbsp;만들 팝업창 상하 크기의 1/2 만큼 보정값으로 빼주었음

									window.open("kakaopay2.jsp",  
											"popupNo2", "status=no, height=569.6, width=434.4" + ", left=" + popup1 + ",  top=" + popup2); */
									location.href = "kakaopay2.jsp";
									
									
								});
								</script>
							</fieldset>
						</form>
					</div>
					<a href="#none" class="btn_close">
					<img src="//t1.daumcdn.net/kakaopay/tesla/20181010/pg_web/images/ico_close.png" 
					class="img_g" alt="닫기" onclick = "javascript:self.close();"></a>
				</div>
			</div>
		</div>
		<!-- 팝업 끝 -->

		<form id="actionPost" action="approval" method="post">
		</form>
	</div>









</body>
</html>