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
    <link rel="stylesheet" href="fonts/icomoon/style.css">
    <link rel="stylesheet" href="cssMain/magnific-popup.css">
    <link rel="stylesheet" href="cssMain/jquery-ui.css">
    <link rel="stylesheet" href="cssMain/owl.carousel.min.css">
    <link rel="stylesheet" href="cssMain/owl.theme.default.min.css">
    <link rel="stylesheet" href="cssMain/bootstrap-datepicker.css">
    <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">
    <link rel="stylesheet" href="cssMain/aos.css">
    <link rel="stylesheet" href="cssMain/style2.css">

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
	$("input[name=member_id]").blur(function(){
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
				} else if(!(data.res)){
					$("#idMsg").css("display", "none");
					$("#idMsg2").css("display", "");					
				}
			},
			error:function(){
				 alert("에러가 발생했습니다.");""
			}
		});
	});
	
	$("input[name=passwd]").blur(function(){
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
		}
	});
	
 	$("input[name=mobile3]").blur(function(){
		var mobile1 = $("select[name=mobile1]").val();
		var mobile2 = $("input[name=mobile2]").val();
		var mobile3 = $("input[name=mobile3]").val();
		var mobile = mobile1+mobile2+mobile3;
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
	}); 
 	
 	$("input[name=mobile2]").blur(function(){
		var mobile1 = $("select[name=mobile1]").val();
		var mobile2 = $("input[name=mobile2]").val();
		var mobile3 = $("input[name=mobile3]").val();
		var mobile = mobile1+mobile2+mobile3;
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
	}); 
 	
 	
});
</script>
<title>회원가입</title>
<style type="text/css">
hr {
    display: block;
    unicode-bidi: isolate;
    margin-block-start: 0.5em;
    margin-block-end: 0.5em;
    margin-inline-start: auto;
    margin-inline-end: auto;
    overflow: hidden;
    border-style: inset;
    border-width: 1px;
}
hr.layout {
    display: none;
}
.xans-member-join .joinConfirm {
    display: none;
    position: fixed;
    top: 50%;
    left: 50%;
    z-index: 1000;
    width: 620px;
    margin: -400px 0 0 -310px;
}
.ec-base-layer {
    position: absolute;
    z-index: 100;
    border: 1px solid #757575;
    background: #fff;
}
.ec-base-layer .close {
    position: absolute;
    right: 0;
    top: 0;
    padding: 11px 20px;
    cursor: pointer;
}
.ec-base-layer .ec-base-button {
    padding: 9px;
    border-top: 1px solid #d7d5d5;
    text-align: center;
    background: #fbfafa;
}
.ec-base-button:after {
    display: block;
    content: "";
    clear: both;
}
[class^='btn'][class*='Fix'].sizeS {
    width: 96px;
}
[class^='btn'].sizeS {
    padding: 6px 8px;
}
[class^='btn'][class*='Fix'].sizeM {
    width: 120px;
    padding-left: 8px;
    padding-right: 8px;
}
[class^='btn'][class*='Fix'] {
    width: 72px;
    word-break: keep-all;
    word-wrap: break-word;
}
[class^='btn'].sizeM {
    padding: 10px 16px;
}
[class^='btnSubmit'], a[class^='btnSubmit'] {
    display: inline-block;
    box-sizing: border-box;
    padding: 2px 8px;
    border: 1px solid transparent;
    border-radius: 2px;
    font-family: "굴림",Gulim;
    font-size: 12px;
    line-height: 18px;
    font-weight: normal;
    text-decoration: none;
    vertical-align: middle;
    word-spacing: -0.5px;
    letter-spacing: 0;
    text-align: center;
    white-space: nowrap;
    color: #fff;
    background-color: #05ce7c;
}
[class^='btnEm'], a[class^='btnEm'] {
    display: inline-block;
    box-sizing: border-box;
    padding: 2px 8px;
    border: 1px solid transparent;
    border-radius: 2px;
    font-family: "굴림",Gulim;
    font-size: 12px;
    line-height: 18px;
    font-weight: normal;
    text-decoration: none;
    vertical-align: middle;
    word-spacing: -0.5px;
    letter-spacing: 0;
    text-align: center;
    white-space: nowrap;
    color: #555;
    background-color: #fff;
    border: solid 1px #aaa;
    margin-left: 5px;
}
.ec-base-button.justify {
    position: relative;
}
.ec-base-box.typeThinBg {
    border-width: 1px;
    border-color: #d7d5d5;
    background-color: #fff;
}
.ec-base-button {
    padding: 10px 0;
    text-align: center;
}
.xans-member-join .agreeArea input.ec-base-chk {
    vertical-align: middle;
}
.xans-member-join .agreeArea .check li span {
    display: inline-block;
    min-width: 170px;
}
ul {
    display: block;
    list-style-type: disc;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;
}
.xans-member-join .agreeArea {
    color: #747474;
    line-height: 20px;
}
.xans-member-join .agreeArea .check {
    padding: 7px 0 0 0;
    color: #202020;
    font-size: 12px;
}
.xans-member-join .agreeArea .content p {
    padding: 0 0 17px;
}
.xans-member-join .agreeArea .content {
    overflow: auto;
    height: 110px;
    padding: 20px;
    border: 1px solid #d5d5d5;
    background: #fff;
}
.xans-member-join .agreeArea h3 {
    margin: 0 0 10px;
    font-size: 12px;
    color: #353535;
}
.xans-member-join .ec-base-box + .ec-base-box {
    margin-top: -1px;
}
.xans-member-join .ec-base-box + .ec-base-box {
    border: 0;
}
.ec-base-box.typeThinBg {
    border-width: 1px;
    border-color: #d7d5d5;
    background-color: #fff;
}
em {
    font-style: italic;
}
.ec-base-chk .checkbox {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: url(//img.echosting.cafe24.com/skin/base/common/bg_join_check.png) no-repeat 0 0;
}
.xans-member-join .ec-base-box .ec-base-chk input {
    width: 100%;
    height: 100%;
}
.ec-base-chk input {
    z-index: 1;
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    opacity: 0;
    cursor: pointer;
}
.ec-base-chk {
    display: inline-block;
    position: relative;
    margin: 0 8px 0 0;
    width: 22px;
    height: 22px;
    vertical-align: top;
    cursor: pointer;
}
.xans-member-join .ec-base-box.gStrong p {
    font-size: 14px;
    color: #353535;
    line-height: 22px;
}
.xans-member-join .ec-base-box.gStrong {
    position: relative;
    z-index: 2;
    border-top: 0;
}
.xans-member-join .ec-base-box.typeThinBg {
    border-left: 0;
    border-right: 0;
    padding: 10px 0;
    background: none;
}
.ec-base-box.typeThinBg {
    border-width: 1px;
    border-color: #d7d5d5;
    background-color: #fff;
}
.ec-base-box {
    padding: 20px;
    margin-left: auto;
    margin-right: auto;
    border: 1px solid #dfdfdf;
    color: #404040;
}
input[type="checkbox" i] {
    background-color: initial;
    cursor: default;
    -webkit-appearance: checkbox;
    box-sizing: border-box;
    margin: 3px 3px 3px 4px;
    padding: initial;
    border: initial;
}
.gIndent20 {
    margin-left: 20px;
}
.xans-member-join #birth_year, .xans-member-join #marry_year, .xans-member-join #partner_year {
    width: 60px;
    margin: 0 4px 0 0;
}
.xans-member-join #birth_month, .xans-member-join #marry_month, .xans-member-join #partner_month, .xans-member-join #birth_day, .xans-member-join #marry_day, .xans-member-join #partner_day {
    width: 30px;
    margin: 0 4px 0 0;
}
input[type=radio] + label, input[type=checkbox] + label {
    margin: 0 4px 0 2px;
}
label {
    cursor: default;
}
input[type=radio], input[type=checkbox] {
    width: 13px;
    height: 13px;
    border: 0;
}
.xans-member-join #email1 {
    margin-right: 4px;
}
.xans-member-join .verify #verify_sms_number {
    width: 100%;
    height: 100%;
    padding: 2px 38px 2px 4px;
    box-sizing: border-box;
}
.xans-member-join .verify .time {
    position: absolute;
    top: 2px;
    right: 6px;
    color: #f76560;
}
.xans-member-join .verify {
    position: relative;
    display: inline-block;
    width: 146px;
    height: 24px;
    vertical-align: top;
}
.txtInfo {
    color: #707070;
}
.gBlank5 {
    display: block;
    margin-top: 5px;
}
button {
    overflow: visible;
    padding: 0;
    margin: 0;
    border: 0;
    cursor: pointer;
}
button {
    -webkit-appearance: button;
    -webkit-writing-mode: horizontal-tb !important;
    text-rendering: auto;
    color: buttontext;
    letter-spacing: normal;
    word-spacing: normal;
    text-transform: none;
    text-indent: 0px;
    text-shadow: none;
    display: inline-block;
    text-align: center;
    align-items: flex-start;
    cursor: default;
    background-color: buttonface;
    box-sizing: border-box;
    margin: 0em;
    font: 400 13.3333px Arial;
    padding: 1px 6px;
    border-width: 2px;
    border-style: outset;
    border-color: buttonface;
    border-image: initial;
}
[class^='btnNormal'], a[class^='btnNormal'] {
    display: inline-block;
    box-sizing: border-box;
    padding: 2px 8px;
    border: 1px solid #d1d1d1;
    border-radius: 2px;
    font-family: "굴림",Gulim;
    font-size: 12px;
    line-height: 22px;
    font-weight: normal;
    text-decoration: none;
    vertical-align: middle;
    word-spacing: -0.5px;
    letter-spacing: 0;
    text-align: center;
    white-space: nowrap;
    color: #222;
    background-color: #fff;
}
.xans-member-join #phone2, .xans-member-join #phone3, .xans-member-join #mobile2, .xans-member-join #mobile3 {
    width: 50px;
    margin: 0 4px;
}
.xans-member-join #phone1, .xans-member-join #mobile1 {
    width: 60px;
    margin: 0 4px 0 0;
}
.xans-member-join #hint_answer {
    width: 500px;
}
/* .displaynone {
    display: none;
}
.displaynone {
    display: none !important;
} */
option {
    font-weight: normal;
    display: block;
    white-space: pre;
    min-height: 1.2em;
    padding: 0px 2px 1px;
}
select:not(:-internal-list-box) {
    overflow: visible !important;
}
select {
    height: 27px;
    border: 1px solid #d5d5d5;
}
select {
    -webkit-writing-mode: horizontal-tb !important;
    text-rendering: auto;
    color: -internal-light-dark-color(black, white);
    letter-spacing: normal;
    word-spacing: normal;
    text-transform: none;
    text-indent: 0px;
    text-shadow: none;
    display: inline-block;
    text-align: start;
    -webkit-appearance: menulist;
    box-sizing: border-box;
    align-items: center;
    white-space: pre;
    -webkit-rtl-ordering: logical;
    background-color: -internal-light-dark-color(white, black);
    cursor: default;
    margin: 0em;
    font: 400 13.3333px Arial;
    border-radius: 0px;
    border-width: 1px;
    border-style: solid;
    border-color: rgb(169, 169, 169);
    border-image: initial;
}
th {
    display: table-cell;
    vertical-align: inherit;
    font-weight: bold;
    text-align: -internal-center;
}
input[type="password" i] {
    -webkit-text-security: disc !important;
}
.xans-member-join .ec-base-tooltip.typeUpper .edge {
    left: 20%;
}
.ec-base-tooltip.typeUpper .edge {
    top: auto;
    bottom: -6px;
}
.ec-base-tooltip .edge {
    z-index: 20;
    position: absolute;
    left: 50%;
    top: -6px;
    display: block;
    margin: 0 0 0 -5px;
    width: 10px;
    height: 6px;
}
.ec-base-tooltip .btnClose {
    position: absolute;
    right: 14px;
    top: 14px;
}
.ec-base-tooltip .txtWarn {
    color: #f65b54;
}
.txtWarn {
    color: #f76560;
}
.gBlank10 {
    display: block;
    margin-top: 10px;
}
.xans-member-join .ec-base-tooltip.typeUpper {
    left: 25px;
    bottom: 28px;
    width: 390px;
}
.ec-base-tooltip.typeUpper {
    /* top: auto; */
    bottom: 34px;
}
.ec-base-tooltip {
    display: none;
    z-index: 2;
    position: absolute;
    top: 24px;
    padding: 15px;
    border: 1px solid #565960;
    background: #fff;
    -webkit-box-shadow: 3px 3px 3px 0px rgba(0,0,0,0.15);
    -moz-box-shadow: 3px 3px 3px 0px rgba(0,0,0,0.15);
    box-shadow: 3px 3px 3px 0px rgba(0,0,0,0.15);
}
.xans-member-join .eTooltip {
    position: relative;
    display: inline-block;
}
.ec-base-table td {
    padding: 11px 10px 10px;
    border-top: 1px solid #dfdfdf;
    color: #353535;
    vertical-align: middle;
    word-break: break-all;
    word-wrap: break-word;
}
input[type=text], input[type=password] {
    height: 22px;
    line-height: 22px;
    padding: 2px 4px;
    border: 1px solid #d5d5d5;
    color: #353535;
    font-size: 12px;
}
.xans-member-join .ec-base-table.typeWrite td {
    padding: 0px 10px 7px;
    vertical-align: top;
}
.ec-base-table.typeWrite td {
    padding: 8px 10px 7px;
}
.xans-member-join .ec-base-table td {
    border: 0!important;
}
.ec-base-table td {
    padding: 11px 10px 10px;
    border-top: 1px solid #dfdfdf;
    color: #353535;
    vertical-align: middle;
    word-break: break-all;
    word-wrap: break-word;
}
.ec-base-table.typeWrite img {
    max-width: 100% !important;
    height: auto !important;
}
.ec-base-table img {
    vertical-align: middle;
}
[class^='btn'] img {
    margin: -2px 1px 0;
    vertical-align: middle;
}
.xans-member-join .ec-base-table tbody th {
    background-color: #fff!important;
    border: 0!important;
    padding: 0px 0 35px 18px;
}
.ec-base-table th:first-child {
    border-left: 0;
}
.ec-base-table tbody th {
    padding: 11px 0 10px 18px;
    border: 1px solid #dfdfdf;
    border-bottom-width: 0;
    color: #353535;
    text-align: left;
    font-weight: normal;
    background-color: #fff;
}
.ec-base-table th {
    word-break: break-all;
    word-wrap: break-word;
}
th, td {
    border: 0;
    vertical-align: top;
}
tr {
    display: table-row;
    vertical-align: inherit;
    border-color: inherit;
}
tbody {
    display: table-row-group;
    vertical-align: middle;
    border-color: inherit;
}
caption {
    display: none;
}
.xans-member-join .ec-base-table table:before {
    background: none!important;
}
colgroup {
    display: table-column-group;
}
col {
    display: table-column;
}
.ec-base-table table:before {
    position: absolute;
    top: 0;
    left: 0;
    display: block;
    content: "";
    width: 100%;
    height: 1px;
    background: #d7d5d5;
}
.xans-member-join .ec-base-table table {
    border: 0!important;
}
/* .ec-base-table table {
    position: relative;
    margin: 10px 0 0;
    border: 1px solid #d7d5d5;
    border-top: 0;
    color: #fff;
    line-height: 1.5;
} */
table {
	margin : 30px;
    width: 100%;
    border: 0;
    border-spacing: 0;
    border-collapse: collapse;
}
table {
    width: 100%;
    border: 0;
    border-spacing: 0;
    border-collapse: collapse;
    font-size: 13px;
}
table[Attributes Style] {
    border-top-width: 1px;
    border-right-width: 1px;
    border-bottom-width: 1px;
    border-left-width: 1px;
}
table {
    display: table;
    border-collapse: separate;
    border-spacing: 2px;
    border-color: grey;
}
.xans-member-join .typeWrite {
/*     border-bottom: 1px solid #ddd; */
    padding-bottom: 10px;
}
.xans-member-join .required img {
    vertical-align: middle;
}
img, fieldset {
    border: none;
    vertical-align: top;
}
.xans-member-join .required {
    margin: -25px 0 10px;
    color: #353535;
    text-align: right;
}
p {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}
.xans-member-join > h3 {
	margin : 30px;
    padding: 0px 0 10px;
    font-size: 16px;
    color: #2e2e2e;
}
h1, h3 {
	text-align : center;
    margin: 0;
}
h3 {
    display: block;
    font-size: 1.17em;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
}
input, select, textarea {
    font-size: 100%;
    font-family: "돋움",Dotum;
    color: #353535;
    vertical-align: middle;
}
input[type="hidden" i] {
    display: none;
    -webkit-appearance: initial;
    background-color: initial;
    cursor: default;
    padding: initial;
    border: initial;
}
input {
    -webkit-writing-mode: horizontal-tb !important;
    text-rendering: auto;
    color: -internal-light-dark-color(black, white);
    letter-spacing: normal;
    word-spacing: normal;
    text-transform: none;
    text-indent: 0px;
    text-shadow: none;
    display: inline-block;
    text-align: start;
    -webkit-appearance: textfield;
    background-color: -internal-light-dark-color(white, black);
    -webkit-rtl-ordering: logical;
    cursor: text;
    margin: 0em;
    font: 400 13.3333px Arial;
    padding: 1px 0px;
    border-width: 2px;
    border-style: inset;
    border-color: initial;
    border-image: initial;
}
form {
    display: block;
    margin-top: 0em;
}
.titleArea h2 {
    color: #2e2e2e;
    font-size: 25px;
    *display: inline;
}
h2 {
	text-align : center;
    display: block;
    font-size: 1.5em;
    margin-block-start: 0.83em;
    margin-block-end: 0.83em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
}
.titleArea {
    width: 1050px;
    min-height: 30px;
    margin: 30px auto 20px;
}
.path li strong, .path li strong a {
    color: #2e2e2e;
}
strong {
    font-weight: bold;
}
a:-webkit-any-link {
/*     color: -webkit-link; */
    cursor: pointer;
    text-decoration: underline;
}
.path li a {
    color: #757575;
}
a {
    text-decoration: none;
    color: #000;
}
a {
    text-decoration: none!important;
}
.path li:first-child {
    background: none;
}
.path li {
    float: left;
    padding: 0 0 0 12px;
    margin: 0 0 0 8px;
    color: #757575;
    background: url(//img.echosting.cafe24.com/skin/base/layout/ico_path.gif) no-repeat 0 10px;
}
li {
    list-style: none;
}
li {
    display: list-item;
    text-align: -webkit-match-parent;
}
ol {
    display: block;
    list-style-type: decimal;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;
}
.path ol {
    float: right;
}
.path span {
    overflow: hidden;
    position: absolute;
    width: 0;
    height: 0;
    white-space: nowrap;
    text-indent: 100%;
}
.path {
    overflow: hidden;
    height: 30px;
    line-height: 30px;
    *zoom: 1;
}
#content {
    margin-top: 100px;
}
#content {
    width: 1050px;
    margin: 100px auto 100px;
}
element.style {
    margin-top: 210px;
}
#container:after {
    content: "";
    display: block;
    clear: both;
}
#container {
    margin: 0 auto;
    *zoom: 1;
    min-width: 1050px;
}
#wrap {
    position: relative;
    margin: 0 auto;
}
html, body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, pre, code, form, fieldset, legend, input, textarea, p, blockquote, th, td, img {
    margin: 0;
    padding: 0;
}
div {
    display: block;
}
body, code {
    font-family: 'Noto Sans KR',sans-serif;
    color: #353535;
    background: #fff;
    font-size: 13px;
}
html {
    color: -internal-root-color;
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

				<form id="form" name="form" action="../../Account_Controller.do?command=Acc_insert" method="post" target="_self">
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
											fw-filter="isFill&isFill&isMin[4]&isMax[16]&isIdentity"
											fw-label="아이디" fw-msg="" class="inputTypeText" placeholder=""
											value="" type="text" minlength="4" maxlength="16" /> 
											(영문소문자/숫자, 4~16자)
											<br/>
											<span id="idMsg" style="color:red; display : none"><strong> 중복된 아이디입니다. </strong> </span> 
											<span id="idMsg2" style="color:royalblue; display : none"> <strong> 사용이 가능한 아이디입니다. </strong> </span> 
											
											</td>
									</tr>
									<tr>
										<th scope="row">비밀번호 <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"
											alt="필수" /></th>
										<td>
											<div class="eTooltip">
												<input id="passwd" name="passwd"
													fw-filter="isFill&isMin[4]&isMax[16]" fw-label="비밀번호"
													fw-msg="" autocomplete="off" minlength="6" maxlength="16"
													0="disabled" value="" type="password" />
												<div class="ec-base-tooltip typeUpper">
													<div class="content">
														<strong class="txtWarn">※ 비밀번호 입력 조건</strong>
														<ul class="ec-base-help typeDash gBlank10 txtWarn">
															- 대소문자/숫자/특수문자 중 2가지 이상 조합, 6자~16자
															<br> - 입력 가능 특수문자
															<br> &nbsp;&nbsp;&nbsp; ~ ` ! @ # $ % ^ ( ) _ - = {
															} [ ] | ; : < > , . ? /
															<br> - 공백 입력 불가능
														</ul>
													</div>
													<a href="#none" class="btnClose"><img
														src="//img.echosting.cafe24.com/skin/base/common/btn_close_tip.gif"
														alt="닫기" /></a> <span class="edge"></span>
												</div>
											</div> (영문 대소문자/숫자/특수문자 중 2가지 이상 조합, 10자~16자)
										</td>
									</tr>
									<tr>
										<th scope="row">비밀번호 확인 <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"
											alt="필수" /></th>
										<td><input id="passwd_confirm"
											name="passwd_confirm" fw-filter="isFill&isMatch[passwd]"
											fw-label="비밀번호 확인" 
											autocomplete="off" maxlength="16" 0="disabled" value=""
											type="password" /> 
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
												name="name" fw-filter="isFill&isMax[30]" fw-label="이름"
												fw-msg="" class="ec-member-name" placeholder=""
												maxlength="30" value="" type="text" /></span>
									</tr>
									</select>
									</td>
									</tr>
									
									<tr class="">
										<th scope="row">생년월일 <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"
											class="" alt="필수" /></th>
										<td><input id="birth_year" name="birth_year"
											fw-filter="isFill" fw-label="생년월일" fw-msg=""
											class="inputTypeText" placeholder="" minlength="4" maxlength="4" value=""
											type="text" /> 년 <input id="birth_month" name="birth_month"
											fw-filter="isFill" fw-label="생년월일" fw-msg=""
											class="inputTypeText" placeholder="" maxlength="2" value=""
											type="text" /> 월 <input id="birth_day" name="birth_day"
											fw-filter="isFill" fw-label="생년월일" fw-msg=""
											class="inputTypeText" placeholder="" maxlength="2" value=""
											type="text" /> 일 <span class="gIndent20 "><input
												id="is_solar_calendar0" name="is_solar_calendar"
												fw-filter="isFill" fw-label="생년월일" fw-msg="" value="T"
												type="radio" checked="checked" /><label
												for="is_solar_calendar0">양력</label> <input
												id="is_solar_calendar1" name="is_solar_calendar"
												fw-filter="isFill" fw-label="생년월일" fw-msg="" value="F"
												type="radio" /><label for="is_solar_calendar1">음력</label></span></td>
									</tr>
									
									<!--@@@이메일 입력받아야 함@@@-->									
									
									<tr>
										<th scope="row">이메일 <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"
											alt="필수" /></th>
										<td><input id="email1" name="email"
											fw-filter="isFill&isEmail" fw-label="이메일" fw-alone="N"
											fw-msg="" value="" type="text" /> <span id="emailMsg"></span>
										</td>
									</tr>
									
									
									<!-- @@@@@@번호 입력받아야 함@@@@@@ -->
									 <tr class="">
										<th scope="row">휴대전화 <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"
											class="" alt="필수" /></th>
										<td>
										<select id="mobile1" name="mobile1"
											fw-filter="isNumber&isFill" fw-label="휴대전화" fw-alone="N"
											fw-msg="" style="width:45px;">
												<option value="010">010</option>
												<option value="011">011</option>
												<option value="016">016</option>
												<option value="017">017</option>
												<option value="018">018</option>
												<option value="019">019</option>
										</select>
										<!-- <input id="mobile1" name="mobile1" maxlength="3"
											fw-filter="isNumber&isFill" fw-label="휴대전화" fw-alone="N"
											fw-msg="" value="" type="text" style="width:36px;"/> -->
										-<input id="mobile2" name="mobile2" maxlength="4"
											fw-filter="isNumber&isFill" fw-label="휴대전화" fw-alone="N"
											fw-msg="" value="" type="text" style="width:40px;" />
										-<input id="mobile3"
											name="mobile3" maxlength="4" fw-filter="isNumber&isFill"
											fw-label="휴대전화" fw-alone="N" fw-msg="" value="" type="text" style="width:40px;" />
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
										<input type="text" id="zipNo" name="zipNo" fw-filter="isLengthRange[1][14]" fw-label="우편번호1" fw-msg="" class="inputTypeText" placeholder="우편번호" readonly="readonly"
											maxlength="14" value="" type="text" /> 
										<a onclick="goPopup();" class="btnNormal" id="postBtn">주소검색</a><br/> 
										<input type="text" id="roadAddrPart1" name="roadAddrPart1" class="inputTypeText" placeholder="도로명주소" readonly="readonly" value="" /> 도로명주소
										<br/> 
										<input type="text" id="addrDetail" name="addrDetail" placeholder="상세주소" value="" /> 상세주소
											</td>
									</tr>
								</tbody>
							</table>
						</div>
						

						<div class="ec-base-button">
							<input type="submit" id="join" name="join" value="회원가입" class="btnSubmitFix sizeM">
							<a href="../index.jsp" class="btnEmFix sizeM">취소</a> 
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