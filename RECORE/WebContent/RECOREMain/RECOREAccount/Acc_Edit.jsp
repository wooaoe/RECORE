<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<% request.setCharacterEncoding("UTF-8"); %>
	<% response.setContentType("text/html; charset=UTF-8"); %>
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
    href="<%=request.getContextPath()%>/RECOREMain/RECOREAccount/AccountCss/EditCSS.css"/>
    
    <!-- @@ RECORE favicon @@  -->
    <link rel="icon" href="<%=request.getContextPath()%>/images/recorefavi.png">
    
<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
function deleteUser(){
	window.open("deleteUser.jsp","deleteUser","width=270,height=170, location=no, status=no, scrollbars=yes, left=800, top=400");
}
function deleteCallback(){
	location.href="../../Account_Controller.do?command=deleteUser";
}
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
				} else if(!(data.pres)){
					$("#phoneMsg").css("display", "none");
					$("#phoneMsg2").css("display", "");			
				}
			},
			error:function(){
				 alert("에러가 발생했습니다.");""
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
		}

	});
	
	$("input[name='is_solar_calendar']").attr('disabled',true);

});
</script>
    
<title>회원 정보</title>

<style type="text/css">

</style>
</head>
<body>

<!-- header -->
<%@ include file="header.jsp" %>

	<div id="wrap">
	<form id="form" name="form" action="../../Account_Controller.do?command=Acc_update" method="post" target="_self">
	<input type="hidden" name="acc_no" value="<%=vo.getAcc_no() %>">
		
		<div id="container">
			<div id="content" >

				<div class="path">
					<span>현재 위치</span>
					<ol style = "position:static;">
						<li><a href="/">홈</a></li>
						<li title="현재 위치"><strong>회원 정보 수정</strong></li>
					</ol>
				</div>
				<div class="titleArea">
					<h2>회원 정보 수정</h2>
				</div>
						
						<h3 class=" ">기본정보</h3>
						<p class="required ">
							<img
								src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"
								alt="필수" /> 필수입력사항
						</p>
						<div class="ec-base-table typeWrite">
							<table border="1" summary="">
								<colgroup>
									<col style="width: 150px;" />
									<col style="width: auto;" />
								</colgroup>
								<tbody>
								
									<tr>
										<th scope="row">아이디 <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"
											alt="필수" /></th>
										<td><input id="member_id" name="member_id"
											class="inputTypeText" placeholder=""
											readonly="readonly" value="<%=vo.getAcc_id() %>" type="text" /> 
											(첫글자 영문소문자, 영문소문자/숫자 조합, 4~16자)
											</td>
									</tr>
									
									<tr>
										<th scope="row">비밀번호 <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"
											class="" alt="필수" /></th>
										<td>
											<div class="eTooltip">
												<input id="passwd" name="passwd" 
													autocomplete="off" value="<%=vo.getAcc_pw() %>" type="password" required />
											</div>
											(영문 대소문자/숫자/특수문자 최소 하나씩 포함, 6자~16자)
										</td>
									</tr>
									
									<tr class="">
										<th scope="row">비밀번호 확인 <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"
											alt="필수" /></th>
										<td>
										<input id="passwd_confirm" name="passwd_confirm" 
											autocomplete="off" value="<%=vo.getAcc_pw() %>" type="password" required/> 
										<br/>
										<span id="pwConfirmMsg" style="color:royalblue; display : none"> <strong> 비밀번호가 일치합니다. </strong> </span> 
										<span id="pwConfirmMsg2" style="color:red; display : none"><strong> 비밀번호가 일치하지 않습니다. </strong> </span> 
										</td>
									</tr>
									
									<tr style="display:">
										<th scope="row" id="">이름 <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"
											alt="필수" /></th>
										<td><input id="name" name="name" 
											class="ec-member-name" placeholder="" maxlength="30"
											readonly="readonly" value="<%=vo.getAcc_name() %>" type="text" /></td>
									</tr>
									
									<tr class="">
										<th scope="row">생년월일 <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"
											class="" alt="필수" /></th>
										<td>
										<input id="birth_year" name="birth_year"
											class="inputTypeText" placeholder="" maxlength="4" value="<%=vo.getAcc_birth().substring(0, 4) %>"
											type="text" style="width: 40px;" readonly="readonly" /> 년 
											<input id="birth_month" name="birth_month"
											class="inputTypeText" placeholder="" maxlength="2" value="<%=vo.getAcc_birth().substring(4, 6) %>"
											type="text" style="width: 25px;" readonly="readonly" /> 월 
											<input id="birth_day" name="birth_day"
											class="inputTypeText" placeholder="" maxlength="2" value="<%=vo.getAcc_birth().substring(6, 8) %>"
											type="text" style="width: 25px;" readonly="readonly" /> 일 
											
											<!-- <span class="gIndent20 ">
											<input id="is_solar_calendar0" name="is_solar_calendar" value="T" type="radio" checked="checked" />
												<label for="is_solar_calendar0">양력</label> 
											<input id="is_solar_calendar1" name="is_solar_calendar" value="F" type="radio" />
												<label for="is_solar_calendar1">음력</label></span> -->
											</td>
									</tr>
																		
									<tr>
										<th scope="row">이메일 <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"
											alt="필수" /></th>
										<td><input id="email" name="email" 
											value="<%=vo.getAcc_email() %>" type="text" required />
											</td>
									</tr>
									
									<tr class="">
										<th scope="row">휴대전화 <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"
											class="" alt="필수" /></th>
										<td><select id="mobile1" name="mobile1">
												<option value="010">010</option>
												<option value="011">011</option>
												<option value="016">016</option>
												<option value="017">017</option>
												<option value="018">018</option>
												<option value="019">019</option>
										</select>
										-<input id="mobile2" name="mobile2"
											value="<%=vo.getAcc_phone().substring(3, 7) %>" type="text" style="width: 40px;" maxlength="4" required />
										-<input id="mobile3" name="mobile3"
											value="<%=vo.getAcc_phone().substring(7, 11) %>" type="text" style="width: 40px;" maxlength="4"	required />
										<span id="phoneMsg" style="color:red; display : none"> <strong> 이미 존재하는 번호입니다. </strong> </span> 
										<span id="phoneMsg2" style="color:royalblue; display : none"><strong> 사용 가능한 번호입니다. </strong> </span> 
										</td>
									</tr>
									
									<!-- @@@주소 공공API 사용하기@@@ -->
									<tr class="">
										<th scope="row">주소 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif" class="displaynone" alt="필수" />
										</th>
										<td>
										<input type="hidden" id="confmKey" name="confmKey" value=""  >
										<input type="text" id="zipNo" name="zipNo" class="inputTypeText" placeholder="우편번호" readonly="readonly"
										maxlength="14" value="<%=vo.getAcc_zipcode() %>" type="text" /> 
										<a onclick="goPopup();" class="btnNormal" id="postBtn">주소검색</a><br/> 
										<input type="text" id="roadAddrPart1" name="roadAddrPart1" class="inputTypeText" placeholder="도로명주소" readonly="readonly" value="<%=vo.getAcc_addr() %>" /> 도로명주소
										<br/> 
										<input type="text" id="addrDetail" name="addrDetail" placeholder="상세주소" value="<%=vo.getAcc_addr2() %>" required /> 상세주소
											</td>
									</tr>
								</tbody>
							</table>
						</div>

						</div>
						<div class="ec-base-table typeWrite ">
						</div>
						<div class="ec-base-button justify" style="padding: 80px; margin-top:-100px;">
							<input type="submit" class="btnSubmitFix sizeM" value="회원정보수정">
							<a href="../../mypage.do?command=main" class="btnEmFix sizeM">취소</a> 
							<input type="button" onclick="deleteUser()" class="btnEmFix sizeM" value="회원탈퇴">
<!-- 						<a href="../../Account_Controller.do?command=withdrawal" class="btnEmFix sizeM" >회원탈퇴</a> -->
						</div>
						
					</div>
				</form>
			</div>
			<hr class="layout" />
    
    
	<!-- footer -->   
   <%@ include file="footer.jsp" %>
    
	
	
			

</body>
</html>