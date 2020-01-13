<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<% request.setCharacterEncoding("UTF-8"); %>
    <% response.setContentType("text/html; charset=UTF-8");%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito+Sans:200,300,400,700,900"> 
    <link rel="stylesheet" href="<%=request.getContextPath()%>/RECOREMain/fonts/icomoon/style.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/RECOREMain/css/magnific-popup.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/RECOREMain/css/jquery-ui.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/RECOREMain/css/owl.carousel.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/RECOREMain/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/RECOREMain/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/RECOREMain/fonts/flaticon/font/flaticon.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/RECOREMain/css/aos.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/RECOREMain/css/style.css">
    <link rel="stylesheet" type="text/css" 
    href="<%=request.getContextPath()%>/RECOREMain/RECOREAccount/AccountCss/SignupCSS.css"/>
    
    <!-- @@ RECORE favicon @@  -->
    <link rel="icon" href="<%=request.getContextPath()%>/images/recorefavi.png">

<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
function goPopup(){
	// 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
    var pop = window.open("jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes");
	// 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
    //var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
}
/** API 서비스 제공항목 확대 (2017.02) **/
function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn
					, detBdNmList, bdNm, bdKdcd, siNm, sggNm, emdNm, liNm, rn, udrtYn, buldMnnm, buldSlno, mtYn, lnbrMnnm, lnbrSlno, emdNo){
	// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
	document.form.roadAddrPart1.value = roadAddrPart1;
	document.form.addrDetail.value = addrDetail;
	document.form.zipNo.value = zipNo;
}
$(document).ready(function() {
	
	$("input[name=member_id]").blur(function(){/* 
/* 		var IdCheck = RegExp("^[a-zA-Z](?=.{0,28}[0-9])[0-9a-zA-Z]{3,16}$"); // 숫자 반드시 포함 	*/
		var IdCheck = RegExp("^[a-zA-Z][0-9a-zA-Z]{3,16}$"); 

		var member_id = $("input[name=member_id]").val();
		$.ajax({
			url : "../../Account_Controller.do?command=idcheck",
			
			data : {
				"member_id" : member_id
			},
					
			dataType : "json",	
			success:function(data){	
				if(member_id==""){
					$("#idMsg").css("display", "none");
					$("#idMsg2").css("display", "none");
				} else if(data.res){
					$("#idMsg").css("display", "");
					$("#idMsg2").css("display", "none");
					$('#member_id').val('');
	                $('#member_id').focus();
				} else if(!(data.res)){
					$("#idMsg").css("display", "none");
					$("#idMsg2").css("display", "");					
				}
			},
			error:function(){
				 alert("에러가 발생했습니다.");""
			}
		});
		if(!IdCheck.test($('#member_id').val()) && member_id!=""){
			alert("영문소문자/숫자 조합, 첫글자는 영문소문자로 시작해야 하며, 4~16자만 입력이 가능합니다.");
			$('#member_id').val($('#member_id').val().replace(member_id,""));
			$('#member_id').focus();
		} 
		
	});
	
	$("input[name=passwd]").blur(function(){
		var pwCheck = RegExp(/^.*(?=^.{6,16}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/);

		var member_id = $("input[name=member_id]").val();
		
		var passwd = $("input[name=passwd]").val();
		var passwd_confirm = $("input[name=passwd_confirm]").val();
		
		if(passwd_confirm==""){
			$("#pwConfirmMsg").css("display", "none");
			$("#pwConfirmMsg2").css("display", "none");		
		} else if(passwd==passwd_confirm){
			$("#pwConfirmMsg").css("display", "");
			$("#pwConfirmMsg2").css("display", "none");
		} else if(!(passwd==passwd_confirm)){
			$("#pwConfirmMsg").css("display", "none");
			$("#pwConfirmMsg2").css("display", "");
		}
		if(!pwCheck.test($('#passwd').val()) && passwd != ""){
			alert("영문대소문자/숫자/특수문자를 최소 하나씩 포함하여, 6자~16자만 입력이 가능합니다.");
			$('#passwd').val($('#passwd').val().replace(passwd,""));
			$('#passwd').focus();
		} 
		
	});
	
	$("input[name=passwd_confirm]").blur(function(){
		var passwd = $("input[name=passwd]").val();
		var passwd_confirm = $("input[name=passwd_confirm]").val();
		
		if(passwd==""){
			$("#pwConfirmMsg").css("display", "none");
			$("#pwConfirmMsg2").css("display", "none");			
		} else if(passwd==passwd_confirm){
			$("#pwConfirmMsg").css("display", "");
			$("#pwConfirmMsg2").css("display", "none");
		} else if(!(passwd==passwd_confirm)){
			$("#pwConfirmMsg").css("display", "none");
			$("#pwConfirmMsg2").css("display", "");
			$('#passwd_confirm').val('');
            $('#passwd').focus();
		}
	});
	
 	$("input[name=mobile3]").blur(function(){
		var mobile1 = $("select[name=mobile1]").val();
		var mobile2 = $("input[name=mobile2]").val();
		var mobile3 = $("input[name=mobile3]").val();
		var mobile = mobile1+mobile2+mobile3;
		
		var mobilecheck = RegExp(/^[0-9]\d{3,4}$/);
		
		$.ajax({
			url : "../../Account_Controller.do?command=phonecheck",
			
			data : {
				"mobile" : mobile
			},
					
			dataType : "json",	
			
			success:function(data){	
				if(mobile3==""){
					$("#phoneMsg").css("display", "none");
					$("#phoneMsg2").css("display", "none");
				} else if(mobile2==""){
					$("#phoneMsg").css("display", "none");
					$("#phoneMsg2").css("display", "none");					
				} else if(data.pres){
					$("#phoneMsg").css("display", "");
					$("#phoneMsg2").css("display", "none");
					$('#mobile2').val('');
					$('#mobile3').val('');
		            $('#mobile2').focus();
				} else if(!(data.pres)){
					$("#phoneMsg").css("display", "none");
					$("#phoneMsg2").css("display", "");			
				}
			},
			error:function(){
				 alert("에러가 발생했습니다.");
			}
		});
		
		if(!mobilecheck.test($('#mobile3').val()) && mobile3!=""){
			alert("올바른 전화번호 형식을 입력하세요.");
			$('#mobile3').val($('#mobile3').val().replace(mobile3,""));
			$('#mobile3').focus();
		}
	}); 
 	
 	$("input[name=mobile2]").blur(function(){
		var mobile1 = $("select[name=mobile1]").val();
		var mobile2 = $("input[name=mobile2]").val();
		var mobile3 = $("input[name=mobile3]").val();
		var mobile = mobile1+mobile2+mobile3;
		
		var mobilecheck = RegExp(/^[0-9]\d{2,4}$/);

		$.ajax({
			url : "../../Account_Controller.do?command=phonecheck",
			
			data : {
				"mobile" : mobile
			},
					
			dataType : "json",	
			
			success:function(data){	
				if(mobile3==""){
					$("#phoneMsg").css("display", "none");
					$("#phoneMsg2").css("display", "none");
				} else if(mobile2==""){
					$("#phoneMsg").css("display", "none");
					$("#phoneMsg2").css("display", "none");					
				} else if(data.pres){
					$("#phoneMsg").css("display", "");
					$("#phoneMsg2").css("display", "none");
				} else if(!(data.pres)){
					$("#phoneMsg").css("display", "none");
					$("#phoneMsg2").css("display", "");			
				}
			},
			error:function(){
				 alert("에러가 발생했습니다.");""
			}
		});
		
		if(!mobilecheck.test($('#mobile2').val()) && mobile2!=""){
			alert("올바른 전화번호 형식을 입력하세요.");
			$('#mobile2').val($('#mobile2').val().replace(mobile2,""));
            $('#mobile2').focus();
		}
	}); 
 	

	$("input[name=email]").blur(function(){
		var emailCheck = RegExp(/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/);
		var email = $("input[name=email]").val();
		
		if(!emailCheck.test($('#email').val()) && email!=""){
			alert("올바른 이메일 형식을 입력하세요.");
			$('#email').val($('#email').val().replace(email,""));
			$('#email').focus();
		}

	});

});
</script>
<title>회원가입</title>
<style type="text/css">
	html{
		scroll-behavior: smooth;
	}
</style>
</head>
<body  id="body">


<%@ include file="header.jsp" %>


	<div id="wrap">

		<div id="container">
			<div id="content">

				<div class="path">
					<span>현재 위치</span>
					<ol>
						<li><a href="/">홈</a></li>
						<li title="현재 위치"><strong>회원 가입</strong></li>
					</ol>
				</div>

				<div class="titleArea">
					<h2>회원 가입</h2>
				</div>

				<form id="form" name="form" action="../../Account_Controller.do?command=Acc_insert" method="post" target="_self" >
					<input id="useSimpleSignin" name="useSimpleSignin" value="F" type="hidden" /> 
					<input id="member_name_cert_flag" name="member_name_cert_flag" value="F" type="hidden" /> 
					<input id="is_name_auth_use" name="is_name_auth_use" value="F" type="hidden" /> 
					<input id="is_ipin_auth_use" name="is_ipin_auth_use" value="F" type="hidden" /> 
					<input id="is_mobile_auth_use" name="is_mobile_auth_use" value="F" type="hidden" /> 
					<input id="is_email_auth_use" name="is_email_auth_use" value="F" type="hidden" /> 
					<input id="default_auth_reg_page_flag" name="default_auth_reg_page_flag" value="E" type="hidden" /> 
					<input id="realNameEncrypt" name="realNameEncrypt" value="" type="hidden" /> 
					<input id="add1_name" name="add1_name" value="본인은 만 14세 이상입니다." type="hidden" /> 
					<input id="add2_name" name="add2_name" value="" type="hidden" /> 
					<input id="add3_name" name="add3_name" value="" type="hidden" /> 
					<input id="add4_name" name="add4_name" value="" type="hidden" /> 
					<input id="is_display_register_business" name="is_display_register_business" value="F" type="hidden" />
					<input id="is_display_register_foreign"	name="is_display_register_foreign" value="F" type="hidden" /> 
					<input id="idDuplCheck" name="idDuplCheck" value="" type="hidden" /> 
					<input id="emailDuplCheck" name="emailDuplCheck" value="" type="hidden" />
					<input id="login_id_type" name="login_id_type" value="id" type="hidden" /> 
					<input id="display_agree_information_check_flag" name="display_agree_information_check_flag" value="F" type="hidden" /> 
					<input id="display_agree_consignment_check_flag" name="display_agree_consignment_check_flag" value="F" type="hidden" /> 
					<input id="is_display_register_name" name="is_display_register_name" value="T" type="hidden" /> 
					<input id="display_required_name" name="display_required_name" value="T" type="hidden" /> 
					<input id="is_display_register_name_phonetic" name="is_display_register_name_phonetic" value="F" type="hidden" />
					<input id="display_required_name_phonetic" name="display_required_name_phonetic" value="F" type="hidden" />
					<input id="is_display_register_eng_name" name="is_display_register_eng_name" value="F" type="hidden" /> 
					<input id="display_required_name_en" name="display_required_name_en" value="F" type="hidden" /> 
					<input id="passwd_type" name="passwd_type" value="C" type="hidden" /> 
					<input id="is_display_register_addr" name="is_display_register_addr" value="F" type="hidden" /> 
					<input id="__addr1" name="__addr1" value="" type="hidden" /> 
					<input id="__city_name" name="__city_name" value="" type="hidden" /> 
					<input id="__state_name" name="__state_name" value="" type="hidden" /> 
					<input id="display_required_address" name="display_required_address" value="F" type="hidden" /> 
					<input id="display_required_address2" name="display_required_address2" value="F" type="hidden" /> 
					<input id="is_display_register_mobile" name="is_display_register_mobile" value="T" type="hidden" /> 
					<input id="display_required_cell" name="display_required_cell" value="T" type="hidden" /> 
					<input id="display_register_mobile" name="display_register_mobile" value="F" type="hidden" /> 
					<input id="use_checking_mobile_number_duplication" name="use_checking_mobile_number_duplication" value="T" type="hidden" /> 
					<input id="isMobileVerify" name="isMobileVerify" value="F" type="hidden" /> 
					<input id="is_display_register_phone" name="is_display_register_phone" value="F" type="hidden" /> 
					<input id="display_required_phone" name="display_required_phone" value="F" type="hidden" /> 
					<input id="display_register_phone" name="display_register_phone" value="F" type="hidden" /> 
					<input id="is_display_password_hint" name="is_display_password_hint" value="F" type="hidden" /> 
					<input id="required_is_sms_flag" name="required_is_sms_flag" value="T" type="hidden" /> 
					<input id="required_is_news_mail_flag" name="required_is_news_mail_flag" value="T" type="hidden" /> 
					<input id="is_display_register_birthday" name="is_display_register_birthday" value="T" type="hidden" /> 
					<input id="display_required_is_birthday" name="display_required_is_birthday" value="T" type="hidden" /> 
					<input id="display_required_sex" name="display_required_sex" value="F" type="hidden" /> 
					<input id="nick_name_flag" name="nick_name_flag" value="F" type="hidden" /> 
					<input id="nick_name_confirm" name="nick_name_confirm" value="F" type="hidden" /> 
					<input id="display_required_nick_name_flag" name="display_required_nick_name_flag" value="F" type="hidden" />
					<input id="is_display_register_wedding" name="is_display_register_wedding" value="F" type="hidden" /> 
					<input id="display_required_is_wedding_anniversary" name="display_required_is_wedding_anniversary" value="F" type="hidden" /> 
					<input id="is_display_register_life_partner" name="is_display_register_life_partner" value="F" type="hidden" />
					<input id="display_required_is_life_partner" name="display_required_is_life_partner" value="F" type="hidden" />
					<input id="is_display_bank" name="is_display_bank" value="F" type="hidden" /> 
					<input id="display_required_bank_account_no" name="display_required_bank_account_no" value="F" type="hidden" />
					<input id="display_required_job" name="display_required_job" value="F" type="hidden" /> 
					<input id="display_required_job_class" name="display_required_job_class" value="F" type="hidden" /> 
					<input id="display_required_school" name="display_required_school" value="F" type="hidden" /> 
					<input id="display_required_interest" name="display_required_interest" value="F" type="hidden" /> 
					<input id="display_required_region" name="display_required_region" value="F" type="hidden" /> 
					<input id="display_required_internet" name="display_required_internet" value="F" type="hidden" /> 
					<input id="display_required_child" name="display_required_child" value="F" type="hidden" /> 
					<input id="display_required_car" name="display_required_car" value="F" type="hidden" /> 
					<input id="display_required_earning" name="display_required_earning" value="F" type="hidden" /> 
					<input id="display_required_reco_id" name="display_required_reco_id" value="F" type="hidden" /> 
					<input id="display_required_add1" name="display_required_add1" value="T" type="hidden" /> 
					<input id="display_required_add2" name="display_required_add2" value="F" type="hidden" /> 
					<input id="display_required_add3" name="display_required_add3" value="F" type="hidden" /> 
					<input id="display_required_add4" name="display_required_add4" value="F" type="hidden" /> 
					<input id="returnUrl" name="returnUrl" value="/member/join_result.html" type="hidden" /> 
					<input id="sUseCountryNumberFlag" name="sUseCountryNumberFlag" value="T" type="hidden" /> 
					<input id="sUseSeparationNameFlag" name="sUseSeparationNameFlag" value="T" type="hidden" /> 
					<input id="is_use_checking_join_info" name="is_use_checking_join_info" value="F" type="hidden" />
					<div class="xans-element- xans-member xans-member-join">
						<h3 class=" ">기본정보</h3>
						<p class="required ">
							<img
								src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"
								alt="필수" /> 필수입력사항
						</p>
						<div class="ec-base-table typeWrite">
							<table border="1" summary="">
								<caption>회원 기본정보</caption>
								<colgroup>
									<col style="width: 150px;" />
									<col style="width: auto;" />
								</colgroup>
								<tbody>
									<tr>
										<th scope="row">아이디 <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"
											alt="필수" /></th>
										<td>
										<input id="member_id" name="member_id"
											class="inputTypeText" placeholder=""
											value="" type="text" required/> 
											(첫글자 영문소문자, 영문소문자/숫자 조합, 4~16자)
											<br/>
											<span id="idMsg" style="color:red; display : none"><strong> 중복된 아이디입니다. </strong> </span> 
											<span id="idMsg2" style="color:royalblue; display : none"> <strong> 중복된 아이디가 없습니다. </strong> </span> 
											
											</td>
									</tr>
									<tr>
										<th scope="row">비밀번호 
										<img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"
											alt="필수" />
										</th>
										<td>
											<div class="eTooltip">
												<input id="passwd" name="passwd"
													autocomplete="off" value="" type="password" required/>
												</div>
											 (영문 대소문자/숫자/특수문자 최소 하나씩 포함, 6자~16자)
										</td>
									</tr>
									<tr>
										<th scope="row">비밀번호 확인 
										<img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"
											alt="필수" />
										</th>
										<td>
										<input id="passwd_confirm" name="passwd_confirm"
											autocomplete="off" maxlength="16" value="" type="password" required/> 
											<br/>
											<span id="pwConfirmMsg" style="color:royalblue; display : none"> <strong> 비밀번호가 일치합니다. </strong> </span> 
											<span id="pwConfirmMsg2" style="color:red; display : none"><strong> 비밀번호가 일치하지 않습니다. </strong> </span> 
										</td>
									</tr>
									
									<tr>
										<th scope="row" id="nameTitle">이름 <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"
											alt="필수" /></th>
										<td><span id="nameContents"><input id="name"
												name="name" class="ec-member-name" placeholder=""
												maxlength="30" value="" type="text" required /></span>
									</tr>
									
									<tr class="">
										<th scope="row">생년월일 <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"
											class="" alt="필수" /></th>
										<td>
										<!-- <input id="birth" name="birth"
											class="inputTypeText" placeholder="" value=""
											type="date" style="width:200px;"/> -->
										
										<select id="birth_year" name="birth_year" style="width:52px;">
												<option value="1900">1900</option>
												<option value="1901">1901</option>
												<option value="1902">1902</option>
												<option value="1903">1903</option>
												<option value="1904">1904</option>
												<option value="1905">1905</option>
												<option value="1906">1906</option>
												<option value="1907">1907</option>
												<option value="1908">1908</option>
												<option value="1909">1909</option>
												<option value="1910">1910</option>
												<option value="1911">1911</option>
												<option value="1912">1912</option>
												<option value="1913">1913</option>
												<option value="1914">1914</option>
												<option value="1915">1915</option>
												<option value="1916">1916</option>
												<option value="1917">1917</option>
												<option value="1918">1918</option>
												<option value="1919">1919</option>
												<option value="1921">1921</option>
												<option value="1922">1922</option>
												<option value="1923">1923</option>
												<option value="1924">1924</option>
												<option value="1925">1925</option>
												<option value="1926">1926</option>
												<option value="1927">1927</option>
												<option value="1928">1928</option>
												<option value="1929">1929</option>
												<option value="1930">1930</option>
												<option value="1931">1931</option>
												<option value="1932">1932</option>
												<option value="1933">1933</option>
												<option value="1934">1934</option>
												<option value="1935">1935</option>
												<option value="1936">1936</option>
												<option value="1937">1937</option>
												<option value="1938">1938</option>
												<option value="1939">1939</option>
												<option value="1940">1940</option>
												<option value="1941">1941</option>
												<option value="1942">1942</option>
												<option value="1943">1943</option>
												<option value="1944">1944</option>
												<option value="1945">1945</option>
												<option value="1946">1946</option>
												<option value="1947">1947</option>
												<option value="1948">1948</option>
												<option value="1949">1949</option>
												<option value="1950">1950</option>
												<option value="1951">1951</option>
												<option value="1952">1952</option>
												<option value="1953">1953</option>
												<option value="1954">1954</option>
												<option value="1955">1955</option>
												<option value="1956">1956</option>
												<option value="1957">1957</option>
												<option value="1958">1958</option>
												<option value="1959">1959</option>
												<option value="1960">1960</option>
												<option value="1961">1961</option>
												<option value="1962">1962</option>
												<option value="1963">1963</option>
												<option value="1964">1964</option>
												<option value="1965">1965</option>
												<option value="1966">1966</option>
												<option value="1967">1967</option>
												<option value="1968">1968</option> 
												<option value="1969">1969</option>
												<option value="1970">1970</option>
												<option value="1971">1971</option>
												<option value="1972">1972</option>
												<option value="1973">1973</option>
												<option value="1974">1974</option>
												<option value="1975">1975</option>
												<option value="1976">1976</option>
												<option value="1977">1977</option>
												<option value="1978">1978</option>
												<option value="1979">1979</option>
												<option value="1980">1980</option>
												<option value="1981">1981</option>
												<option value="1982">1982</option>
												<option value="1983">1983</option>
												<option value="1984">1984</option>
												<option value="1985">1985</option>
												<option value="1986">1986</option>
												<option value="1987">1987</option>
												<option value="1988">1988</option>
												<option value="1989">1989</option>
												<option value="1990">1990</option>
												<option value="1991">1991</option>
												<option value="1992">1992</option>
												<option value="1993">1993</option>
												<option value="1994">1994</option>
												<option value="1995">1995</option>
												<option value="1996">1996</option>
												<option value="1997">1997</option>
												<option value="1998">1998</option>
												<option value="1999">1999</option>
												<option value="2000">2000</option>
												<option value="2001">2001</option>
												<option value="2002">2002</option>
												<option value="2003">2003</option>
												<option value="2004">2004</option>
												<option value="2005">2005</option>
												<option value="2006">2006</option>
												<option value="2007">2007</option>
												<option value="2008">2008</option>
												<option value="2009">2009</option>
												<option value="2010">2010</option>
												<option value="2011">2011</option>
												<option value="2012">2012</option>
												<option value="2013">2013</option>
												<option value="2014">2014</option>
												<option value="2015">2015</option>
												<option value="2016">2016</option>
												<option value="2017">2017</option>
												<option value="2018">2018</option>
												<option value="2019">2019</option>
										</select> 년
										<select id="birth_month" name="birth_month" style="width:42px;">
												<option value="01">01</option>
												<option value="02">02</option>
												<option value="03">03</option>
												<option value="04">04</option>
												<option value="05">05</option>
												<option value="06">06</option>
												<option value="07">07</option>
												<option value="08">08</option>
												<option value="09">09</option>
												<option value="10">10</option>
												<option value="11">11</option>
												<option value="12">12</option>
										</select> 월
										<select id="birth_day" name="birth_day" style="width:42px;">
												<option value="01">01</option>
												<option value="02">02</option>
												<option value="03">03</option>
												<option value="04">04</option>
												<option value="05">05</option>
												<option value="06">06</option>
												<option value="07">07</option>
												<option value="08">08</option>
												<option value="09">09</option>
												<option value="10">10</option>
												<option value="11">11</option>
												<option value="12">12</option>
												<option value="13">13</option>
												<option value="14">14</option>
												<option value="15">15</option>
												<option value="16">16</option>
												<option value="17">17</option>
												<option value="18">18</option>
												<option value="19">19</option>
												<option value="20">20</option>
												<option value="21">21</option>
												<option value="22">22</option>
												<option value="23">23</option>
												<option value="24">24</option>
												<option value="25">25</option>
												<option value="26">26</option>
												<option value="27">27</option>
												<option value="28">28</option>
												<option value="29">29</option>
												<option value="30">30</option>
												<option value="31">31</option>
										</select> 일
											<!-- <span class="gIndent20 ">
											<input id="is_solar_calendar0" name="is_solar_calendar"
											value="T"
											type="radio" checked="checked" />
												<label for="is_solar_calendar0">양력</label> 
											<input id="is_solar_calendar1" name="is_solar_calendar"
											value="F"
											type="radio" />
												<label for="is_solar_calendar1">음력</label>
											</span> -->
											</td>
									</tr>
									
									<!--@@@이메일 입력받아야 함@@@-->									
									
									<tr>
										<th scope="row">이메일 <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"
											alt="필수" /></th>
										<td><input id="email" name="email"
											value="" type="text" required /> <span id="emailMsg"></span>
										</td>
									</tr>
									
									
									<!-- @@@@@@번호 입력받아야 함@@@@@@ -->
									 <tr class="">
										<th scope="row">휴대전화 <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"
											class="" alt="필수" /></th>
										<td>
										<select id="mobile1" name="mobile1" style="width:45px;">
												<option value="010">010</option>
												<option value="011">011</option>
												<option value="016">016</option>
												<option value="017">017</option>
												<option value="018">018</option>
												<option value="019">019</option>
										</select>
										-<input id="mobile2" name="mobile2" maxlength="4" value="" type="text" style="width:40px;" required/>
										-<input id="mobile3"
											name="mobile3" maxlength="4" value="" type="text" style="width:40px;" required/>
											<span id="phoneMsg" style="color:red; display : none"> <strong> 이미 존재하는 번호입니다. </strong> </span> 
											<span id="phoneMsg2" style="color:royalblue; display : none"><strong> 사용 가능한 번호입니다. </strong> </span> 
											
										</td>
									</tr>
									
									
									<!-- @@@주소 공공API 사용하기@@@ -->
									<tr class="">
										<th scope="row">주소 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif" class="displaynone" alt="필수" />
										</th>
										<td>
										<input type="hidden" id="confmKey" name="confmKey" value="" required>
										<input type="text" id="zipNo" name="zipNo" class="inputTypeText" placeholder="우편번호" maxlength="14" value="" required /> 
										<a onclick="goPopup();" class="btnNormal" id="postBtn" >주소검색</a><br/> 
										<input type="text" id="roadAddrPart1" name="roadAddrPart1" class="inputTypeText" placeholder="도로명주소" value="" required /> 도로명주소
										<br/> 
										<input type="text" id="addrDetail" name="addrDetail" placeholder="상세주소" value="" required/> 상세주소
											</td>
									</tr>
								</tbody>
							</table>
						</div>
					

						<div class="ec-base-button">
							<input type="submit" id="join" name="join" value="회원가입" class="btnSubmitFix sizeM">
							<a href="../index.html" class="btnEmFix sizeM">취소</a> 
						</div>
					</div>
				</form>
			</div>
			<hr class="layout" />
   
   
	

	<!-- footer -->
    <%@ include file = "/footer.jsp" %>
      
		</div>
	</div>

</body>
</html>