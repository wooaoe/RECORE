<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- 해당 CSS는 쇼핑몰 전체 페이지에 영향을 줍니다. 삭제와 수정에 주의해주세요. -->
<!-- 스마트디자인에서는 JQuery 1.4.4 버전이 내장되어있습니다. 추가로 호출하면 충돌이 생길 수 있습니다. -->
	<meta name="naver-site-verification"
		content="13985afbd03ec07db37232da4145dc4f9dea33f2">
	<meta name="google-site-verification"
		content="AXnPgEHWAtV-2VkqdDqFSPnbcmr8BXTyd2fPn5ulC-M">
	<link rel="canonical" href="https://dalisalda.com/myshop/addr/list.html">
	<link rel="alternate"
		href="https://m.dalisalda.com/myshop/addr/list.html">
	<meta property="og:url"
		content="https://dalisalda.com/myshop/addr/list.html">
	<meta property="og:site_name" content="달리살다">
	<meta property="og:type" content="website">
	<script type="text/javascript"
		src="/app/Eclog/js/cid.generate.js?vs=3d0b473968a0ec4ec41e3bf59df3aa51"></script>
	<link rel="manifest"
		href="/web/upload/pwa/manifest.86986e3f9b172fb6a9d5794fa4b1ba3f.json">



	<link rel="stylesheet" type="text/css"
		href="/ind-script/optimizer.php?filename=tZQxTgQxDEX7GVrOYUHBKbhE4pgZiySOYhuxtyfaArFLg4ZJGev_Z-UnNuxSCJ6eO7QuWw8FOql4RwJUhbcu1QClFKkPo_AIf9ETLirZjaUuUT4PGt3saNMcLtSPWS3ETD-shKsrdYVNK9kH6xBB85gZ191KBk20JlLeKug715crt0jyTFAuukuDkFJ_ZbW1SfsXetxL3CAGZbz2-fUyJzBHGuNAi_Mcrolk4zYHvlOeRB7_JznaJHjYuAajSYmHOAd8P2cnom_3xrlh5Ek5DxVOSuN7GX4B&amp;type=css&amp;k=4d686bbedf625f9f37a9d483caec2e723fa4a787&amp;t=1578278394">
	
	<title>RECORE</title>
	<meta name="path_role" content="MYSHOP_ADDR_LIST">
	
	<meta name="mobile-web-app-capable" content="yes">
	<meta name="theme-color" content="#ffffff">
	<meta name="x5-orientation" content="portrait">
	<meta name="screen-orientation" content="portrait">
	<meta name="x5-page-mode" content="app">
	<meta name="browsermode" content="application">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/RECOREMain/RECOREProduct/Delivery.css">
	
	<script type="text/javascript">
	$(window).load(function() {

		  var strWidth;

		  var strHeight;

		  //innerWidth / innerHeight / outerWidth / outerHeight 지원 브라우저 

		  if ( window.innerWidth && window.innerHeight && window.outerWidth && window.outerHeight ) {

		    strWidth = $('#content').outerWidth() + (window.outerWidth - window.innerWidth);

		    strHeight = $('#content').outerHeight() + (window.outerHeight - window.innerHeight);

		  }

		  else {

		    var strDocumentWidth = $(document).outerWidth();

		    var strDocumentHeight = $(document).outerHeight();

		    window.resizeTo ( strDocumentWidth, strDocumentHeight );

		    var strMenuWidth = strDocumentWidth - $(window).width();

		    var strMenuHeight = strDocumentHeight - $(window).height();

		    strWidth = $('#content').outerWidth() + strMenuWidth;

		    strHeight = $('#content').outerHeight() + strMenuHeight;

		  }

		  //resize 

		  window.resizeTo( strWidth, strHeight );

		}); 
	
	
	</script>
	
</head>

<body>

<body id="popup">
	
	<form id="frmAddr" name=""
		action="/exec/front/Myshop/Addr/?mode=Delete&amp;return_url=%2Fmyshop%2Faddr_popup%2Flist.html"
		method="post" target="_self" enctype="multipart/form-data">
		<input id="__address_addr1" name="__address_addr1" value=""
					type="hidden">
		<input id="__city_name" name="__city_name" value="" type="hidden">
		<input id="__state_name" name="__state_name" value="" type="hidden">
		<input id="__use_foreign_country_list" name="__use_foreign_country_list"
					value="F" type="hidden">
		<input id="__ma_rcv_contry_code" name="__ma_rcv_contry_code" value=""
					type="hidden">
		<input id="__country" name="__country" value="" type="hidden">
		<input id="__province" name="__province" value="" type="hidden">
		<input id="__city" name="__city" value="" type="hidden">
		<input id="__district" name="__district" value="" type="hidden">
		<input id="is_display_phone" name="is_display_phone" value=""
					type="hidden">
		<input id="is_display_mobile" name="is_display_mobile" value=""
					type="hidden">
		<input id="sUseCountryNumberFlag" name="sUseCountryNumberFlag" value="T"
					type="hidden">
		<div
			class="xans-element- xans-myshop xans-myshop-addrlist ec-base-layer" id = "content">
			<!--
        $return_url = /myshop/addr_popup/list.html
    -->
		<div class="header">
		        <h1>배송 주소록 관리</h1>
		    </div>
		<div class="content">
		        <div class="ec-base-help">
		            <h2>배송주소록 유의사항</h2>
		            <div class="inner">
		                <ul>
		<li>배송 주소록은 최대 10개까지 등록할 수 있으며, 별도로 등록하지 않을 경우 최근 배송 주소록 기준으로 자동 업데이트 됩니다.</li>
		                    <li>자동 업데이트를 원하지 않을 경우 주소록 고정 선택을 선택하시면 선택된 주소록은 업데이트 대상에서 제외됩니다.</li>
		                    <li>기본 배송지는 1개만 저장됩니다. 다른 배송지를 기본 배송지로 설정하시면 기본 배송지가 변경됩니다.</li>
		                </ul>
		</div>
		        </div>

		        <div class="ec-base-table typeList">
		            <table border="1" summary="">
		
		                <colgroup>
		<col style="width:27px">
		<col style="width:80px">
		<col style="width:100px">
		<col style="width:90px">
		<col style="width:100px">
		<col style="width:100px">
		<col style="width:auto">
		<col style="width:87px">
		</colgroup>
		<tbody class="head">
		<tr>
		<td scope="col"><span class="">
		<input id="allCheck" onclick="myshopAddr.checkAll(this)" value="" type="checkbox"></span></td>
        <!-- <td scope="col">주소록 고정
        </td> -->
		<td scope="col">배송지명</td>
                        <td scope="col">수령인</td>
                        <td scope="col">일반전화</td>
                        <td scope="col">휴대전화</td>
                        <td scope="col">주소</td>
                        <td scope="col">배송지관리</td>
        </tr>
		</tbody>
		</table>
		<div class="scroll">
		                <table border="1" summary="">
		
		                    <colgroup>
		<col style="width:27px">
		<col style="width:80px">
		<col style="width:100px">
		<col style="width:90px">
		<col style="width:100px">
		<col style="width:100px">
		<col style="width:auto">
		<col style="width:70px">
		</colgroup>
		<tbody class=" center">
		<tr class="xans-record-">
		<td><input name="ma_idx[]" value="1228" type="checkbox"></td>
        
        <td>
		<span>미지정</span>
		</td>
        <td><span>최승혜</span></td>
        <td><span>297-</span></td>
        <td><span>010-6473-3048</span></td>
        <td class="left">(<span>08740</span>)<span>서울특별시 관악구 남부순환로233길 29-3 (봉천동)</span> <span>샤인빌 304호</span></td>
        <td>
        <a href="#none" class="btnSubmit" onclick="myshopAddr.setAddrToOrder(1228)">적용</a>
        <span class="gBlank10"><a href="modify.html?ma_idx=1228" class="btnNormal">수정</a></span>
        </td>
        </tr>
		</tbody>
		
	</table>
	</div>
	</div>
	</div>
	<div class="ec-base-button">
        <a href="#none" onclick="myshopAddr.deleteAddress(); return false;"
					class="btnNormal sizeS ">선택 주소록 삭제</a>
        <a href="register.html" class="btnSubmitFix sizeS">배송지 등록</a>
	    </div>
	</div>
	</form>
	
            
<script type="text/javascript"
		src="//dalisalda.com/ind-script/i18n.php?lang=ko_KR&amp;domain=front&amp;v=2001021097"
		charset="utf-8"></script>

<script type="text/javascript"
		src="/ind-script/optimizer.php?filename=tVXBbtswDP2A-rrvEDLssOtWoJduGNBil90YiY6VUKJGUU29r5_ceUPT1vHcNPBBsMT3HkXpUabjgGb1XkwrEHDPsjOCmYtYNNts_OpjbLb5nTkWV3wCuzPbnwWlH4dV86F-B8gkvKngA_6cxEdt5wMd2xIw6hVLuOSowkQo87hWarC5h1j3EhUlCepCnGJIBIovgyAl85XXntDcPMJbDoGjKeppES6wK3Uq731aJtiWaNVXyRrnitUmsJzIcCQJ8mvz_c-xP6Yg-NUTg1sECkVh0P22zih3U4czAU5MfeuJ_vdEHbZQSIcS5ACinyHGKcmHOvW543QgefVABM5V9jzcx2u-fi3DfNpQtMuZ_o5Nh1PlHcQ-jdE3zxmabKdxP3yy7J7cBx_d09LMuj9R2fhqmjsg70BZxoXm38TJhHivGF1-TlwZEseM51PokBKecQcdREfnFKj28m1_Pv5qRX2D_Ikt1O6043l_TNyrl0IHc9zefjliVYiwOTTBHtfEm0Ut6bKIYLS9GXx_UR84iyfg7fh30dZOA3pqJm9FMz5svwE&amp;type=js&amp;k=76e7809fa191b4197e432f6a5d7b655030cc3ae1&amp;t=1577902162"></script>
<script type="text/javascript"
		src="/ind-script/optimizer.php?filename=pZXBTsQgEIYfoL36HEQP3nVN9NCNm1XjeUrHdrbAEAa26dvbrXtYY2KycOEC_8c_ww-ogS2q27ugfOA-gFUBhVPQqA6ihmgNukiRUOqD3Kg_q8F7tQUHPar9hRBkdvpnzNZZtC2GbPlr6DBoF7MBjyAjxnKCD6SxkLEL3CWd72TDybMrqWVLBpf5bP0TehbK3_-TZGhIygCaU0ELAmoskO9X-TtHMJsiH2uy8wOFDr-oNNQNzAUengN0-VF6SJEtRNIr5m3gKT_VyUTasU8-HzE3NOL5gpYdbENHNORGdmXZeFnuCYc514yHOAQ2WB3BUAcLKr8ihu4qsf_voTPUqg_yoMdfmt0Eyk9Qa7aL9drSde2TqdZgzGWcUVdJMIjqxWE8khA75VNrSFenP1FJh1WHQr1TMpK7P3GW7e3lyV0PMTBziqoFIb024xzMbw&amp;type=js&amp;k=29cd7177128b0c707d438a611a0d3956500db062&amp;t=1578278394"></script>

<iframe
		src="/exec/front/eclog/main/?&amp;rloc=https%3A//dalisalda.com/myshop/addr_popup/list.html&amp;rref=https%3A//dalisalda.com/order/orderform.html%3Fbasket_type%3DA0000%26delvtype%3DA&amp;udim=1536*864&amp;rserv=eclog2-249.cafe24.com&amp;cid=CID2c4119d314bae87cd07b9ed550c9ebe9&amp;role_path=MYSHOP_ADDR_LIST&amp;stype=e&amp;shop_no=1&amp;lang=ko_KR&amp;ver=2"
		id="log_realtime" style="display: none;"></iframe>
	<script
		src="https://eclog2-249.cafe24.com/weblog_ubp.html?uid=gsnetvision&amp;udim=1536*864&amp;uref=https://dalisalda.com/order/orderform.html?basket_type=A0000&amp;delvtype=A&amp;uname=gsnetvision&amp;url=https://dalisalda.com/myshop/addr_popup/list.html&amp;r_ref=https://dalisalda.com/order/orderform.html?basket_type=A0000&amp;delvtype=A&amp;shop_no=1&amp;t=1578372388498"></script>
	<script type="text/javascript"
		src="//eclog2-249.cafe24.com/weblog.js?uid=gsnetvision&amp;uname=gsnetvision&amp;r_ref=https://dalisalda.com/order/orderform.html?basket_type=A0000&amp;delvtype=A&amp;shop_no=1&amp;t=1578372388498"
		id="log_script"></script>


</body>

</html>
