<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="mytmall_contArea">


	<!-- 주문/배송상세 -->
	<div class="mytmall_ttl2">
		<div class="line">
			<h2 class="t_orderdetail"><span>주문/배송상세</span></h2>
			<p class="ttl_cont">(주문번호 201912187948314)</p>
		</div>
	</div>
	<!-- //주문/배송조회 -->


	<!-- 결제정보 -->
	<div class="mytmall_title">
		<h3 class="t_settleinfo"><span>결제정보</span></h3>
		<div class="direct_info">
		
			
			<!-- 비접속 주문인경우-->
				<p><a class="btn_noaccess" onmouseout="document.getElementById('d_order2').style.display='none'; return false;" onmouseover="document.getElementById('d_order2').style.display='block'; return false;"><span>바로가기 비접속주문</span></a>
				</p><div id="d_order2" class="layer_accessorder" style="display: none; left: 30px;">
					<p><span>11번가 바로가기로 접속하지 않고</span> 주문하여 추가적립 혜택을 받으실 수 없습니다.</p>
				</div>
			<!-- //비접속 주문인경우 -->
			
		
		</div>

		<ul class="bt_wrap">
		
		
						<li><a href="javascript:goCancelApplyAll();" class="mytmall_bt01"><span id="allCancelPossibleImg" style="display: none;">주문전체 취소 </span></a></li>
					
		
		
		
			<li><a href="javascript:goOrderReceipt('201912187948314');" class="mytmall_bt01"><span>결제영수증 출력</span></a></li>
		 
		</ul>
	</div>

	<!-- 주문/결제 (환불/취소)정보 -->
    

<form name="mainform">
	<input type="hidden" name="orgAmount" value="">
	<input type="hidden" name="calAmount" value="">
	<input type="hidden" name="CcAmount" value="">
	<input type="hidden" name="ordNo" id="ordNo" value="">
	<input type="hidden" name="stlSeq" id="stlSeq" value="">
	<input type="hidden" name="buyMemNo" value="807fcfa0ace09ca1">
	<input type="hidden" name="ordNm" value="">
	<input type="hidden" name="ordEmail" value="">
	<input type="hidden" name="buyMemIp" value="">
	<input type="hidden" name="ordPrtblTel" value="">
	<input type="hidden" name="ProdDesc" value="">
	<input type="hidden" name="orgBankCd" value="">
	<input type="hidden" name="createDt" value="">
	<input type="hidden" name="updateDt" value="">

	<div class="mytmall_tbl2">
		<table width="100%" sumary="해당주문의 결제정보">
			<caption>결제정보</caption>
			<colgroup>
				<col width="136px">
				<col width="155px">
				<col>
			</colgroup>
			<tbody><tr>
				<th scope="row" class="bg_gray first"><p class="alignL1"><strong>주문금액</strong></p></th>
				<td class=""><p class="alignR">43,900원</p></td>
				<td><div class="alignL2"><span class="fl_left marR5">상품금액 43,900원
				
				
				
				
				</span>

				</div></td>
			</tr>

			<tr>
				<th scope="row" class="bg_gray first"><p class="alignL1"><strong>할인금액</strong></p></th>
				<td><p class="alignR">-2,000원</p></td>
				<td><div class="alignL2">즉시할인 2,000원

				</div></td>
			</tr>

			<tr>
				<th scope="row" rowspan="2" class="bLine bg_gray first"><p class="alignL1"><strong>총 결제금액</strong></p></th>

				<td rowspan="2" class="bLine"><p class="alignR"><strong class="red">41,900원</strong></p></td>


				<td><p class="alignL2">신용카드 41,900원 

				


				</p></td>
			</tr>

			<tr>
				<td class="bLine">
					<p class="alignL2">

				</p><div class="alignL2">비씨카드 (910020******4529) 일시불<br>2019-12-18 22:14:43
					

					<p></p>
				</div></td>
			</tr>

<!-- 적립혜택  -->
<!--2008-12-31 추가-->

			<tr class="last">
				<th scope="row" class="bg_gray first"><p class="alignL1">적립혜택</p></th>
				<td><p class="alignR">
						상품리뷰 작성시<br> 
				

				
				</p>
				</td>
				<td>

				</td>
			</tr>

		</tbody></table>
	</div>
    

<!-- 재결제대기에서호출시에는 아래의 코드들을 사용하지 않는다. -->
 </form> 




<!-- 실제 던져줄 값을 담는 form -->
<form name="realpayform" method="post" style="display:none"></form>


<form name="card_common_form">
	<input type="hidden" id="CcSupport" name="CcSupport" value="">		<!-- 카드승인 종류(ISP,MPI,ETC) -->
	<input type="hidden" id="card_mony" name="card_mony" value="">		<!-- 카드 결제 금액 -->
	<input type="hidden" id="CcInstallType" name="CcInstallType" value="00">		<!-- 할부 수수료를 seller가 부담하는 경우 사용 InstallType=‘00’ (미 부담), ‘01’ (부담) -->
	<input type="hidden" id="res_cd" name="res_cd" value="">		<!-- 인증후 결과코드 -->
	<input type="hidden" id="res_msg" name="res_msg" value="">		<!-- 인증후 결과메세지 -->
	<input type="hidden" id="inst_term" name="inst_term" value="">		<!-- 할부개월수 -->
	<input type="hidden" id="card_code" name="card_code" value="">		<!-- pas카드사코드  -->
	<input type="hidden" id="intfreeCostMnbdClfCd" name="intfreeCostMnbdClfCd">		<!-- 카드무이자할부부담주체  -->
	<input type="hidden" id="intfreeDirectVisitYn" name="intfreeDirectVisitYn" value="N"> <!-- 바로가기 무이자 적용가능여부 -->
</form>


<form name="isp_form">
	<input type="hidden" id="KVP_PGID" name="KVP_PGID" value="A0071">				<!--대표아이디 (변경하지 마세요)-->
	<input type="hidden" id="KVP_GOODNAME" name="KVP_GOODNAME" value="">				<!--상품명-->
	<input type="hidden" id="KVP_PRICE" name="KVP_PRICE" value="">					<!--거래금액-->
	<input type="hidden" id="KVP_CURRENCY" name="KVP_CURRENCY" value="WON">				<!--통화구분-->
	<input type="hidden" id="KVP_NOINT_INF" name="KVP_NOINT_INF" value="NONE">				<!--무이자할부 해당여부-->
	<input type="hidden" id="KVP_CARDCOMPANY" name="KVP_CARDCOMPANY">				<!--카드사구분-->
	<!--<input type='hidden' name=KVP_QUOTA_INF value="0:2:3:6:9:12">	<!--할부개월-->
	<input type="hidden" id="KVP_QUOTA_INF" name="KVP_QUOTA_INF" value="0">
	<input type="hidden" id="KVP_IMGURL" name="KVP_IMGURL" value="">
	<input type="hidden" id="KVP_NOINT" name="KVP_NOINT" value="">
	<input type="hidden" id="KVP_QUOTA" name="KVP_QUOTA" value="">
	<input type="hidden" id="KVP_CARDCODE" name="KVP_CARDCODE" value="">
	<input type="hidden" id="KVP_CONAME" name="KVP_CONAME" value="">
	<input type="hidden" id="KVP_SESSIONKEY" name="KVP_SESSIONKEY" value="">
	<input type="hidden" id="KVP_ENCDATA" name="KVP_ENCDATA" value="">
	<input type="hidden" id="KVP_RESERVED1" name="KVP_RESERVED1" value="">
	<input type="hidden" id="KVP_RESERVED2" name="KVP_RESERVED2" value="">
	<input type="hidden" id="KVP_RESERVED3" name="KVP_RESERVED3" value="">
	<input type="hidden" id="PIP" name="PIP" value="118.130.245.226">
	<input type="hidden" id="jtype2" name="jtype2" value="PI">

	<!-- Speed안전결제 -->
	<input type="hidden" id="cancelUrl" name="cancelUrl" value="">
	<input type="hidden" id="returnUrl" name="returnUrl" value="">
	<input type="hidden" id="SHOPID" name="SHOPID" value="">
	<input type="hidden" id="DOMAIN" name="DOMAIN" value="www.11st.co.kr">
	<input type="hidden" id="JOINNO" name="JOINNO" value="">
	<input type="hidden" id="KVP_EMB_KEY" name="KVP_EMB_KEY" value="">
	<input type="hidden" id="HS_API_URL" name="HS_API_URL" value="">
	<input type="hidden" id="KVP_CARD_PREFIX" name="KVP_CARD_PREFIX" value="">
	<input type="hidden" id="VP_BC_SAVEPOINT" name="VP_BC_SAVEPOINT" value="">
</form>


<form name="ansim_form">
	<input type="hidden" id="site_name" name="site_name" value="11번가">	<!--상호명(안심클릭창에 표기됨)-->
	<input type="hidden" id="mxInstallType" name="mxInstallType" value="NONE">
	
	<input type="hidden" id="tax_no" name="tax_no" value="8158101244">		<!--사업자번호-->
	
	<input type="hidden" id="join_no" name="join_no">
	<input type="hidden" id="expiry_yy" name="expiry_yy" value="79">
	<input type="hidden" id="expiry_mm" name="expiry_mm" value="12">
	<!-- KCP로 부터 부여받은 가맹점 정보 -->
	<input type="hidden" id="site_midx" name="site_midx" value="MS01">
	<input type="hidden" id="term_idxx" name="term_idxx" value="T00000">
	<input type="hidden" id="curr_code" name="curr_code" value="410">
	<!-- 간편결제  -->
	<input type="hidden" id="spay_use_yn" name="spay_use_yn" value="">
	<input type="hidden" id="spay_user_id" name="spay_user_id" value="">
	<input type="hidden" id="spay_join_cd" name="spay_join_cd" value="">

	<input type="hidden" id="ProductCD" name="ProductCD" value=""> <!-- 하나SK카드 상품코드 -->
	<input type="hidden" id="goodname" name="goodname" value=""> <!-- 하나SK카드 상품명 -->
	<input type="hidden" id="quota_flag" name="quota_flag" value=""> <!-- 하나SK카드 무이자여부 (Y-무이자, N-유이자) -->

	<!-- 안심클릭 인증시 리턴되는 Value 입니다. -->
	<input type="hidden" id="cavv" name="cavv" value=""> <!-- 안심클릭 인증값 -->
	<input type="hidden" id="xid" name="xid" value=""> <!-- 안심클릭 인증값 -->
	<input type="hidden" id="eci" name="eci" value=""> <!-- 안심클릭 인증값 -->
	<input type="hidden" id="card_no" name="card_no" value=""> <!-- 신용카드 번호 -->
	
	<!-- non ActiveX -->
	<input type="hidden" id="rtn_url" name="rtn_url" value=""> 
	<input type="hidden" id="enc_card_no" name="enc_card_no" value=""> 
</form>


<form name="realtimeform">
	<input type="hidden" id="hd_firm_name" name="hd_firm_name" value="11번가">
	<input type="hidden" id="hd_pre_msg_type" name="hd_pre_msg_type" value="EFT">				<!-- 결제 방법 : 고정 -->
	<input type="hidden" id="hd_msg_type" name="hd_msg_type" value="EFT">				<!-- 결제 방법 : 고정 -->
	<input type="hidden" id="hd_msg_code" name="hd_msg_code" value="0200">				<!-- 결제 종류 : 고정 -->
	<input type="hidden" id="hd_ep_type" name="hd_ep_type" value="CERT">				<!-- 고객 인증 여부 : 고정 -->
	<input type="hidden" id="hd_pi" name="hd_pi" value="MIIINgIBAD....">		<!-- 전자지갑에서 암호화된 고객 결제 정보 : 고정 -->
	<input type="hidden" id="hd_approve_no" name="hd_approve_no" value="14001185">			<!-- 결제업체 승인 번호 : 고정 -->
	<input type="hidden" id="hd_serial_no" name="hd_serial_no" value="0000000">			<!-- 거래구분번호 : 고정 -->
	<input type="hidden" id="tx_amount" name="tx_amount" value="5000">				<!-- 출금대상 금액 -->
	<input type="hidden" id="tx_recepit_bank" name="tx_recepit_bank" value="">					<!-- 입금 은행 -->
	<input type="hidden" id="tx_recepit_anct" name="tx_recepit_anct" value="">					<!-- 입금 계좌 -->
	<input type="hidden" id="tx_bill_yn" name="tx_bill_yn" value="N">					<!-- 현금영수증 발급대상 여부 :  -->
	<input type="hidden" id="tx_vat_yn" name="tx_vat_yn" value="">					<!-- 부가가치세 포함 여부 :  -->
	<input type="hidden" id="tx_svc_charge" name="tx_svc_charge" value="">					<!-- 봉사료 금액 -->
	<input type="hidden" id="tx_mail_info" name="tx_mail_info" value="SKTMALL^1428105647">	<!-- 쇼핑몰의 정보(현금영수증 관련)형식: 대표자명^업체주소 -->
	<input type="hidden" id="tx_user_key" name="tx_user_key" value="">
	<input type="hidden" id="tx_user_define" name="tx_user_define" value="SKTMALL^1428105647^(주)SKTMALL^02-896-2345">			<!-- 통장인자용업체명 -->
</form>


<form name="payform" method="post">
	<!-- 승인 공통 파라미터 -->
	<input type="hidden" id="MsgID" name="MsgID" value="R01">	<!-- R01 : 복합결제 / 단일결제 요청 , R02 : 추가 결제 요청  -->
	<input type="hidden" id="MxID" name="MxID" value="tmall">
	<input type="hidden" id="MxIssueNO" name="MxIssueNO" value="">
	<input type="hidden" id="MxIssueDate" name="MxIssueDate" value="">
	<input type="hidden" id="Amount" name="Amount" value="">
	<input type="hidden" id="Currency" name="Currency" value="KRW">
	<input type="hidden" id="CcMode" name="CcMode" value="11">	<!-- 거래 종류(00:test, 11:real) -->
	<input type="hidden" id="AppCode" name="AppCode" value="">	<!-- 결제 수단 -->
	<input type="hidden" id="AppCnt" name="AppCnt" value="">	<!-- 결제 수단 수 -->
	<input type="hidden" id="ProdDesc" name="ProdDesc" value="">	<!-- 상품정보 -->
</form>


<form name="ocbform">
	<input type="hidden" id="OcType" name="OcType" value="1">					<!-- OK Cash Back 적용 Type 1 : 승인 , 2 : 적립 -->
	<input type="hidden" id="OcAmount" name="OcAmount" value="">					<!-- OCB결제 금액 -->
	<input type="hidden" id="OcPayCode" name="OcPayCode" value="21">					<!-- 결제코드 설정 대금지불 : 21 -->
	<input type="hidden" id="OcNumber" name="OcNumber" value="">					<!-- OK CashBack 카드 번호 -->
	<input type="hidden" id="OcPasswd" name="OcPasswd" value="">					<!-- Ok CashBack 패스워드 -->
</form>


<form name="noaccountform">
	<input type="hidden" id="VpAmount" name="VpAmount" value="">		<!-- 가상계좌 결제 금액 -->
	<input type="hidden" id="VpMPhone" name="VpMPhone" value="">		<!-- 사용자 휴대폰 번호(‘-’ 생략) -->
	<input type="hidden" id="VpName" name="VpName" value="">		<!-- 은행 입금자 -->
	<input type="hidden" id="VpBank" name="VpBank" value="">		<!-- 가상계좌 발급은행 -->
	<input type="hidden" id="hd_ep_type" name="hd_ep_type" value="CERT">	<!-- 고객 인증 여부 -->
</form>

<form name="countryIssueform" method="post">
	<input type="hidden" name="amount" id="amount" value="">
	<input type="hidden" name="currency" id="currency" value="KRW">					<!-- MCP사용에 따라 WON -> KRW로 사용 -->
	<input type="hidden" name="shopName" id="shopName" value="11st">					<!-- max:20byte -->
	<input type="hidden" name="shopDomain" id="shopDomain" value="buy.11st.co.kr">
	<input type="hidden" name="returnUrl" id="returnUrl" value="https://buy.11st.co.kr/jsp/order/ordering/ksv3d_rtn.jsp">
	<input type="hidden" name="debugType" id="debugType" value="">
	<input type="hidden" name="skipCertError" id="skipCertError" value="">			<!-- default:blank, if (302,303) 302,303인증오류가 발생하여도 eci:06,01로 설정 -->
	<input type="hidden" name="virtualAddr" id="virtualAddr" value="">							<!-- default:blank, if (www로 시작 : www.yahoo.jp) 일본에서 접속한 사용자를 테스트  -->
	<input type="hidden" name="reEnckey" id="reEnckey" value="">
	<input type="hidden" name="reEncdata" id="reEncdata" value="">
</form>

<!-- KB app 카드 -->
<form id="form_acp_payment" name="form_acp_payment" method="post">
<input type="hidden" id="encData" name="encData" value="lQzTtMHGnZPvb81fxq/wDujbYokuaHGX+qHQ8SwJ1Fo3gVWUs4mUOokoJBZ3oO52QGcgpfw4PEkXsxAxKoVFaI6DkJhgmk7i/TTGYY5KyzAHqdMdS8UOXHRPE1M2vwR/K3lVCQXdMZvRucmXetvMZvS5Ss3caSwj83FMu6UVxNsBNfzrAq/xcEvz1LmLieBuO3zTVBYRFbWb/bD4l4cY95pVfpduYEF87HEA01xm3q5XIR6FYZODOlfxzfShv8WaCaBkD+rO1WOkMFZQjy2IwsxCx5BX2TdhfXURmBh9W22uVhcG078iQ+ta6Eq0G0x+u8ZsW0Okx9BOq3QLcxsGBmeYfBmaJ1nVtJKHkRH+T/0bqvbukfoUVrXTEjpHmzxKRqM7Tww3wvPmNNPI4lJexPpN5ZYD9nZmo6jzJAT8HyIYuczOD/qODkp714Mm2HAOplrPvuU7Td8P2d4sLOlkrQ==">
	<input type="hidden" id="amount" name="amount" value=""><!-- &nbsp;Ex) 1,004원: “1004”</td></tr><!-- 02.결제금액 -->
	<input type="hidden" id="save_pay_option" name="save_pay_option" value=""><!-- &nbsp;세이브결제 옵션 처리: 공란(“”) 처리</td></tr><!-- 13.세이브결제 옵션처리 -->
	<input type="hidden" id="easy_pay_option" name="easy_pay_option" value=""><!-- &nbsp;간편결제 옵션 처리: 공란(“”) 처리</td></tr><!-- 14.간편결제 옵션처리 -->
	<input type="hidden" id="noint_inf" name="noint_inf" value="NONE"><!-- &nbsp;무이자 할부 정보 - 무이자 없음: “NONE”, 전체 무이자: “ALL”, 할부 정의: “(카드코드)-(할부정보)” Ex) 국민카드 3,6,9개월 무이자 할부 가능: “0204-03:06:09”</td></tr><!-- 18.무이자 할부 정보 -->
	<input type="hidden" id="quota_inf" name="quota_inf" value="NONE"><!-- &nbsp;일반 할부 개월 정보 - 할부 없음: “NONE”, 일시불, 3,4,5,6,7개월: “00:03:04:05:06:07” Ex) 일시불, 2개월, 3개월 할부 가능: “00:02:03”</td></tr><!-- 19.일반할부개월수 정보 -->
	<input type="hidden" id="noint_flag1" name="noint_flag1" value="TRUE"><!-- &nbsp;무이자 또는 공백 표시 - 무이자: “NOINT”, 없음: “TRUE”</td></tr><!-- 20.무이자 또는 공백 표시 -->
	<input type="hidden" id="noint_flag2" name="noint_flag2" value="TRUE"><!-- &nbsp;유무이자 할부 Display 정보 - 미표기: “TRUE”, 표기: “FALSE”</td></tr><!-- 21.유무이자 할부 디스플레이 정보 -->
	<input type="hidden" id="kb_savepointree" name="kb_savepointree" value="FALSE"><!-- &nbsp;KB 세이브 포인트리 연동 - 호출: “TRUE”, 비호출: “FALSE”</td></tr><!-- 22.KB 세이브포인트리 연동 -->
	<input type="hidden" id="fixpayflag" name="fixpayflag" value="FALSE"><!-- &nbsp;복합결제 연동 Flag: 앱카드 앱에서 포인트리 사용 필드 표시 - 표시: “TRUE”, 미표시: “FALSE”</td></tr><!-- 23.복합결제 연동 플래그 -->
	<input type="hidden" id="serverMode" name="serverMode" value="TRUE"><!-- &nbsp;서버 모드 - 상용서버: “TRUE”, 개발서버: “FALSE”</td></tr><!-- 25.서버 모드 -->
	<input type="hidden" id="accpreq_url" name="accpreq_url" value="https://buy.11st.co.kr/jsp/order/ordering/accpreq.jsp"><!-- &nbsp;accpreq.jsp 경로: 상대경로 - “./accpreq.jsp” ※ 가맹점과 동일 서버에 위치</td></tr><!-- 26.accpreq.jsp 경로 -->
	<input type="hidden" id="is_only_appcard" name="is_only_appcard" value="TRUE"><!-- &nbsp;KB앱카드 직결제 여부 -결제방법 선택 없이 KB앱카드 결제: “TRUE” - 결제방법 선택 가능 (KB앱카드, ISP): “FALSE” ※ 기본값: “FALSE”-->
	<input type="hidden" id="tkey" name="tkey" value=""><!-- &nbsp;KB앱카드 직결제 여부 -결제방법 선택 없이 KB앱카드 결제: “TRUE” - 결제방법 선택 가능 (KB앱카드, ISP): “FALSE” ※ 기본값: “FALSE” -->
	<input type="hidden" id="noint" name="noint" value="">
	<input type="hidden" id="quota" name="quota" value="">
	<input type="hidden" id="cardCode" name="cardCode" value="">
	<input type="hidden" id="cardPrefix" name="cardPrefix" value="">
	<input type="hidden" id="coName" name="coName" value="">
	<input type="hidden" id="paySetFlag" name="paySetFlag" value="">
	<input type="hidden" id="usingPoint" name="usingPoint" value="">
	<input type="hidden" id="kbapp_CcIsEasy" name="kbapp_CcIsEasy" value="">
</form>


	<!-- //결제정보 -->
 
	<!-- 주문 상품 정보 -->
	<div class="mytmall_title">
			<h3 class="t_odrPrdInfo"><span>주문 상품 정보 </span></h3>
			
	</div>

	<form name="form201912187948314" id="form201912187948314" method="post">
	<div id="productLoop1123385997">



<div class="mytmall_tbl1">
	<table width="100%" sumary="해당주문의 주문상품정보">
		<caption>주문상품정보</caption>
		<colgroup>
			<col width="33px">
			<col width="">
			<col width="46px">
			<col width="168px">
			<col width="124px">
			<col width="144px">
		</colgroup>
		<thead>
		<tr>
			<th scope="col" class="first"><span class="cover_txt">번호</span></th>
			<th scope="col">상품/옵션정보</th>
			<th scope="col">수량</th>
			<th scope="col">상품금액</th>
			<th scope="col">배송비</th>
			<th scope="col">주문/배송상태</th>
		</tr>
		</thead>
		<tbody>
			

			 <tr class="first">
			<!-- 주문상세번호 -->
				 <td class="first">
				<p>1</p>
			</td>
			<!-- 상품명/옵션 -->
				 <td>
				<ul class="orderProdInfo">
					<li class="cont">
						<p class="p2">
							
								<a href="javascript:goProductDetailLayer('','201912187948314', '1', '104792525', 'layer_orderDetail_201912187948314_1');">
									[5%11톡] 종근당건강 락토핏 생유산균 골드 3통 150포
								</a>
							
						</p>
					    								
						
						<p class="op2">★선택옵션만 배송됩니다★:01) 락토핏 생유산균 골드 50포 3통 총150포</p>
						
						<div id="layer_orderDetail_201912187948314_1" class="layer_relative"></div>
                        						
						 
					</li>
				</ul>
				
								
				
			</td>
			<!-- 수량 -->
				 <td>
				<p>1</p>
				
			</td>
			<!-- 판매가 -->
				 <td>
					
				<p class="fnt_7"><strong>41,900원</strong></p>
					
					
<!-- 2012-10-30 yjlee 금액 순서 수정 -->


</td>
<!-- 배송비/판매자  -->

 <td rowspan="1">
	
	<p class="fnt_2">무료
		
	
	</p>
	

	
      	
	<!--  하나의 묶음번호에 판매자가 1명일때 -->
	
	<p class="fnt_3">
		

		
			<a href="javascript:goSellerInfo('d9f64b5430cb807d807fcfa0ace09ca1');"><u>ickdhc</u></a>
		
		
	</p>

	<!--  하나의 묶음번호에 판매자가 여러명일때 -->
	
	<input type="hidden" name="ordPrdSeq201912187948314">
	
	
</td>

<!-- 주문상태 -->
 <td>
	
	<p>
	구매확정
	
	
	</p>


	
	
	
			
	<p><a href="javascript:goReviewScript(document.form201912187948314,'201912187948314','104792525','1','1123385997');" class="mytmall_bt01"><span>리뷰작성</span></a></p>
	

	<!-- 발송지연 안내문구 추가 :S -->
	
	<!-- 발송지연 안내문구 추가 :E-->
	<input type="hidden" name="addPrdYn">
</td>
</tr>

</tbody>
</table>
</div>

<iframe name="hiddenFrame" height="0" width="0" src="/html/blank.html" title="숨김영역"></iframe>

</div>
	<input type="hidden" name="ordNo" value="201912187948314">
	<input type="hidden" name="ordPrdSeq">
	<input type="hidden" name="allYn">
	<input type="hidden" name="shProductStat">
	<input type="hidden" name="prdNo">
	<input type="hidden" name="gubun">
	<input type="hidden" name="menuType">
	<input type="hidden" name="ordQtySum">
	<input type="hidden" name="prdNm">
	<input type="hidden" name="dispOptNm">
	</form>
	<script type="text/javascript">
		setReadList('productLoop1123385997', '1123385997', '02', '');
		
		/** 지점 지도 팝업 */
		function callMap(prdNo, shopBranchNo){
			var width = 800,height = 790;
		    var sFeatures = "width=" + width + ",height="+ height + ",scrollbars=false,status=yes";
		    window.open("http://www.11st.co.kr/lifeplus/LifePlusMapPopAction.tmall?method=getShopListPop&prdNo="+prdNo+"&shopBranchNo="+ shopBranchNo+"&tabType=M&mapOnly=Y", "지도보기",  sFeatures);
		}
	</script>
	
		

        
		<div class="mytmall_title">
			<h3 class="t_deliverinfo"><span>배송지 정보</span></h3>
		</div>
		
        
        
				
				<div class="mytmall_tbl2">
			<table width="100%" sumary="해당주문의 배송지정보"> <!-- .bg_gray:배경회색, .first:첫칸은왼쪽라인 없앰, .bLine:bottom라인진한색 -->
				<caption>배송지 정보</caption>
				<colgroup>
					<col width="138px">
					<col>
				</colgroup>

				<form name="formDlvInfo1123385997" id="formDlvInfo1123385997" method="post"></form>
				<input type="hidden" name="ordNo" value="201912187948314">
				<input type="hidden" name="ordPrdSeq">
				
				<tbody><tr class="last">
					<th scope="row" class="bg_gray first"><p class="alignC">받는사람</p></th>
					
					<td>

						<p class="alignL1">
						<span class="del_tit">
<!-- 이름 -->				<strong>권*숙</strong>
<!-- 배송지변경Btn -->		<span id="changeAddress1123385997Img" style="display: none;">
							
								<a href="javascript:goChangeDeliveryAddress('201912187948314', '1123385997', '1','901','02', '104792525');" class="mytmall_bt01">
									<span>배송지 변경</span>
								</a>
							
							</span>
							<span id="changeText1123385997View" class="brown" style="display: none;">배송준비중 상태에서 배송지 변경이 필요한 경우, 판매자에게 연락하시기 바랍니다.</span>
						</span>
<!-- 주소 -->				(11815) 경기도 의정부시 *** *** **************** ******************** <br>
<!-- 연락처1/연락처2 -->		070-****-3663 / 010-****-4100</p><br>

<!-- 배송시요청사항 -->
							
							<p class="alignL1">상품명: [5%11톡] 종근당건강 락토핏 생유산균 골드 3통 150포</p>
							<p class="alignL1">

							
								<label for="dlvReqCont1"><input type="text" id="dlvReqCont1" name="dlvReqCont1" style="width:450px; height:21px;" class="base_line" readonly="" value=""></label>
							
						
						

				</p></td>
				


					  </tr>
					  

		</tbody></table>
		
	</div>
	

	<div id="order_box" style="display: block;">

		<!-- 배송 순서 -->
		<div class="t_deliveryorder">
			<h4>배송진행순서</h4>
			<ol>
                <ol class="t_deliveryorder_bg">
                    <li>1.입금대기중 - 결제를 완료해 주세요</li>
                    <li>2.결제완료 - 판매자가 주문정보를 확인하기 전입니다.</li>
                    <li>3.배송준비중 - 판매자가 주문을 확인하고 배송을 준비중입니다.</li>
                    <li>4.배송중 - 물품이 발송되어 고객님께 배송중입니다.</li>
                    <li>5.배송완료 - 상품수량후 구매확정을 선택하시면 거래가 종료됩니다.</li>
                </ol>
			</ol>
		</div>
		<!-- //배송 순서 -->

	</div>




</body>
</html>