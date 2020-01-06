<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mypage_OrderList</title>


<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/RECOREMain/RECOREMypage/cssMy/Mypage_OrderList_CSS.css"/>
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
  
  #header{
  	position: relative;
  }
  
  </style>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/RECOREMain/RECOREMypage/cssMy/test.css"/>


</head>

<body id="main">

	<!-- header -->
	<%@ include file="/header.jsp" %>
<body bgcolor="#FFFFFF" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0"><script language="javascript">
<!--//
function openPrintUSafe()
{
    var strOption = 'toolbar=no,width=700,height=600,status=no,menubar=no,resizable=no,scrollbars=yes';
    var objWin = window.open('https://gateway.usafe.co.kr/esafe/InsuranceView.asp?mall_id=1300kcom&order_id=201912315177163', 'winUSafeDetail', strOption);
}

function openPrintReceipt(nType, strPGNo)
{
    if (nType == 1) { // 카드매출전표
        if (strPGNo == "INI") {
            var strUrl = "https://iniweb.inicis.com/DefaultWebApp/mall/cr/cm/mCmReceipt_head.jsp?noTid=&noMethod=1";
            window.open(strUrl,"receipt","width=430,height=700");
        
        } else {
            var strUrl = "http://admin.kcp.co.kr/Modules/Sale/Card/ADSA_CARD_BILL_Receipt.jsp?c_trade_no=";
        
            var strOption = "toolbar=no,width=370,height=700,status=no,resizable=yes,scrollbars=no";
            var objWin = window.open(strUrl, "winPrintReceipt",  strOption);
            
        }
        
    } else if (nType == 2) { // 간이영수증
        var strUrl = "/customer/order/receiptPrt.html?f_orderno=201912315177163";
    
        var strOption = "toolbar=no,width=300,height=700,status=no,resizable=yes,scrollbars=no";
        var objWin = window.open(strUrl, "winPrintReceipt",  strOption);
        
    } else if (nType == 3) { // 거래명세서
        var strUrl = "/customer/order/statementPrt.html?f_orderno=201912315177163&f_name=박수지";
    
        var strOption = "toolbar=no,width=780,height=500,status=no,resizable=yes,scrollbars=yes";
        var objWin = window.open(strUrl, "winPrintStatement",  strOption);
    
    } 
    
}

function traceDelivery(strExtQCode, strDeliveryNo)
{

    if (strExtQCode == "") {
        alert("상세조회를 지원하지 않는 택배사 입니다.");
        return;
    }

    if (strDeliveryNo == "") {
        alert("운송장 번호가 없습니다.");
        return;
    }

    document.frmTrack.delv_cd.value = strExtQCode;
    document.frmTrack.invoice.value = strDeliveryNo;

    var strUrl    = "";
    var strOption = "toolbar=no,width=604,height=590,status=no,resizable=no,scrollbars=yes";
    var objWin = window.open(strUrl, "winTrackDelivery",  strOption);

    document.frmTrack.target = "winTrackDelivery";
    document.frmTrack.action = "http://invoice.logii.com/Alliance/1300K/invoice_search.asp";
    document.frmTrack.submit();

    objWin.focus();
}

function traceDeliveryForign(deliveryTarget, deliveryNo)
{
    if (deliveryNo == "") {
        alert("운송장 번호가 없습니다.");
        return;
    }
    
    if (deliveryTarget == 1) {
        var url = "http://intras.co.jp/delivery/tracking/number/" + deliveryNo;
    } else {
        var url = "http://service.cwaycorp.com/tracking?hbl=" + deliveryNo;
    }
    
    var option = "toolbar=no,width=1200,height=590,status=no,resizable=no,scrollbars=yes";
    var objWin = window.open(url, "popTraceDelivery",  option);
}
//-->
</script>
<style>
.gc_bg_headshop { background-image:url(https://img.1300k.com/common/bg_headshop.gif); }
</style>
<form name="frmTrack" method="post">
    <input type="hidden" name="delv_cd" value="">
    <input type="hidden" name="invoice" value="">
</form>


        <table width="730" border="0" cellspacing="0" cellpadding="0">
        <tbody><tr>
            <td>&nbsp;</td>
        </tr>
        </tbody></table>


        <table width="730" border="0" cellspacing="0" cellpadding="0">
        <tbody><tr>
            <td height="15" class="gc_line1"><img src="https://img.1300k.com/customer/tit_order.gif" border="0"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
            <!-- 로그인 시작 -->

                <table width="730" border="0" cellspacing="0" cellpadding="0">
                <tbody><tr>
                    <td height="40" valign="bottom">

                        <table width="730" height="26" border="0" cellpadding="0" cellspacing="0">
                        <tbody><tr>
                            <td><img src="https://img.1300k.com/customer/tit_orderview.gif" border="0"></td>
                        </tr>
                        <tr>
                            <td>
                            <!--주문배송 현황 시작 -->

                                <table width="100%" height="40" border="1" cellpadding="5" cellspacing="0" bordercolordark="#FFFFFF">
                                                                <tbody><tr align="center">
                                    <td width="20%" height="30" valign="middle" bgcolor="#E2F0F4" class="gc_txt11b_gray"><img src="https://img.1300k.com/mybook/ico_delivery1.gif" width="11" height="11" border="0" align="absmiddle"> 입금확인중</td>
                                    <td valign="middle" width="20%">배송준비중</td>
                                    <td valign="middle" width="20%">배송중</td>
                                    <td valign="middle" width="20%">배송완료</td>
                                    <td valign="middle" width="20%">고객수령</td>
                                </tr>
                                                                </tbody></table>

                            <!--주문배송 현황 끝 -->
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        </tbody></table>

                    </td>
                </tr>
                <tr>
                    <td height="1" class="gc_bg_dedede"></td>
                </tr>
                <tr>
                    <td height="30" class="gc_bg_f2f2f2">

                        <table width="730" border="0" cellspacing="0" cellpadding="0">
                        <tbody><tr align="center">
                            <td class="gc_txt12b_gray"><b>상품리스트</b></td>
                            <td width="100" class="gc_txt12b_gray"><b>배송</b></td>
                            <td width="120" class="gc_txt12b_gray"><b>가격</b></td>
                            <td width="100" class="gc_txt12b_gray"><b>수량</b></td>
                            <td width="100" class="gc_txt12b_gray"><b>진행상태</b></td>
                        </tr>
                        </tbody></table>

                    </td>
                </tr>
                <tr>
                    <td height="1" class="gc_bg_dedede"></td>
                </tr>
                <tr>
                    <td>

                        <table width="730" border="0" cellpadding="4" cellspacing="1">
                                                <tbody><tr>
                            <td width="310" height="30" style="padding:5px 3px 0 10px"><a href="/shop/goodsDetail.html?f_goodsno=215024300883" target="_blank"></a>다정한마테 홀로그램 15mm<br><table width="100%" cellspacing="0" cellpadding="0" style="background-color:#E2F0F4; border:1px solid #f2f2f2"><tbody><tr><td style="padding:2px 3px;;">{선택}민트홀로그램</td></tr></tbody></table></td>
                            <td width="100" height="30" align="center">1300K 배송</td>
                            <td width="120" height="30" align="right">3,900원</td>
                            <td width="100" height="30" align="center">1</td>
                            <td width="100" height="30" align="center"></td>
                        </tr>
                        <tr>
                            <td colspan="6" height="1" class="gc_bg_dedede"></td>
                        </tr>
                                                </tbody></table>

                    </td>
                </tr>
                <tr>
                    <td align="center">&nbsp;</td>
                </tr>
                </tbody></table>



                <table width="730" border="0" cellspacing="0" cellpadding="0">
                <tbody><tr>
                    <td height="1" class="gc_bg_dedede"></td>
                </tr>
                <tr>
                    <td>

                        <table width="730" border="0" cellpadding="0" cellspacing="0">
                        <tbody><tr>
                            <td width="100" height="30" style="padding:0 0 0 10px"><a href="#" class="gc_txt12b_gray"><b>주문일자</b></a></td>
                            <td width="20" height="30" align="center">:</td>
                            <td height="30">2019-12-31</td>
                        </tr>
                        <tr>
                            <td colspan="3" height="1" class="gc_bg_dedede"></td>
                        </tr>
                        <tr>
                            <td height="30" style="padding:0 0 0 10px"><a href="#" class="gc_txt12b_gray"><b>주문번호 </b></a></td>
                            <td height="30" align="center">:</td>
                            <td height="30" class="gc_txt11_orange">201912315177163</td>
                        </tr>
                        <tr>
                            <td colspan="3" height="1" class="gc_bg_dedede"></td>
                        </tr>
                        <tr>
                            <td height="30" style="padding:0 0 0 10px"><a href="#" class="gc_txt12b_gray"><b>주문하시는 분 </b></a></td>
                            <td height="30" align="center">:</td>
                            <td height="30">박수지 / 010-7428-7272</td>
                        </tr>
                        <tr>
                            <td colspan="3" height="1" class="gc_bg_dedede"></td>
                        </tr>
                        <tr>
                            <td height="30" style="padding:0 0 0 10px"><a href="#" class="gc_txt12b_gray"><b>받으시는 분 </b></a></td>
                            <td height="30" align="center">:</td>
                            <td height="30">박수지 / 010-7428-7272 / (11815) 경기도 의정부시 용민로 441 1404 (민락동, 엘에이치브라운빌리지)</td>
                        </tr>
                        <tr>
                            <td colspan="3" height="1" class="gc_bg_dedede"></td>
                        </tr>
                        </tbody></table>

                    </td>
                </tr>
                <tr>
                    <td height="40" align="center">&nbsp;</td>
                </tr>
                </tbody></table>



                <table width="730" border="0" cellspacing="0" cellpadding="0">
                <tbody><tr>
                    <td height="40" valign="bottom">

                        <table width="730" height="26" border="0" cellpadding="0" cellspacing="0">
                        <tbody><tr>
                            <td class="gc_line1"><img src="https://img.1300k.com/customer/tit_orderview02.gif" border="0"></td>
                        </tr>
                        </tbody></table>

                    </td>
                </tr>

                <tr>
                    <td class="gc_bg_headshop">

                        <table width="730" height="26" border="0" cellpadding="0" cellspacing="0">
                        <tbody><tr>
                            <td width="150" height="30" class="txt12_gray" style="padding:0 0 0 10px"><b>배송방법 </b></td>
                            <td width="*" bgcolor="#ffffff" style="padding:0 0 0 10px">1300K 직접 배송</td>
                        </tr>
                        </tbody></table>

                    </td>
                </tr>
                <tr>
                    <td height="1" class="gc_bg_dedede">
                    </td>
                </tr>
                <tr>
                    <td height="30" class="bg_eef0et">

                        <table width="730" border="0" cellspacing="0" cellpadding="0">
                        <tbody><tr align="center">
                            <td height="30" class="txt12_gray"><b>상품명</b></td>
                            <td width="100" class="txt12_gray"><b>배송상태</b></td>
                            <td width="120" class="txt12_gray"><b>택배사명</b></td>
                            <td width="100" class="txt12_gray"><b>배송번호</b></td>
                            <td width="100" class="txt12_gray"><b>상세조회</b></td>
                        </tr>
                        </tbody></table>

                    </td>
                </tr>
                <tr>
                    <td height="1" class="gc_bg_dedede"></td>
                </tr>
                <tr>
                    <td>

                        <table width="730" border="0" cellpadding="0" cellspacing="0">

                        <tbody><tr>
                            <td width="310" height="30" style="padding:5px" 3px="" 0="" 10px="">다정한마테 홀로그램 15mm<br><table width="100%" cellspacing="0" cellpadding="0" style="background-color:#E2F0F4; border:1px solid #f2f2f2"><tbody><tr><td style="padding:2px 3px;;">{선택}민트홀로그램</td></tr></tbody></table></td>
                            <td width="100" height="30" align="center"></td>
                            <td width="120" height="30" align="center"><a href="http://www.ilogen.com/d2d/index.html" target="_blank"><font color="#02A9C8">로젠택배</font></a></td>
                            <td width="100" height="30" align="center"></td>
                            <td width="100" height="30" align="center"></td>
                        </tr>
                        <tr>
                            <td colspan="6" height="1" class="bg_dedede"></td>
                        </tr>
            
                        </tbody></table>

                    </td>
                </tr>
                        <tr>
                    <td height="30" class="gc_padding10">
                        1. '1300K 직접 배송'의 경우, '현대택배'를 클릭하시면 배송상태를 바로 확인하실 수 있습니다.<br>
                        2. '브랜드 개별 배송'의 경우,   각 택배사명을 클릭하시면 배송조회를 할 수 있는 택배사 홈페이지가 열립니다.<br>
                        &nbsp;&nbsp;등록된 배송번호를 홈페이지 송장조회 창에 넣어   조회하시면 배송상태를 확인하실 수 있습니다.<br>
                        3. 물품이 택배사에 집하되기 전에는 송장조회가 안될 수도 있습니다.
                    </td>
                </tr>
                <tr>
                    <td height="1" class="gc_bg_dedede"></td>
                </tr>
                <tr>
                    <td height="30">

                        <table width="730" height="26" border="0" cellpadding="0" cellspacing="0">
                        <tbody><tr>
                            <td width="150" height="30" class="txt12_gray" style="padding:0 0 0 10px"><b>배송시 유의사항 </b></td>
                            <td style="padding:0 0 0 10px"></td>
                        </tr>
                        </tbody></table>

                    </td>
                </tr>
                <tr>
                    <td height="1" class="gc_bg_dedede"></td>
                </tr>
                </tbody></table>


            <!-- 로그인 끝 -->

                <table width="730" border="0" cellspacing="0" cellpadding="0">
                <tbody><tr>
                    <td height="8"><!--등급 현황 시작 -->

                        <table width="730" border="0" cellspacing="0" cellpadding="0">
                        <tbody><tr>
                            <td height="30" valign="bottom">&nbsp;</td>
                        </tr>
                        <tr>
                            <td height="1" class="gc_bg_dedede"></td>
                        </tr>
                        <tr>
                            <td height="30" class="bg_f2f2f2">

                                <table width="730" border="0" cellpadding="0" cellspacing="0">
                                <tbody><tr>
                                    <td width="150" height="25" style="padding:0 0 0 10px;"><b>결제방법</b></td>
                                    <td bgcolor="#ffffff" class="gc_padding10">무통장입금 /   (은행:국민은행 / 예금주:엔에이치엔위투 주식회사 / 계좌:96279078306774)</td>
                                </tr>
                                <tr>
                                    <td height="1" colspan="2" class="gc_bg_dedede"></td>
                                </tr>                               
                                
                                <tr>
                                    <td height="25" style="padding:0 0 0 10px;"><b>지불금액</b></td>
                                    <td bgcolor="#ffffff" class="gc_padding10">6,400원</td>
                                </tr>
                                <tr>
                                    <td height="1" colspan="2" class="gc_bg_dedede"></td>
                                </tr>
                                <tr>
                                    <td height="25" style="padding:0 0 0 10px;"><b>증빙서류출력</b></td>
                                    <td bgcolor="#ffffff" class="gc_padding10">    &nbsp;</td>
                                </tr>
                                <tr>
                                    <td height="1" colspan="2" class="gc_bg_dedede"></td>
                                </tr>
                                <tr>
                                    <td height="25" style="padding:0 0 0 10px;"><b>주문처리상태</b></td>
                                    <td bgcolor="#ffffff" class="gc_padding10">
                                                                        </td>
                                </tr>
                                                                <tr>
                                    <td height="1" colspan="2" class="gc_bg_dedede"></td>
                                </tr>
                                </tbody></table>

                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        </tbody></table>


                    <!--등급현황 끝 -->
                    </td>
                </tr>
                <tr>
                    <td height="70" align="center" class="gc_box5">

                        <table width="710" border="0" cellspacing="0" cellpadding="0">
                        <tbody><tr align="left">
                            <td width="150" height="30" class="gc_bg_ffffff" style="padding:0 0 0 10px">상품금액</td>
                            <td width="290" height="30" style="padding:0 0 0 10px"><b>3,900 원 </b></td>
                            <td width="150" height="30" class="gc_bg_ffffff" style="padding:0 0 0 10px">마일리지</td>
                            <td width="290" height="30" style="padding:0 0 0 10px"><b>0 원 </b></td>
                        </tr>
                        <tr>
                            <td height="1" colspan="4" class="gc_bg_dedede"></td>
                        </tr>
                        <tr align="left">
                            <td width="150" height="30" class="gc_bg_ffffff" style="padding:0 0 0 10px">배송비</td>
                            <td width="290" height="30" style="padding:0 0 0 10px"><b>2,500 원</b></td>
                            <td width="150" height="30" class="gc_bg_ffffff" style="padding:0 0 0 10px">쿠폰사용 </td>
                            <td width="290" height="30" style="padding:0 0 0 10px"><b></b></td>
                        </tr>
                        <tr>
                            <td height="1" colspan="4" class="gc_bg_dedede"></td>
                        </tr>
                        <tr align="left">
                            <td width="150" height="30" class="gc_bg_ffffff" style="padding:0 0 0 10px">포장료</td>
                            <td width="290" height="30" style="padding:0 0 0 10px"><b>0 원 </b></td>
                            <td width="150" height="30" class="gc_bg_ffffff" style="padding:0 0 0 10px">&nbsp;</td>
                            <td width="290" height="30" style="padding:0 0 0 10px">&nbsp;</td>
                        </tr>
                        <tr>
                            <td height="1" colspan="4" class="gc_bg_dedede"></td>
                        </tr>
                        <tr align="left">
                            <td width="150" height="30" class="gc_bg_ffffff" style="padding:0 0 0 10px">총 결제금액 </td>
                            <td height="30" colspan="3" style="padding:0 0 0 10px"><span class="gc_txt12saleb">6,400 원</span>&nbsp;&nbsp;</td>
                        </tr>
                        </tbody></table>

                    </td>
                </tr>
                <tr>
                    <td align="center">&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                </tbody></table>

            </td>
        </tr>
        </tbody></table>

    




<script type="text/javascript">
var objDimCommonLogin = null;
$(function() {
    objDimCommonLogin = $("#idDimCommonLogin").jQKDimmed({nOpacity:60});
});
</script>

<div id="idDimCommonLogin" class="dim_login_layer" style="display: none; z-index: 10001; top: 61.5px; left: 121.5px; position: fixed;">
    <input type="hidden" name="loginArg">
    <div class="inner">
        <p class="title">
            <span class="logo"><img src="https://img.1300k.com/login/2017/img_logo_payco.png" width="132" height="30" alt="PAYCO"></span>
            1300K 서비스는 PAYCO 아이디로 이용할 수 있습니다.
        </p>
        <a href="#" onclick="ckLoginPayco(); return false;" class="btn_payco_login"><span>PAYCO로 로그인</span></a>
        <p class="line_bar"></p>
        <a href="#" onclick="ckLoginMall(); return false;" class="btn_1300k_login"><span>1300K 아이디로 로그인</span></a>
        <div class="guest_blk">
            <p>
                <strong>아직 1300K 회원이 아니신가요?</strong>
                간편한 <span>PAYCO</span> 아이디로 편리하게 시작하세요.
            </p>
            <a href="#" onclick="ckJoinMember(); return false;" class="btn_join"><span>회원가입</span></a>
            <div class="btn_blk">
                <!--a href="#">비회원 주문하기</a>
                <span class="bar"></span-->
                <a href="#" onclick="ckNonMemOrderSearch(); return false;">비회원 주문조회</a>
            </div>
        </div>
    </div>
    <a href="http://www.1300k.com/events/mobile/index.html" class="img_banner" target="_blank">
        <img src="https://img.1300k.com/screen/0003/52/scr_52_205324.jpg" width="448" height="65" alt="">
    </a>
    <a href="#" onclick="ckLoginClose(); return false;" class="btn_close">
        <img src="https://img.1300k.com/login/2017/btn_layer_close.png" width="15" height="15" alt="닫기">
    </a>
</div>


<!-- AceCounter Log Gathering Script V.7.5.2013010701 -->
<script language="javascript">
	var _AceGID=(function(){var Inf=['gtp2.acecounter.com','8080','AH5A40339765261','AW','0','NaPm,Ncisy','ALL','0']; var _CI=(!_AceGID)?[]:_AceGID.val;var _N=0;var _T=new Image(0,0);if(_CI.join('.').indexOf(Inf[3])<0){ _T.src =( location.protocol=="https:"?"https://"+Inf[0]:"http://"+Inf[0]+":"+Inf[1]) +'/?cookie'; _CI.push(Inf);  _N=_CI.length; } return {o: _N,val:_CI}; })();
	var _AceCounter=(function(){var G=_AceGID;if(G.o!=0){var _A=G.val[G.o-1];var _G=( _A[0]).substr(0,_A[0].indexOf('.'));var _C=(_A[7]!='0')?(_A[2]):_A[3];	var _U=( _A[5]).replace(/\,/g,'_');var _S=((['<scr','ipt','type="text/javascr','ipt"></scr','ipt>']).join('')).replace('tt','t src="'+location.protocol+ '//cr.acecounter.com/Web/AceCounter_'+_C+'.js?gc='+_A[2]+'&py='+_A[4]+'&gd='+_G+'&gp='+_A[1]+'&up='+_U+'&rd='+(new Date().getTime())+'" t');document.writeln(_S); return _S;} })();
</script><script src="https://cr.acecounter.com/Web/AceCounter_AW.js?gc=AH5A40339765261&amp;py=0&amp;gd=gtp2&amp;gp=8080&amp;up=NaPm_Ncisy&amp;rd=1577766415845" type="text/javascript"></script>

<noscript><img src='http://gtp2.acecounter.com:8080/?uid=AH5A40339765261&je=n&' border='0' width='0' height='0' alt=''></noscript>	
<!-- AceCounter Log Gathering Script End -->

<script type="text/javascript">
  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-2106282-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();
</script>



<div id="idMaskWindow_0" style="z-index: 10000; display: none; left: 0px; top: 0px; opacity: 0.6; background-color: rgb(0, 0, 0); position: fixed; width: 751px; height: 982px;"></div></body>

	        <hr class="layout">
	        
	        <!-- footer -->
   		<%@ include file="/footer.jsp" %>
	
  
</body>
</html>