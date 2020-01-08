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
						
<!-- 						@@@이용약관 동의@@@
						<br><br>
						<h3>전체 동의</h3>
						<div class="ec-base-box typeThinBg gStrong">
							<p>
								<span class="ec-base-chk"><input type="checkbox"
									id="sAgreeAllChecked"><em class="checkbox"></em></span><label
									for="sAgreeAllChecked"><strong>이용약관 및 개인정보수집 및
										이용, 쇼핑정보 수신(선택)에 모두 동의합니다.</strong></label>
							</p>
						</div>
						<div class="ec-base-box typeThinBg agreeArea">
							<h3>[필수] 이용약관 동의</h3>
							<div class="content">
								<p>
									제1조(목적)<br />이 약관은 (주)지에스넷비전(전자상거래 사업자)이 운영하는 RECORE 사이버 몰(이하
									“몰”이라 한다)에서 제공하는 인터넷 관련 서비스(이하 “서비스”라 한다)를 이용함에 있어 사이버 몰과 이용자의
									권리.의무 및 책임사항을 규정함을 목적으로 합니다.<br />※「PC통신, 무선 등을 이용하는 전자상거래에
									대해서도 그 성질에 반하지 않는 한 이 약관을 준용합니다.」
								</p>
								<p>
									제2조(정의)<br />① “몰”이란 (주)지에스넷비전이 재화 또는 용역(이하 “재화 등”이라 함)을 이용자에게
									제공하기 위하여 컴퓨터 등 정보통신설비를 이용하여 재화 등을 거래할 수 있도록 설정한 가상의 영업장을 말하며,
									아울러 사이버몰을 운영하는 사업자의 의미로도 사용합니다.<br />② “이용자”란 “몰”에 접속하여 이 약관에
									따라 “몰”이 제공하는 서비스를 받는 회원 및 비회원을 말합니다.<br />③ ‘회원’이라 함은 “몰”에
									회원등록을 한 자로서, 계속적으로 “몰”이 제공하는 서비스를 이용할 수 있는 자를 말합니다.<br />④
									‘비회원’이라 함은 회원에 가입하지 않고 “몰”이 제공하는 서비스를 이용하는 자를 말합니다.
								</p>
								<p>
									제3조 (약관 등의 명시와 설명 및 개정) <br />① “몰”은 이 약관의 내용과 상호 및 대표자 성명,
									영업소 소재지 주소(소비자의 불만을 처리할 수 있는 곳의 주소를 포함), 전화번호, 전자우편주소, 사업자등록번호,
									통신판매업 신고번호, 개인정보보호 책임자등을 이용자가 쉽게 알 수 있도록 RECORE 사이버몰의 초기
									서비스화면(전면)에 게시합니다. 다만, 약관의 내용은 이용자가 연결화면을 통하여 볼 수 있도록 할 수 있습니다.<br />②
									“몰은 이용자가 약관에 동의하기에 앞서 약관에 정하여져 있는 내용 중 청약철회, 배송책임, 환불조건 등과 같은
									중요한 내용을 이용자가 이해할 수 있도록 별도의 연결화면 또는 팝업화면 등을 제공하여 이용자의 확인을 구하여야
									합니다.<br />③ “몰”은 「전자상거래 등에서의 소비자보호에 관한 법률」, 「약관의 규제에 관한 법률」,
									「전자문서 및 전자거래기본법」, 「전자금융거래법」, 「전자서명법」, 「정보통신망 이용촉진 및 정보보호 등에 관한
									법률」, 「방문판매 등에 관한 법률」, 「소비자기본법」 등 관련 법을 위배하지 않는 범위에서 이 약관을 개정할 수
									있습니다.<br />④ “몰”이 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 몰의
									초기화면에 그 적용일자 7일 이전부터 적용일자 전일까지 공지합니다. 다만, 이용자에게 불리하게 약관내용을 변경하는
									경우에는 최소한 30일 이상의 사전 유예기간을 두고 공지합니다. 이 경우 “몰“은 개정 전 내용과 개정 후 내용을
									명확하게 비교하여 이용자가 알기 쉽도록 표시합니다. <br />⑤ “몰”이 약관을 개정할 경우에는 그 개정약관은
									그 적용일자 이후에 체결되는 계약에만 적용되고 그 이전에 이미 체결된 계약에 대해서는 개정 전의 약관조항이 그대로
									적용됩니다. 다만 이미 계약을 체결한 이용자가 개정약관 조항의 적용을 받기를 원하는 뜻을 제3항에 의한 개정약관의
									공지기간 내에 “몰”에 송신하여 “몰”의 동의를 받은 경우에는 개정약관 조항이 적용됩니다.<br />⑥ 이
									약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 전자상거래 등에서의 소비자보호에 관한 법률, 약관의 규제
									등에 관한 법률, 공정거래위원회가 정하는 전자상거래 등에서의 소비자 보호지침 및 관계법령 또는 상관례에 따릅니다.
								</p>
								<p>
									제4조(서비스의 제공 및 변경) <br />① “몰”은 다음과 같은 업무를 수행합니다.<br />&nbsp;
									1. 재화 또는 용역에 대한 정보 제공 및 구매계약의 체결<br />&nbsp; 2. 구매계약이 체결된 재화
									또는 용역의 배송<br />&nbsp; 3. 기타 “몰”이 정하는 업무<br />② “몰”은 재화 또는 용역의
									품절 또는 기술적 사양의 변경 등의 경우에는 장차 체결되는 계약에 의해 제공할 재화 또는 용역의 내용을 변경할 수
									있습니다. 이 경우에는 변경된 재화 또는 용역의 내용 및 제공일자를 명시하여 현재의 재화 또는 용역의 내용을
									게시한 곳에 즉시 공지합니다.<br />③ “몰”이 제공하기로 이용자와 계약을 체결한 서비스의 내용을 재화등의
									품절 또는 기술적 사양의 변경 등의 사유로 변경할 경우에는 그 사유를 이용자에게 통지 가능한 주소로 즉시
									통지합니다.<br />④ 전항의 경우 “몰”은 이로 인하여 이용자가 입은 손해를 배상합니다. 다만, “몰”이
									고의 또는 과실이 없음을 입증하는 경우에는 그러하지 아니합니다.
								</p>
								<p>
									제5조(서비스의 중단) <br />① “몰”은 컴퓨터 등 정보통신설비의 보수점검, 교체 및 고장, 통신의 두절
									등의 사유가 발생한 경우에는 서비스의 제공을 일시적으로 중단할 수 있습니다.<br />② “몰”은 제1항의
									사유로 서비스의 제공이 일시적으로 중단됨으로 인하여 이용자 또는 제3자가 입은 손해에 대하여 배상합니다. 단,
									“몰”이 고의 또는 과실이 없음을 입증하는 경우에는 그러하지 아니합니다.<br />③ 사업종목의 전환, 사업의
									포기, 업체 간의 통합 등의 이유로 서비스를 제공할 수 없게 되는 경우에는 “몰”은 제8조에 정한 방법으로
									이용자에게 통지하고 당초 “몰”에서 제시한 조건에 따라 소비자에게 보상합니다. 다만, “몰”이 보상기준 등을
									고지하지 아니한 경우에는 이용자들의 마일리지 또는 적립금 등을 “몰”에서 통용되는 통화가치에 상응하는 현물 또는
									현금으로 이용자에게 지급합니다.
								</p>
								<p>
									제6조(회원가입) <br />① 이용자는 “몰”이 정한 가입 양식에 따라 회원정보를 기입한 후 이 약관에
									동의한다는 의사표시를 함으로서 회원가입을 신청합니다.<br />② “몰”은 제1항과 같이 회원으로 가입할 것을
									신청한 이용자 중 다음 각 호에 해당하지 않는 한 회원으로 등록합니다.<br />&nbsp; 1. 가입신청자가
									이 약관 제7조 제3항에 의하여 이전에 회원자격을 상실한 적이 있는 경우, 다만 제7조 제3항에 의한 회원자격
									상실 후 3년이 경과한 자로서 “몰”의 회원재가입 승낙을 얻은 경우에는 예외로 한다.<br />&nbsp; 2.
									등록 내용에 허위, 기재누락, 오기가 있는 경우<br />&nbsp; 3. 기타 회원으로 등록하는 것이 “몰”의
									기술상 현저히 지장이 있다고 판단되는 경우<br />③ 회원가입계약의 성립 시기는 “몰”의 승낙이 회원에게
									도달한 시점으로 합니다.<br />④ 회원은 회원가입 시 등록한 사항에 변경이 있는 경우, 상당한 기간 이내에
									“몰”에 대하여 회원정보 수정 등의 방법으로 그 변경사항을 알려야 합니다.
								</p>
								<p>
									제7조(회원 탈퇴 및 자격 상실 등) <br />① 회원은 “몰”에 언제든지 탈퇴를 요청할 수 있으며 “몰”은
									즉시 회원탈퇴를 처리합니다.<br />② 회원이 다음 각 호의 사유에 해당하는 경우, “몰”은 회원자격을 제한
									및 정지시킬 수 있습니다.<br />&nbsp; 1. 가입 신청 시에 허위 내용을 등록한 경우<br />&nbsp;
									2. “몰”을 이용하여 구입한 재화 등의 대금, 기타 “몰”이용에 관련하여 회원이 부담하는 채무를 기일에 지급하지
									않는 경우<br />&nbsp; 3. 다른 사람의 “몰” 이용을 방해하거나 그 정보를 도용하는 등 전자상거래
									질서를 위협하는 경우<br />&nbsp; 4. “몰”을 이용하여 법령 또는 이 약관이 금지하거나 공서양속에
									반하는 행위를 하는 경우<br />③ “몰”이 회원 자격을 제한, 정지 시킨 후, 동일한 행위가 2회 이상
									반복되거나 30일 이내에 그 사유가 시정되지 아니하는 경우 “몰”은 회원자격을 상실시킬 수 있습니다.<br />④
									“몰”이 회원자격을 상실시키는 경우에는 회원등록을 말소합니다. 이 경우 회원에게 이를 통지하고, 회원등록 말소
									전에 최소한 30일 이상의 기간을 정하여 소명할 기회를 부여합니다.
								</p>
								<p>
									제8조(회원에 대한 통지)<br />① “몰”이 회원에 대한 통지를 하는 경우, 회원이 “몰”과 미리 약정하여
									지정한 전자우편 주소로 할 수 있습니다.<br />② “몰”은 불특정다수 회원에 대한 통지의 경우 1주일 이상
									“몰” 게시판에 게시함으로서 개별 통지에 갈음할 수 있습니다. 다만, 회원 본인의 거래와 관련하여 중대한 영향을
									미치는 사항에 대하여는 개별통지를 합니다.
								</p>
								<p>
									제9조(구매신청) <br />① “몰”이용자는 “몰”상에서 다음 또는 이와 유사한 방법에 의하여 구매를
									신청하며, “몰”은 이용자가 구매신청을 함에 있어서 다음의 각 내용을 알기 쉽게 제공하여야 합니다.<br />&nbsp;
									1. 재화 등의 검색 및 선택<br />&nbsp; 2. 받는 사람의 성명, 주소, 전화번호, 전자우편주소(또는
									이동전화번호) 등의 입력<br />&nbsp; 3. 약관내용, 청약철회권이 제한되는 서비스, 배송료.설치비 등의
									비용부담과 관련한 내용에 대한 확인<br />&nbsp; 4. 이 약관에 동의하고 위 3.호의 사항을 확인하거나
									거부하는 표시(예, 마우스 클릭)<br />&nbsp; 5. 재화등의 구매신청 및 이에 관한 확인 또는 “몰”의
									확인에 대한 동의<br />&nbsp; 6. 결제방법의 선택<br />② “몰”이 제3자에게 구매자 개인정보를
									제공·위탁할 필요가 있는 경우 실제 구매신청 시 구매자의 동의를 받아야 하며, 회원가입 시 미리 포괄적으로 동의를
									받지 않습니다. 이 때 “몰”은 제공되는 개인정보 항목, 제공받는 자, 제공받는 자의 개인정보 이용 목적 및
									보유·이용 기간 등을 구매자에게 명시하여야 합니다. 다만 「정보통신망이용촉진 및 정보보호 등에 관한 법률」
									제25조 제1항에 의한 개인정보 처리위탁의 경우 등 관련 법령에 달리 정함이 있는 경우에는 그에 따릅니다.
								</p>
								<p>
									제10조 (계약의 성립)<br />① “몰”은 제9조와 같은 구매신청에 대하여 다음 각 호에 해당하면 승낙하지
									않을 수 있습니다. 다만, 미성년자와 계약을 체결하는 경우에는 법정대리인의 동의를 얻지 못하면 미성년자 본인 또는
									법정대리인이 계약을 취소할 수 있다는 내용을 고지하여야 합니다.<br />&nbsp; 1. 신청 내용에 허위,
									기재누락, 오기가 있는 경우<br />&nbsp; 2. 미성년자가 담배, 주류 등 청소년보호법에서 금지하는 재화
									및 용역을 구매하는 경우<br />&nbsp; 3. 기타 구매신청에 승낙하는 것이 “몰” 기술상 현저히 지장이
									있다고 판단하는 경우<br />② “몰”의 승낙이 제12조제1항의 수신확인통지형태로 이용자에게 도달한 시점에
									계약이 성립한 것으로 봅니다.<br />③ “몰”의 승낙의 의사표시에는 이용자의 구매 신청에 대한 확인 및
									판매가능 여부, 구매신청의 정정 취소 등에 관한 정보 등을 포함하여야 합니다.
								</p>
								<p>
									제11조(지급방법)<br />“몰”에서 구매한 재화 또는 용역에 대한 대금지급방법은 다음 각 호의 방법중 가용한
									방법으로 할 수 있습니다. 단, “몰”은 이용자의 지급방법에 대하여 재화 등의 대금에 어떠한 명목의 수수료도
									추가하여 징수할 수 없습니다.<br />1. 폰뱅킹, 인터넷뱅킹, 메일 뱅킹 등의 각종 계좌이체 <br />2.
									선불카드, 직불카드, 신용카드 등의 각종 카드 결제<br />3. 온라인무통장입금<br />4. 전자화폐에
									의한 결제<br />5. 수령 시 대금지급<br />6. 마일리지 등 “몰”이 지급한 포인트에 의한 결제<br />7.
									“몰”과 계약을 맺었거나 “몰”이 인정한 상품권에 의한 결제 <br />8. 기타 전자적 지급 방법에 의한 대금
									지급 등
								</p>
								<p>
									제12조(수신확인통지.구매신청 변경 및 취소)<br />① “몰”은 이용자의 구매신청이 있는 경우 이용자에게
									수신확인통지를 합니다.<br />② 수신확인통지를 받은 이용자는 의사표시의 불일치 등이 있는 경우에는
									수신확인통지를 받은 후 즉시 구매신청 변경 및 취소를 요청할 수 있고 “몰”은 배송 전에 이용자의 요청이 있는
									경우에는 지체 없이 그 요청에 따라 처리하여야 합니다. 다만 이미 대금을 지불한 경우에는 제15조의 청약철회 등에
									관한 규정에 따릅니다.
								</p>
								<p>
									제13조(재화 등의 공급)<br />① “몰”은 이용자와 재화 등의 공급시기에 관하여 별도의 약정이 없는 이상,
									이용자가 청약을 한 날부터 7일 이내에 재화 등을 배송할 수 있도록 주문제작, 포장 등 기타의 필요한 조치를
									취합니다. 다만, “몰”이 이미 재화 등의 대금의 전부 또는 일부를 받은 경우에는 대금의 전부 또는 일부를 받은
									날부터 3영업일 이내에 조치를 취합니다. 이때 “몰”은 이용자가 재화 등의 공급 절차 및 진행 사항을 확인할 수
									있도록 적절한 조치를 합니다.<br />② “몰”은 이용자가 구매한 재화에 대해 배송수단, 수단별 배송비용
									부담자, 수단별 배송기간 등을 명시합니다. 만약 “몰”이 약정 배송기간을 초과한 경우에는 그로 인한 이용자의
									손해를 배상하여야 합니다. 다만 “몰”이 고의.과실이 없음을 입증한 경우에는 그러하지 아니합니다.
								</p>
								<p>
									제14조(환급)<br />“몰”은 이용자가 구매신청한 재화 등이 품절 등의 사유로 인도 또는 제공을 할 수 없을
									때에는 지체 없이 그 사유를 이용자에게 통지하고 사전에 재화 등의 대금을 받은 경우에는 대금을 받은 날부터
									3영업일 이내에 환급하거나 환급에 필요한 조치를 취합니다.
								</p>
								<p>
									제15조(청약철회 등)<br />① “몰”과 재화등의 구매에 관한 계약을 체결한 이용자는 「전자상거래 등에서의
									소비자보호에 관한 법률」 제13조 제2항에 따른 계약내용에 관한 서면을 받은 날(그 서면을 받은 때보다 재화 등의
									공급이 늦게 이루어진 경우에는 재화 등을 공급받거나 재화 등의 공급이 시작된 날을 말합니다)부터 7일 이내에는
									청약의 철회를 할 수 있습니다. 다만, 청약철회에 관하여 「전자상거래 등에서의 소비자보호에 관한 법률」에 달리
									정함이 있는 경우에는 동 법 규정에 따릅니다. <br />② 이용자는 재화 등을 배송 받은 경우 다음 각 호의
									1에 해당하는 경우에는 반품 및 교환을 할 수 없습니다.<br />&nbsp; 1. 이용자에게 책임 있는 사유로
									재화 등이 멸실 또는 훼손된 경우(다만, 재화 등의 내용을 확인하기 위하여 포장 등을 훼손한 경우에는 청약철회를
									할 수 있습니다)<br />&nbsp; 2. 이용자의 사용 또는 일부 소비에 의하여 재화 등의 가치가 현저히
									감소한 경우<br />&nbsp; 3. 시간의 경과에 의하여 재판매가 곤란할 정도로 재화등의 가치가 현저히
									감소한 경우<br />&nbsp; 4. 같은 성능을 지닌 재화 등으로 복제가 가능한 경우 그 원본인 재화 등의
									포장을 훼손한 경우<br />③ 제2항제2호 내지 제4호의 경우에 “몰”이 사전에 청약철회 등이 제한되는 사실을
									소비자가 쉽게 알 수 있는 곳에 명기하거나 시용상품을 제공하는 등의 조치를 하지 않았다면 이용자의 청약철회 등이
									제한되지 않습니다.<br />④ 이용자는 제1항 및 제2항의 규정에 불구하고 재화 등의 내용이 표시·광고 내용과
									다르거나 계약내용과 다르게 이행된 때에는 당해 재화 등을 공급받은 날부터 3월 이내, 그 사실을 안 날 또는 알
									수 있었던 날부터 30일 이내에 청약철회 등을 할 수 있습니다.
								</p>
								<p>
									제16조(청약철회 등의 효과)<br />① “몰”은 이용자로부터 재화 등을 반환받은 경우 3영업일 이내에 이미
									지급받은 재화 등의 대금을 환급합니다. 이 경우 “몰”이 이용자에게 재화등의 환급을 지연한때에는 그 지연기간에
									대하여 「전자상거래 등에서의 소비자보호에 관한 법률 시행령」제21조의2에서 정하는 지연이자율을 곱하여 산정한
									지연이자를 지급합니다.<br />② “몰”은 위 대금을 환급함에 있어서 이용자가 신용카드 또는 전자화폐 등의
									결제수단으로 재화 등의 대금을 지급한 때에는 지체 없이 당해 결제수단을 제공한 사업자로 하여금 재화 등의 대금의
									청구를 정지 또는 취소하도록 요청합니다.<br />③ 청약철회 등의 경우 공급받은 재화 등의 반환에 필요한
									비용은 이용자가 부담합니다. “몰”은 이용자에게 청약철회 등을 이유로 위약금 또는 손해배상을 청구하지 않습니다.
									다만 재화 등의 내용이 표시·광고 내용과 다르거나 계약내용과 다르게 이행되어 청약철회 등을 하는 경우 재화 등의
									반환에 필요한 비용은 “몰”이 부담합니다.<br />④ 이용자가 재화 등을 제공받을 때 발송비를 부담한 경우에
									“몰”은 청약철회 시 그 비용을 누가 부담하는지를 이용자가 알기 쉽도록 명확하게 표시합니다.
								</p>
								<p>
									제17조(개인정보보호)<br />① “몰”은 이용자의 개인정보 수집시 서비스제공을 위하여 필요한 범위에서
									최소한의 개인정보를 수집합니다. <br />② “몰”은 회원가입시 구매계약이행에 필요한 정보를 미리 수집하지
									않습니다. 다만, 관련 법령상 의무이행을 위하여 구매계약 이전에 본인확인이 필요한 경우로서 최소한의 특정
									개인정보를 수집하는 경우에는 그러하지 아니합니다.<br />③ “몰”은 이용자의 개인정보를 수집·이용하는 때에는
									당해 이용자에게 그 목적을 고지하고 동의를 받습니다. <br />④ “몰”은 수집된 개인정보를 목적외의 용도로
									이용할 수 없으며, 새로운 이용목적이 발생한 경우 또는 제3자에게 제공하는 경우에는 이용·제공단계에서 당해
									이용자에게 그 목적을 고지하고 동의를 받습니다. 다만, 관련 법령에 달리 정함이 있는 경우에는 예외로 합니다.<br />⑤
									“몰”이 제2항과 제3항에 의해 이용자의 동의를 받아야 하는 경우에는 개인정보보호 책임자의 신원(소속, 성명 및
									전화번호, 기타 연락처), 정보의 수집목적 및 이용목적, 제3자에 대한 정보제공 관련사항(제공받은자, 제공목적 및
									제공할 정보의 내용) 등 「정보통신망 이용촉진 및 정보보호 등에 관한 법률」 제22조제2항이 규정한 사항을 미리
									명시하거나 고지해야 하며 이용자는 언제든지 이 동의를 철회할 수 있습니다.<br />⑥ 이용자는 언제든지
									“몰”이 가지고 있는 자신의 개인정보에 대해 열람 및 오류정정을 요구할 수 있으며 “몰”은 이에 대해 지체 없이
									필요한 조치를 취할 의무를 집니다. 이용자가 오류의 정정을 요구한 경우에는 “몰”은 그 오류를 정정할 때까지 당해
									개인정보를 이용하지 않습니다.<br />⑦ “몰”은 개인정보 보호를 위하여 이용자의 개인정보를 처리하는 자를
									최소한으로 제한하여야 하며 신용카드, 은행계좌 등을 포함한 이용자의 개인정보의 분실, 도난, 유출, 동의 없는
									제3자 제공, 변조 등으로 인한 이용자의 손해에 대하여 모든 책임을 집니다.<br />⑧ “몰” 또는 그로부터
									개인정보를 제공받은 제3자는 개인정보의 수집목적 또는 제공받은 목적을 달성한 때에는 당해 개인정보를 지체 없이
									파기합니다.<br />⑨ “몰”은 개인정보의 수집·이용·제공에 관한 동의란을 미리 선택한 것으로 설정해두지
									않습니다. 또한 개인정보의 수집·이용·제공에 관한 이용자의 동의거절시 제한되는 서비스를 구체적으로 명시하고,
									필수수집항목이 아닌 개인정보의 수집·이용·제공에 관한 이용자의 동의 거절을 이유로 회원가입 등 서비스 제공을
									제한하거나 거절하지 않습니다.
								</p>
								<p>
									제18조(“몰“의 의무)<br />① “몰”은 법령과 이 약관이 금지하거나 공서양속에 반하는 행위를 하지 않으며
									이 약관이 정하는 바에 따라 지속적이고, 안정적으로 재화.용역을 제공하는데 최선을 다하여야 합니다.<br />②
									“몰”은 이용자가 안전하게 인터넷 서비스를 이용할 수 있도록 이용자의 개인정보(신용정보 포함)보호를 위한 보안
									시스템을 갖추어야 합니다.<br />③ “몰”이 상품이나 용역에 대하여 「표시.광고의 공정화에 관한 법률」
									제3조 소정의 부당한 표시.광고행위를 함으로써 이용자가 손해를 입은 때에는 이를 배상할 책임을 집니다.<br />④
									“몰”은 이용자가 원하지 않는 영리목적의 광고성 전자우편을 발송하지 않습니다.
								</p>
								<p>
									제19조(회원의 ID 및 비밀번호에 대한 의무)<br />① 제17조의 경우를 제외한 ID와 비밀번호에 관한
									관리책임은 회원에게 있습니다.<br />② 회원은 자신의 ID 및 비밀번호를 제3자에게 이용하게 해서는
									안됩니다.<br />③ 회원이 자신의 ID 및 비밀번호를 도난당하거나 제3자가 사용하고 있음을 인지한 경우에는
									바로 “몰”에 통보하고 “몰”의 안내가 있는 경우에는 그에 따라야 합니다.
								</p>
								<p>
									제20조(이용자의 의무)<br />이용자는 다음 행위를 하여서는 안 됩니다.<br />1. 신청 또는 변경시
									허위 내용의 등록<br />2. 타인의 정보 도용<br />3. “몰”에 게시된 정보의 변경<br />4.
									“몰”이 정한 정보 이외의 정보(컴퓨터 프로그램 등) 등의 송신 또는 게시<br />5. “몰” 기타 제3자의
									저작권 등 지적재산권에 대한 침해<br />6. “몰” 기타 제3자의 명예를 손상시키거나 업무를 방해하는 행위<br />7.
									외설 또는 폭력적인 메시지, 화상, 음성, 기타 공서양속에 반하는 정보를 몰에 공개 또는 게시하는 행위
								</p>
								<p>
									제21조(연결“몰”과 피연결“몰” 간의 관계)<br />① 상위 “몰”과 하위 “몰”이 하이퍼링크(예:
									하이퍼링크의 대상에는 문자, 그림 및 동화상 등이 포함됨)방식 등으로 연결된 경우, 전자를 연결 “몰”(웹
									사이트)이라고 하고 후자를 피연결 “몰”(웹사이트)이라고 합니다.<br />② 연결“몰”은 피연결“몰”이
									독자적으로 제공하는 재화 등에 의하여 이용자와 행하는 거래에 대해서 보증 책임을 지지 않는다는 뜻을 연결“몰”의
									초기화면 또는 연결되는 시점의 팝업화면으로 명시한 경우에는 그 거래에 대한 보증 책임을 지지 않습니다.
								</p>
								<p>
									제22조(저작권의 귀속 및 이용제한)<br />① “몰“이 작성한 저작물에 대한 저작권 기타 지적재산권은
									”몰“에 귀속합니다.<br />② 이용자는 “몰”을 이용함으로써 얻은 정보 중 “몰”에게 지적재산권이 귀속된
									정보를 “몰”의 사전 승낙 없이 복제, 송신, 출판, 배포, 방송 기타 방법에 의하여 영리목적으로 이용하거나
									제3자에게 이용하게 하여서는 안됩니다.<br />③ “몰”은 약정에 따라 이용자에게 귀속된 저작권을 사용하는
									경우 당해 이용자에게 통보하여야 합니다.
								</p>
								<p>
									제23조(분쟁해결)<br />① “몰”은 이용자가 제기하는 정당한 의견이나 불만을 반영하고 그 피해를
									보상처리하기 위하여 피해보상처리기구를 설치.운영합니다.<br />② “몰”은 이용자로부터 제출되는 불만사항 및
									의견은 우선적으로 그 사항을 처리합니다. 다만, 신속한 처리가 곤란한 경우에는 이용자에게 그 사유와 처리일정을
									즉시 통보해 드립니다.<br />③ “몰”과 이용자 간에 발생한 전자상거래 분쟁과 관련하여 이용자의
									피해구제신청이 있는 경우에는 공정거래위원회 또는 시·도지사가 의뢰하는 분쟁조정기관의 조정에 따를 수 있습니다.
								</p>
								<p>
									제24조(재판권 및 준거법)<br />① “몰”과 이용자 간에 발생한 전자상거래 분쟁에 관한 소송은 제소 당시의
									이용자의 주소에 의하고, 주소가 없는 경우에는 거소를 관할하는 지방법원의 전속관할로 합니다. 다만, 제소 당시
									이용자의 주소 또는 거소가 분명하지 않거나 외국 거주자의 경우에는 민사소송법상의 관할법원에 제기합니다.<br />②
									“몰”과 이용자 간에 제기된 전자상거래 소송에는 한국법을 적용합니다.
								</p>
								부 칙(시행일) 이 약관은 2019년 11월 1일부터 시행합니다.
							</div>
							<p class="check">
								<span>이용약관에 동의하십니까?</span> <input id="agree_service_check0"
									name="agree_service_check[]" fw-filter="/1/" fw-label="이용약관 동의"
									fw-msg="이용약관에 동의 하세요" value="1" type="checkbox" /><label
									for="agree_service_check0">동의함</label>
							</p>
						</div>
						<div class="ec-base-box typeThinBg agreeArea">
							<h3>[필수] 개인정보 수집 및 이용 동의</h3>
							<div class="content">
								<p>
									<span style="font-size: 10.0pt">■ 수집 및 이용하는 개인정보 항목<span
										lang="EN-US"></span></span>
								</p>
								<p>
									<span style="font-size: 10.0pt">가<span lang="EN-US">.
									</span>수집하는 개인정보의 항목<span lang="EN-US"><br /> o </span>회사는 회원가입<span
										lang="EN-US">, </span>상담<span lang="EN-US">, </span>서비스 신청 등을
										위해 아래와 같은 개인정보를 수집하고 있습니다<span lang="EN-US">.<br /> -
									</span>회원가입시<span lang="EN-US"> : </span>이름<span lang="EN-US">
											, </span>로그인<span lang="EN-US">ID , </span>비밀번호<span lang="EN-US">
											, </span>휴대전화번호<span lang="EN-US"> , </span>이메일<span lang="EN-US">,
									</span>생년월일<span lang="EN-US"><br /> - </span>서비스 신청시<span
										lang="EN-US"> : </span>주소<span lang="EN-US">, </span>결제 정보<span
										lang="EN-US"></span></span>
								</p>
								<p>
									<span lang="EN-US" style="font-size: 10.0pt">o </span><span
										style="font-size: 10.0pt">서비스 이용 과정이나 사업 처리 과정에서
										서비스이용기록<span lang="EN-US">, </span>접속로그<span lang="EN-US">,
									</span>쿠키<span lang="EN-US">, </span>접속<span lang="EN-US"> IP,
									</span>결제 기록<span lang="EN-US">, </span>불량이용 기록이 생성되어 수집될 수 있습니다<span
										lang="EN-US">.</span>
									</span>
								</p>
								<p>
									<span style="font-size: 10.0pt">나<span lang="EN-US">.
									</span>수집방법<span lang="EN-US"><br /> - </span>홈페이지<span lang="EN-US">,
									</span>서면양식<span lang="EN-US">, </span>게시판<span lang="EN-US">,
									</span>이메일<span lang="EN-US">, </span>이벤트 응모<span lang="EN-US">,
									</span>배송요청<span lang="EN-US">, </span>전화<span lang="EN-US">, </span>팩스<span
										lang="EN-US">, </span>생성 정보 수집 툴을 통한 수집<span lang="EN-US"></span></span>
								</p>
								<p>
									<span style="font-size: 10.0pt">■ 개인정보의 수집 및 이용목적<span
										lang="EN-US"><br /> </span>회사는 수집한 개인정보를 다음의 목적을 위해 활용합니다<span
										lang="EN-US">.<br /> o
									</span>서비스 제공에 관한 계약 이행 및 서비스 제공에 따른 요금정산<span lang="EN-US"><br />
									</span>콘텐츠 제공<span lang="EN-US"> , </span>구매 및 요금 결제<span lang="EN-US">
											, </span>물품배송 또는 청구지 등 발송<span lang="EN-US"> , </span>금융거래 본인 인증 및
										금융 서비스<span lang="EN-US"><br /> o </span>회원 관리<span
										lang="EN-US"><br /> </span>회원제 서비스 이용에 따른 본인확인<span
										lang="EN-US"> , </span>개인 식별<span lang="EN-US"> , </span>불량회원의
										부정 이용 방지와 비인가 사용 방지<span lang="EN-US"> , </span>가입 의사 확인<span
										lang="EN-US"> , </span>연령확인<span lang="EN-US">, </span>불만처리 등
										민원처리<span lang="EN-US"> , </span>고지사항 전달<span lang="EN-US"><br />
											o </span>마케팅 및 광고에 활용<span lang="EN-US"><br /> </span></span><u style=""><span
										class="msoIns" style=""><ins style="">
												<span style="font-size: 12pt;">서비스 안내 등을 위한 의사소통 전달</span><span
													lang="EN-US" style=""><span style="font-size: 12pt;">,
												</span></span><span style="font-size: 12pt;">이벤트 실시 및 경품 제공 등 광고성
													정보 전달</span>
											</ins></span><span lang="EN-US" style=""><span
											style="font-size: 12pt;">&nbsp;, </span></span><span
										style="font-size: 12pt;">접속 빈도 파악 또는 회원의 서비스 이용에 대한 통계</span></u><span
										lang="EN-US" style="font-size: 10.0pt"></span>
								</p>
								<p>
									<span style="font-size: 10pt;">■ 개인정보의 보유 및 이용기간</span><span
										lang="EN-US" style="font-size: 10.0pt"><br /> </span>
									<ins style="">
										<span class="msoIns" style=""><ins style="">
												<span style="font-size: 12pt;">원칙적으로</span><span
													lang="EN-US" style=""><span style="font-size: 12pt;">,
												</span></span><span style="font-size: 12pt;">개인정보 수집 및 이용목적이 달성된
													후에는 해당 정보를 지체 없이 파기합니다</span>
											</ins></span>
									</ins>
									<span lang="EN-US" style="font-size: 10.0pt"><span
										class="msoIns"><ins>
												<span style="font-size: 12pt;">.</span>
											</ins></span>&nbsp;</span><span style="font-size: 10.0pt">단<span
										lang="EN-US">, </span>다음의 정보에 대해서는 아래의 이유로 명시한 기간 동안 보존합니다<span
										lang="EN-US">.<b></b></span></span>
								</p>
								<p>
									<span style="font-size: 10.0pt">가<span lang="EN-US">.
									</span>관련 법령에 의한 정보 보유 사유<span lang="EN-US"></span></span>
								</p>
								<p>
									<span style="font-size: 10.0pt">전자상거래등에서의 소비자 보호에 관한 법률
										등 관계법령의 규정에 의하여 보존할 필요가 있는 경우 회사는 아래와 같이 관계법령에서 정한 일정한 기간 동안
										회원정보를 보관합니다<span lang="EN-US">.<br /> o
									</span>계약 또는 청약철회 등에 관한 기록<span lang="EN-US"><br /> -</span>보존이유<span
										lang="EN-US"> : </span>전자상거래등에서의 소비자 보호에 관한 법률<span
										lang="EN-US"><br /> -</span>보존기간<span lang="EN-US"> :
											5</span>년<span lang="EN-US"><br /> o </span>대금 결제 및 재화 등의 공급에 관한 기록<span
										lang="EN-US"><br /> -</span>보존이유<span lang="EN-US">: </span>전자상거래등에서의
										소비자 보호에 관한 법률<span lang="EN-US"><br /> -</span>보존기간<span
										lang="EN-US"> : 5</span>년<span lang="EN-US"> <br /> o
									</span>소비자 불만 또는 분쟁처리에 관한 기록<span lang="EN-US"><br /> -</span>보존이유<span
										lang="EN-US"> : </span>전자상거래등에서의 소비자 보호에 관한 법률<span
										lang="EN-US"><br /> -</span>보존기간<span lang="EN-US"> :
											3</span>년<span lang="EN-US"> <br /> o
									</span>로그 기록<span lang="EN-US"> <br /> -
									</span>보존이유<span lang="EN-US">: </span>통신비밀보호법<span lang="EN-US"><br />
											-</span>보존기간<span lang="EN-US"> : 3</span>개월<span lang="EN-US"></span>
									</span>
								</p>
								<p>
									<span style="font-size: 10.0pt">■ 수집한 개인정보의 위탁<span
										lang="EN-US"><br /> </span>회사는 서비스 이행을 위해 아래와 같이 외부 전문업체에
										위탁하여 운영하고 있습니다<span lang="EN-US">.<br /> o
									</span>위탁 대상자<span lang="EN-US"> : [(</span>주<span lang="EN-US">)</span>카페<span
										lang="EN-US">24]<br /> o
									</span>위탁업무 내용<span lang="EN-US"> : [</span>정보 전산 처리 및 유지관리<span
										lang="EN-US">]</span></span>
								</p>
								<p>
									<span lang="EN-US" style="font-size: 10.0pt">o </span><span
										style="font-size: 10.0pt">위탁 대상자<span lang="EN-US">
											: [(</span>주<span lang="EN-US">)</span>케이먼트코퍼레이션<span lang="EN-US">]<br />
											o
									</span>위탁업무 내용<span lang="EN-US"> : [</span>시스템 구축 및 유지관리<span
										lang="EN-US">]</span></span>
								</p>
								<p>
									<span lang="EN-US" style="font-size: 10.0pt">o </span><span
										style="font-size: 10.0pt">위탁 대상자<span lang="EN-US">
											: [(</span>주<span lang="EN-US">)GS</span>네트웍스<span lang="EN-US">]<br />
											o
									</span>위탁업무 내용<span lang="EN-US"> : [</span>물류 업무 및 서비스 응대<span
										lang="EN-US">]</span></span>
								</p>
								<p>
									<span lang="EN-US" style="font-size: 10.0pt">o </span><span
										style="font-size: 10.0pt">위탁 대상자<span lang="EN-US">
											: [</span>더화이트커뮤니케이션<span lang="EN-US">(</span>주<span lang="EN-US">)]<br />
											o
									</span>위탁업무 내용<span lang="EN-US"> : [</span>고객응대<span lang="EN-US">/CS]</span></span>
								</p>
								<p>
									<span lang="EN-US" style="font-size: 10.0pt">o </span><span
										style="font-size: 10.0pt">위탁 대상자<span lang="EN-US">
											: [</span>나이스페이먼츠<span lang="EN-US">(</span>주<span lang="EN-US">)]<br />
											o
									</span>위탁업무 내용<span lang="EN-US"> : [</span>결제대행<span lang="EN-US">]</span></span>
								</p>
								<p>
									<span lang="EN-US" style="font-size: 10.0pt">o </span><span
										style="font-size: 10.0pt">위탁 대상자<span lang="EN-US">
											: [</span>본애드컴<span lang="EN-US">(</span>주<span lang="EN-US">)]<br />
											o
									</span>위탁업무 내용<span lang="EN-US"> : [</span>경품행사 및<span lang="EN-US">
											DM/SMS </span>업무 위탁<span lang="EN-US">]</span></span>
								</p>
								<p>
									<b><span style="font-size: 10.0pt; background: #FBFBFB"><br /></span></b><span
										style="font-size: 10pt; background: rgb(251, 251, 251);"><b><span
											style="background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);">고객님은
												개인정보 수집을 거부할 권리가 있으나</span><span lang="EN-US" style=""><span
												style="background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);">,
											</span></span><span
											style="background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);">이
												경우 서비스를 이용하실 수 없습니다</span></b><span lang="EN-US" style=""><span
											style="background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);"><b>.</b></span></span></span><b><span
										lang="EN-US" style="font-size: 10.0pt"></span></b>
								</p>
							</div>
							<p class="check">
								<span>개인정보 수집 및 이용에 동의하십니까?</span> <input
									id="agree_privacy_check0" name="agree_privacy_check[]"
									fw-filter="/1/" fw-label="개인정보 수집 및 이용 방침"
									fw-msg="개인정보 수집 및 이용 방침에 동의하세요" value="1" type="checkbox" /><label
									for="agree_privacy_check0">동의함</label>
							</p>
						</div>
						<div class="ec-base-box typeThinBg agreeArea displaynone">
							<h3>[선택] 개인정보 제3자 제공 동의</h3>
							<div class="content">
								아래 내용의 동의 여부는 회원가입에 영향을 미치지 않습니다. 단, 동의 거부시 서비스 이용에 제한이 있을 수
								있습니다.<br /> <br /> <br /> <br /> - 제공 받는 자 : <br /> <br />
								<br /> - 제공 항목 :<br /> <br /> <br /> - 제공 목적 :<br /> <br />
								<br /> - 보유 및 이용기간 :<br />
							</div>
							<p class="check">
								<span>개인정보 제3자 제공에 동의하십니까?</span> <input
									id="agree_information_check0" name="agree_information_check[]"
									fw-filter="" fw-label="개인정보 제3자 제공 동의" fw-msg=""
									class="ec-base-chk" value="1" type="checkbox" /><label
									for="agree_information_check0">동의함</label>
							</p>
						</div>
						<div class="ec-base-box typeThinBg agreeArea displaynone">
							<h3>[선택] 개인정보 처리 위탁 동의</h3>
							<div class="content">
								아래 내용의 동의 여부는 회원가입에 영향을 미치지 않습니다. 단, 동의 거부시 서비스 이용에 제한이 있을 수
								있습니다.<br /> <br /> ■ 수집한 개인정보의 위탁<br /> 회사는 서비스 이행을 위해 아래와 같이
								외부 전문업체에 위탁하여 운영하고 있습니다.<br /> o 위탁 대상자 : [(주)카페24]<br /> o
								위탁업무 내용 : [정보 전산 처리 및 유지관리]<br /> <br /> o 위탁 대상자 :
								[(주)케이먼트코퍼레이션]<br /> o 위탁업무 내용 : [시스템 구축 및 유지관리]<br /> <br />
								o 위탁 대상자 : [(주)GS네트웍스]<br /> o 위탁업무 내용 : [물류 업무 및 서비스 응대]<br />
								<br /> o 위탁 대상자 : [더화이트커뮤니케이션(주)]<br /> <br /> o 위탁업무 내용 :
								[고객응대/CS]<br /> <br /> o 위탁 대상자 : [나이스페이먼츠(주)]<br /> o 위탁업무
								내용 : [결제대행]<br /> <br /> o 위탁 대상자 : [본애드컴(주)]<br /> o 위탁업무 내용
								: [경품행사 및 DM/SMS 업무 위탁]<br /> <br />
							</div>
							<p class="check">
								<span>개인정보 처리 위탁에 동의하십니까?</span> <input
									id="agree_consignment_check0" name="agree_consignment_check[]"
									fw-filter="" fw-label="개인정보 처리 위탁 동의" fw-msg="" value="1"
									type="checkbox" /><label for="agree_consignment_check0">동의함</label>
							</p>
						</div>
						<div class="ec-base-box typeThinBg agreeArea ">
							<h3>[선택] 쇼핑정보 수신 동의</h3>
							<div class="content">
								<p>할인쿠폰 및 혜택, 이벤트, 신상품 소식 등 쇼핑몰에서 제공하는 유익한 쇼핑정보를 SMS나 이메일로
									받아보실 수 있습니다.</p>
								<p>단, 주문/거래 정보 및 주요 정책과 관련된 내용은 수신동의 여부와 관계없이 발송됩니다.</p>
								<p>선택 약관에 동의하지 않으셔도 회원가입은 가능하며, 회원가입 후 회원정보수정 페이지에서 언제든지
									수신여부를 변경하실 수 있습니다.</p>
							</div>
							<ul class="check">
								<li class=""><span>이메일 수신을 동의하십니까?</span> <label
									for=is_news_mail0><input id="is_news_mail0"
										name="is_news_mail" fw-filter="isFill" fw-label="is_news_mail"
										fw-msg="" class="ec-base-chk" value="T" type="checkbox" />동의함</label>
								</li>
							</ul>
						</div> -->
						<div class="ec-base-button">
							<input type="submit" id="join" name="join" value="회원가입" class="btnSubmitFix sizeM">
							<a href="../index.jsp" class="btnEmFix sizeM">취소</a> 
						</div>
					</div>
				</form>
			</div>
			<hr class="layout" />
   
   
	 <!-- 상단으로 올라가기 -->
          <div style = "position: fixed; bottom: 30px; right: 30px;">
			<a href = "#body"><img src = "../../images/up-arrow.png" /></a>
		  </div>


	<!-- footer -->
    <footer class="site-footer border-top">
      <div class="container">
        <div class="row">
          <div class="col-lg-4 mb-5 mb-lg-0">
            <div class="row mb-5">
              <div class="col-md-12">
                <h3 class="footer-heading mb-4">Navigation</h3>
              </div>
              <div class="col-md-6 col-lg-6">
                <ul class="list-unstyled">
                  <li><a href="#">Home</a></li>
                  <li><a href="#">Services</a></li>
                  <li><a href="#">News</a></li>
                  <li><a href="#">Team</a></li>
                </ul>
              </div>
              <div class="col-md-6 col-lg-6">
                <ul class="list-unstyled">
                  <li><a href="#">About Us</a></li>
                  <li><a href="#">Privacy Policy</a></li>
                  <li><a href="#">Contact Us</a></li>
                  <li><a href="#">Membership</a></li>
                </ul>
              </div>
            </div>
          </div>
          
          <div class="col-lg-4">
            <div class="mb-5">
              <h3 class="footer-heading mb-4">Recent News</h3>
              <div class="block-25">
                <ul class="list-unstyled">
                  <li class="mb-3">
                    <a href="#" class="d-flex">
                      <figure class="image mr-4">
                        <img src="images/hero_bg_1.jpg" alt="" class="img-fluid">
                      </figure>
                      <div class="text">
                        <span class="small text-uppercase date">Sep 16, 2018</span>
                        <h3 class="heading font-weight-light">Lorem ipsum dolor sit amet consectetur elit</h3>
                      </div>
                    </a>
                  </li>
                  <li class="mb-3">
                    <a href="#" class="d-flex">
                      <figure class="image mr-4">
                        <img src="images/hero_bg_1.jpg" alt="" class="img-fluid">
                      </figure>
                      <div class="text">
                        <span class="small text-uppercase date">Sep 16, 2018</span>
                        <h3 class="heading font-weight-light">Lorem ipsum dolor sit amet consectetur elit</h3>
                      </div>
                    </a>
                  </li>
                  <li class="mb-3">
                    <a href="#" class="d-flex">
                      <figure class="image mr-4">
                        <img src="images/hero_bg_1.jpg" alt="" class="img-fluid">
                      </figure>
                      <div class="text">
                        <span class="small text-uppercase date">Sep 16, 2018</span>
                        <h3 class="heading font-weight-light">Lorem ipsum dolor sit amet consectetur elit</h3>
                      </div>
                    </a>
                  </li>
                </ul>
              </div>
            </div>
            
          </div>
          

          <div class="col-lg-4 mb-5 mb-lg-0">

            <div class="mb-5">
              <h3 class="footer-heading mb-2">Subscribe Newsletter</h3>
              <p>Lorem ipsum dolor sit amet consectetur adipisicing elit minima minus odio.</p>

              <form action="#" method="post">
                <div class="input-group mb-3">
                  <input type="text" class="form-control border-white text-white bg-transparent" placeholder="Enter Email" aria-label="Enter Email" aria-describedby="button-addon2">
                  <div class="input-group-append">
                    <button class="btn btn-primary" type="button" id="button-addon2">Send</button>
                  </div>
                </div>
              </form>

            </div>

            <div class="row">
              <div class="col-md-12">
                <h3 class="footer-heading mb-4">Follow Us</h3>

                <div>
                  <a href="#" class="pl-0 pr-3"><span class="icon-facebook"></span></a>
                  <a href="#" class="pl-3 pr-3"><span class="icon-twitter"></span></a>
                  <a href="#" class="pl-3 pr-3"><span class="icon-instagram"></span></a>
                  <a href="#" class="
                  pl-3 pr-3"><span class="icon-linkedin"></span></a>
                </div>
              </div>
            </div>


          </div>
          
        </div>
        <div class="row pt-5 mt-5 text-center">
          <div class="col-md-12">
            <p>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | RECORE
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            </p>
          </div>
          
        </div>
      </div>
    </footer>
      
		</div>
	</div>

</body>
</html>