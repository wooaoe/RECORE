<%@page import="com.mvc.dao.AccountDaoImp"%>
<%@page import="com.sun.org.apache.bcel.internal.generic.ACONST_NULL"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<% request.setCharacterEncoding("UTF-8"); %>
	<% response.setContentType("text/html; charset=UTF-8"); %>
	<%@ page import="com.mvc.vo.Vo_Account"%>
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
    
<script language="javascript">
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
</script>
    
<title>회원 정보 수정</title>

<style type="text/css">
input[type="hidden" i] {
    display: none;
    -webkit-appearance: initial;
    background-color: initial;
    cursor: default;
    padding: initial;
    border: initial;
}
.ec-base-layer .close {
    position: absolute;
    right: 0;
    top: 0;
    padding: 11px 20px;
    cursor: pointer;
}
[class^='btn'][class*='Fix'].sizeS {
    width: 96px;
}
[class^='btn'].sizeS {
    padding: 6px 8px;
}
.ec-base-layer .ec-base-button {
    padding: 9px;
    border-top: 1px solid #d7d5d5;
    text-align: center;
    background: #fbfafa;
}
.ec-base-layer .content {
    padding: 20px;
    font-size: 12px;
}
.ec-base-button:after {
    display: block;
    content: "";
    clear: both;
}
.ec-base-layer .header > h1, .ec-base-layer .header > h3 {
    font-size: 14px;
    line-height: 1.5;
}
.xans-member-edit .layerLeave h3 {
    margin: 0;
    color: #fff;
}
.ec-base-layer .header {
    padding: 7px 35px 7px 19px;
    color: #fff;
    background: #124734;
}
.xans-member-edit .layerLeave {
    position: fixed;
    top: 50%;
    left: 50%;
    z-index: 1000;
    width: 600px;
    margin: -205px 0 0 -300px;
    display: none;
}
.ec-base-layer {
    display: none;
    position: absolute;
    z-index: 100;
    border: 1px solid #757575;
    background: #fff;
}
.ec-base-button.justify .gRight {
    position: absolute;
    right: 0;
}
.ec-base-button .gRight {
    float: right;
    text-align: right;
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
.xans-member-edit #birth_year, .xans-member-edit #marry_year, .xans-member-edit #partner_year {
    width: 60px;
    margin: 0 4px 0 0;
}
.xans-member-edit #birth_month, .xans-member-edit #marry_month, .xans-member-edit #partner_month, .xans-member-edit #birth_day, .xans-member-edit #marry_day, .xans-member-edit #partner_day {
    width: 30px;
    margin: 0 4px 0 0;
}
.xans-member-edit #email1 {
    margin-right: 4px;
}
input[type=radio] + label, input[type=checkbox] + label {
    margin: 0 4px 0 2px;
}
label {
    cursor: default;
}
input[type="radio" i] {
    background-color: initial;
    cursor: default;
    -webkit-appearance: radio;
    box-sizing: border-box;
    margin: 3px 3px 0px 5px;
    padding: initial;
    border: initial;
}
input[type=radio], input[type=checkbox] {
    width: 13px;
    height: 13px;
    border: 0;
}
.xans-member-edit .verify {
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
button {
    overflow: visible;
    padding: 0;
    margin: 0;
    border: 0;
    cursor: pointer;
}
.xans-member-edit #phone2, .xans-member-edit #phone3, .xans-member-edit #mobile2, .xans-member-edit #mobile3 {
    width: 50px;
    margin: 0 4px;
}
.xans-member-edit #phone1, .xans-member-edit #mobile1 {
    width: 60px;
    margin: 0 4px 0 0;
}
.xans-member-edit #addr1, .xans-member-edit #addr2 {
    width: 280px;
    margin: 5px 0 0;
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

.xans-member-edit #postcode1, .xans-member-edit #postcode2 {
    width: 40px;
    text-align: center;
}
.xans-member-edit #hint_answer {
    width: 500px;
}
option {
    font-weight: normal;
    display: block;
    white-space: pre;
    min-height: 1.2em;
    padding: 0px 2px 1px;
}
[class^='btn'] img {
    margin: -2px 1px 0;
    vertical-align: middle;
}
.ec-base-tooltip .btnClose {
    position: absolute;
    right: 14px;
    top: 14px;
}
.xans-member-edit .ec-base-tooltip.typeUpper .edge {
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
input[type=text], input[type=password] {
    height: 22px;
    line-height: 22px;
    padding: 2px 4px;
    border: 1px solid #d5d5d5;
    color: #353535;
    font-size: 12px;
}
.ec-base-tooltip .txtWarn {
    color: #f65b54;
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
.txtWarn {
    color: #f76560;
}
ul {
    list-style-type: disc;
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
input[type="password" i] {
    -webkit-text-security: disc !important;
}
.xans-member-edit .eTooltip {
    position: relative;
    display: inline-block;
}
.eTooltip{
    display: inline-block;
}
.gBlank10 {
    display: block;
    margin-top: 10px;
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
.ec-base-button {
    padding: 10px 0;
    text-align: center;
}
.ec-base-box.typeThinBg {
    border-width: 1px;
    border-color: #d7d5d5;
    background-color: #fff;
}
.xans-member-edit .agreeArea {
    color: #747474;
    line-height: 20px;
}
tbody {
    display: table-row-group;
    vertical-align: middle;
    border-color: inherit;
}
caption {
    display: none;
}
caption {
    display: table-caption;
}
.ec-base-layer .ec-base-table tbody th {
    padding: 9px 0 8px 10px;
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
colgroup {
    display: table-column-group;
}
col {
    display: table-column;
}
.ec-base-layer .content > .ec-base-table table:first-child {
    margin-top: 0;
}
.ec-base-layer .ec-base-table table {
    line-height: 1.4;
}
	.ec-base-table table {
     position: relative;
    margin: 10px 0 0;
    border: 1px solid #d7d5d5;
    border-top: 0;
    color: #fff;
    line-height: 1.5;
}
table {
    width: 100%;
    border: 0;
    border-spacing: 0;
    border-collapse: collapse;
    font-size: 13px;
}
table {
    width: 100%;
    border: 0;
    border-spacing: 0;
    border-collapse: collapse;
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
.required img {
    vertical-align: middle;
}
.required {
    color: #353535;
    text-align: right;
}
.displaynone {
    display: none;
}
.displaynone {
    display: none !important;
}
.xans-member-edit h3 {
    margin: 50px 0 10px;
    font-size: 16px;
    color: #2e2e2e;
}

h3 {
	text-align : center;
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
.xans-member-edit .layerLeave h4 {
    margin: 20px 0 10px;
    padding: 20px 0 0;
    border-top: 1px solid #e8e8e8;
}
h4 {
    display: block;
    margin-block-start: 1.33em;
    margin-block-end: 1.33em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
}
select {
    height: 27px;
    border: 1px solid #d5d5d5;
}
select:not(:-internal-list-box) {
    overflow: visible !important;
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
.txtEm {
     color: #333;
}
.ec-base-box.typeMember .information .description {
    display: table-cell;
    padding: 0 10px;
    width: auto;
    line-height: 1.5em;
    border-left: 1px solid #e8e8e8;
    vertical-align: middle;
}
.ec-base-box.typeMember .information > .thumbnail img {
    max-width: 70px;
}
.xans-myshop-asyncbenefit .thumbnail img {
    max-width: 70px;
    max-height: 70px;
}
.ec-base-box.typeMember .information > .title {
    vertical-align: middle;
}
.ec-base-box.typeMember .information > .title, .ec-base-box.typeMember .information > .thumbnail {
    display: table-cell;
    padding: 0 15px;
    width: 70px;
    text-align: center;
    vertical-align: middle;
}
p {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}
.ec-base-box.typeMember .information {
    display: table;
    table-layout: fixed;
    padding: 10px 0;
    width: 100%;
    box-sizing: border-box;
}
.ec-base-box.typeMember.gMessage {
    border-width: 1px;
    border-color: #d7d5d5;
}
.ec-base-box.typeMember {
    padding: 0;
}
.ec-base-box {
    padding: 20px;
    margin-left: auto;
    margin-right: auto;
    border: 1px solid #dfdfdf;
    color: #404040;
}
.titleArea {
    width: 1050px;
    min-height: 30px;
    margin: 30px auto 20px;
}
.titleArea h2 {
    color: #2e2e2e;
    font-size: 25px;
	text-align : center;
}
h2 {
    font-size: 1.5em;
    margin-block-start: 0.83em;
    margin-block-end: 0.83em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
}
.xans-myshop-asyncbenefit {
    margin: 0 0 20px;
    color: #353535;
}
form {
    display: block;
    margin-top: 0em;
}
.path li strong, .path li strong a {
    color: #2e2e2e;
}
strong {
    font-weight: bold;
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
a:-webkit-any-link {
//    color: -webkit-link;
    cursor: pointer;
    text-decoration: underline;
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
#content {
    margin-top: 100px;
}
#content {
    width: 1050px;
    margin: 100px auto 100px;
}
hr.layout {
    display: none;
}
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
	tr {
    display: table-row;
    vertical-align: inherit;
    border-color: inherit;
}
.ec-base-table th:first-child {
    border-left: 0;
}
.ec-base-table th {
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
img, fieldset {
    border: none;
    vertical-align: top;
}
.ec-base-table.typeWrite td {
    padding: 8px 10px 7px;
}
td {
    display: table-cell;
    vertical-align: inherit;
}
.ec-base-table td {
    padding: 11px 10px 10px;
    border-top: 1px solid #dfdfdf;
    color: #353535;
    word-break: break-all;
    word-wrap: break-word;
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
.ec-base-layer .ec-base-table.typeWrite td {
    padding: 5px 10px 4px;
}
th, td {
    border: 0;
    vertical-align: top;
}
th {
    display: table-cell;
    vertical-align: inherit;
    font-weight: bold;
    text-align: -internal-center;
}
.xans-member-join #phone2, .xans-member-join #phone3, .xans-member-join #mobile2, .xans-member-join #mobile3 {
    width: 50px;
    margin: 0 4px;
}
.xans-member-join #birth_month, .xans-member-join #marry_month, .xans-member-join #partner_month, .xans-member-join #birth_day, .xans-member-join #marry_day, .xans-member-join #partner_day {
    width: 30px;
    margin: 0 4px 0 0;
}
</style>
</head>
<body>

<!-- header -->
<%@ include file="/header.jsp" %>


	<div id="wrap">

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
											fw-filter="isFill&isFill&isMin[4]&isMax[16]&isIdentity"
											fw-label="아이디" fw-msg="" class="inputTypeText" placeholder=""
											readonly="readonly" value="" type="text" /> (영문소문자/숫자,
											4~16자)</td>
									</tr>
									
									<tr>
										<th scope="row">비밀번호 <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"
											class="" alt="필수" /></th>
										<td>
											<div class="eTooltip">
												<input id="passwd" name="passwd"
													fw-filter="isFill&isMin[4]&isMax[16]" fw-label="비밀번호"
													fw-msg="" autocomplete="off" maxlength="16"
													0="disabled" value="" type="password" />
												<div class="ec-base-tooltip typeUpper ">
													<div class="content">
													</div>
												</div>
											</div> (영문 대소문자/숫자/특수문자 중 2가지 이상 조합, 10자~16자)
										</td>
									</tr>
									
									<tr class="">
										<th scope="row">비밀번호 확인 <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"
											alt="필수" /></th>
										<td><input id="user_passwd_confirm"
											name="user_passwd_confirm" fw-filter="isFill&isMatch[passwd]"
											fw-label="비밀번호 확인" fw-msg="비밀번호가 일치하지 않습니다."
											autocomplete="off" maxlength="16" 0="disabled" value=""
											type="password" /> <span id="pwConfirmMsg"></span></td>
									</tr>
									
									<tr style="display:">
										<th scope="row" id="">이름 <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"
											alt="필수" /></th>
										<td><input id="name" name="name"
											fw-filter="isFill&isMax[30]" fw-label="이름" fw-msg=""
											class="ec-member-name" placeholder="" maxlength="30"
											readonly="readonly" value="" type="text" readonly="readonly" /></td>
									</tr>
									
										<tr class="">
										<th scope="row">생년월일 <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"
											class="" alt="필수" /></th>
										<td><input id="birth_year" name="birth_year"
											fw-filter="isFill" fw-label="생년월일" fw-msg=""
											class="inputTypeText" placeholder="" maxlength="4" value=""
											type="text" style="width: 40px" readonly="readonly" /> 년 <input id="birth_month" name="birth_month"
											fw-filter="isFill" fw-label="생년월일" fw-msg=""
											class="inputTypeText" placeholder="" maxlength="2" value=""
											type="text" style="width: 25px" readonly="readonly" /> 월 <input id="birth_day" name="birth_day"
											fw-filter="isFill" fw-label="생년월일" fw-msg=""
											class="inputTypeText" placeholder="" maxlength="2" value=""
											type="text" style="width: 25px" readonly="readonly" /> 일 <span class="gIndent20 "><input
												id="is_solar_calendar0" name="is_solar_calendar"
												fw-filter="isFill" fw-label="생년월일" fw-msg="" value="T"
												type="radio" checked="checked" /><label
												for="is_solar_calendar0">양력</label> <input
												id="is_solar_calendar1" name="is_solar_calendar"
												fw-filter="isFill" fw-label="생년월일" fw-msg="" value="F"
												type="radio" /><label for="is_solar_calendar1">음력</label></span></td>
									</tr>
									
									<tr>
										<th scope="row">이메일 <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"
											alt="필수" /></th>
										<td><input id="email1" name="email1"
											fw-filter="isFill&isEmail" fw-label="이메일" fw-alone="N"
											fw-msg="" value="" type="text" /> <span id="emailMsg"></span>
									</tr>
									
									<tr class="">
										<th scope="row">휴대전화 <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"
											class="" alt="필수" /></th>
										<td><select id="mobile1" name="mobile[]"
											fw-filter="isNumber&isFill" fw-label="휴대전화" fw-alone="N"
											fw-msg="">
												<option value="010">010</option>
												<option value="011">011</option>
												<option value="016">016</option>
												<option value="017">017</option>
												<option value="018">018</option>
												<option value="019">019</option>
										</select>-<input id="mobile2" name="mobile[]" maxlength="4"
											fw-filter="isNumber&isFill" fw-label="휴대전화" fw-alone="N"
											fw-msg="" value="" type="text" style="width: 50px"/>-<input id="mobile3"
											name="mobile[]" maxlength="4" fw-filter="isNumber&isFill"
											fw-label="휴대전화" fw-alone="N" fw-msg="" value="" type="text" style="width: 50px"/>

									</tr>
									
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

						<div class="ec-base-button justify">
							<a href="#none" class="btnSubmitFix sizeM" onclick="memberEditAction()">회원정보수정</a> 
								<a href="/index.html" class="btnEmFix sizeM">취소</a> 
							<span class="gRight"> 
								<a href="#none" class="btnEmFix sizeM" onclick="memberDelAction(0, -1, -1)">회원탈퇴</a>
							</span>
						</div>
						<div class="layerLeave ec-base-layer" id="">

							<div class="header">
								<h3>회원탈퇴</h3>
							</div>
							<div class="content">
								<div class="ec-base-box typeMember">
									<div class="information">
										<strong class="title">혜택 내역</strong>
										<div class="description">
											<ul>
												<li id="">탈퇴시 보유하고 있는 적립금은 모두 삭제됩니다.</li>
												<li>현재 적립금 : <strong id="" class="txtEm">0</strong>
												</li>
												<li id="">현재 예치금 : <strong id="" class="txtEm">0</strong>
												</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
							<div class="ec-base-button">
								<a href="#none" class="btnSubmitFix sizeS" id="">탈퇴</a> <a
									href="#none" class="btnNormalFix sizeS"
									onclick="$('#').hide();">취소</a>
							</div>
							<a href="#none" class="close" onclick="$('#').hide();"><img
								src="//img.echosting.cafe24.com/skin/base/common/btn_close.gif"
								alt="닫기" /></a>
						</div>
					</div>
				</form>
			</div>
			<hr class="layout" />
    
    
	<!-- footer -->   
   <%@ include file="/footer.jsp" %>
    
	
	
			

			<!-- 결제를 위한 필수 영역 -->
			<div id="progressPaybar" style="display: none;">
				<div id="progressPaybarBackground" class="layerProgress"></div>
				<div id="progressPaybarView">
					<div class="box">
						<p class="graph">
							<span><img
								src="//img.echosting.cafe24.com/skin/base_ko_KR/layout/txt_progress.gif"
								alt="현재 결제가 진행중입니다." /></span> <span><img
								src="//img.echosting.cafe24.com/skin/base/layout/img_loading.gif"
								alt="" /></span>
						</p>
						<p class="txt">
							본 결제 창은 결제완료 후 자동으로 닫히며,결제 진행 중에 본 결제 창을 닫으시면<br /> 주문이 되지 않으니
							결제 완료 될 때 까지 닫지 마시기 바랍니다.
						</p>
					</div>
				</div>
			</div>
			<!-- // 결제를 위한 필수 영역 -->




	
	<!-- <script type="text/javascript">
		var sAuthSSLDomain = "login2.cafe24ssl.com";
	</script>
	<script type="text/javascript"
		src="https://login2.cafe24ssl.com/crypt/AuthSSLManager.js"></script>
	<script type="text/javascript"
		src="https://login2.cafe24ssl.com/crypt/AuthSSLManager.plugin.js"></script>

	<script>
		try {
			// Account ID 적용
			if (!wcs_add)
				var wcs_add = {};
			wcs_add["wa"] = "s_4c8a71528eaf";

			// 마일리지 White list가 있을 경우
			wcs.mileageWhitelist = [ "gsnetvision.cafe24.com",
					"www.gsnetvision.cafe24.com", "m.gsnetvision.cafe24.com",
					"dalisalda.co.kr", "www.dalisalda.co.kr",
					"m.dalisalda.co.kr", "dalisalda.com", "www.dalisalda.com",
					"m.dalisalda.com" ];

			// 네이버 페이 White list가 있을 경우
			wcs.checkoutWhitelist = [ "gsnetvision.cafe24.com",
					"www.gsnetvision.cafe24.com", "m.gsnetvision.cafe24.com",
					"dalisalda.co.kr", "www.dalisalda.co.kr",
					"m.dalisalda.co.kr", "dalisalda.com", "www.dalisalda.com",
					"m.dalisalda.com" ];

			// 레퍼러 (스크립트 인젠션 공격 대응 strip_tags) ECQAINT-15101
			wcs.setReferer("");

			// 유입 추적 함수 호출
			wcs.inflow("dalisalda.com");

			// 로그수집
			wcs_do();
		} catch (e) {
		};
	</script>

	<script type="text/javascript"
		src="//www.dalisalda.com/ind-script/i18n.php?lang=ko_KR&domain=front&v=1912191094"
		charset="utf-8"></script>

	<script type="text/javascript"
		src="/ind-script/optimizer.php?filename=tVRBbhsxDPzAXvMOwUEPvbYBcisKpMgDaInrlU2JCkUlcV9f2nGCuMnaXWwNHQQInCGpIccNnNAtrsX1AgmfWDZOsHITj25dXVx8zd26XrlTcS0W8Bu3fmgo28O16L7YOUIW4ZWBj_hrkZi1Px8Y2LeEWW9Z0g1nFSZCOY_rxYLdM2TrJStKEdSJOMVUCBQ_B0Ep7gcvI6G7e4f3nBJn1zTSJFzi0OypPsUyLWHfstdoKS0uNK9dYpnJcKIIikt3_yL7ewqC31tiCJNAqSns8v5cVpTHMXFGwIVp20eif1U0YA-NdPcFNYHod8j575RnRxyfbYYyUD08dMtV3IPm8njmTZzNEqJtSrUfrXOZEGrMq7ksCRUCKIxP46-By5Gst3uxbvZLdH9yh0agFUH8MGmUFPreio1TDa9QW0XziUegaG2yvPb99jCbcPelOdSPxMZQTGe8XIYBqeAFOxggB7pkAnOUaLpejN_cR_9D_cQezJA3fN7JRubqs1BoOtRKr7epOWbOu136doi--8jQVW-4Pw&type=js&k=36a47e6576249d478ec9ed4bd56d4e1e93d99b48&t=1576606165"></script>
	<script type="text/javascript"
		src="/ind-script/optimizer.php?filename=rZTBTsMwDIbvbFeeI4I3GGUcphUmJobELU3d1msSR066qTw9pQOJHdZtKRdHTfr9sR3boiID4u6ehWMqWRqhMRNv6KSqxSt4aliB2HqRdv_ZIEy_TA3a6dbfiij6JqCBT7JwWob_sE1A3ZvpTmrMZSCOghbuGmzziz1J1dk2ik3IBiat4YTH0jmRgsmAj7Jl-q0NMBZtShlqiMAXhDapQNXPqOoIPiFjyEaA8xzDrAnVer0c4_ZqP4aeG9k9RETUPex9dOAlA_QtEsdHYEuQO5gpRc3QrR_oFOVwxBdoc7igmc6_prSyPNbeQ6apvGpIJA0zWNUKX5GbOEYFI3j18zUpiI0MYz35L5l-QJzNeBWM7ooIA4K_Ku3St1YdbDR3KKto_IW7olKDHTAs8CB9DWG8wkAFXayxYsobFe9JQo0jOyaWtBv_3Xk0_wiOPMbf_46-WqL_FvgC&type=js&k=2a8eed8e6ea3c27850f37707f1a1f682058953b8&t=1574792919"></script>
	<script type="text/javascript"
		src="/ind-script/optimizer.php?filename=rZOxUsMwDIYfIFl5Dh3wBJQBhvbotXDMqiMSEdsylp1c3p60ZSh3LHVYfF6-T78lGTpxBLd3EUKUNqIDDAE26LEl2JFKjobgUwF18uZ81u-snZHsU_2pN1BiiGRoAb474a-S0D4uyvESG4rF9Io8fXB59RVqT2mN04IMTxEbKqYfchKHic1Js-9kLFZtsk28lZBDuWJac0_bKE02adlg1zyQZd-LX7Ybz6xJ4lQaJmDqoliqBrTc4Kwqf5FgcxUczn38m7F8gDcOaPpfzHZECCPWRtwcvXZ8Xft0rA1ae7nOZKqsFBVa9ZQGVhYPIR8sm6pLzoI2VDWk3HrQnv390TOXd5eTK5K4-fmWwOIkOcFXZtNXA9O4RPsjO6CyOdY4Xf41pzt-I-0k7DsOgX07278B&type=js&k=70a00ea39adeab635be70b78471b2ab1a504efbe&t=1573613127"></script>
	<script type="text/javascript">
		var EC_MOBILE = false;
		var EC_MOBILE_DEVICE = false;
		var EC_MOBILE_USE = true;
		var mobileWeb = false;
		var sSearchBannerUseFlag = 'F';
		AUTHSSL_SC
				.decrypt("RO2U7Lzdx1f1bQrAJjlI9C\/c9qomtJbLwa1mkDUJDMx6NFG\/PMc65cGEH6Lfkc0mAtk5LEf60F0keyXexTIMN512QJdYD0fpLCDArk\/+UN+IriRNNGjPTg5SL31u7iymLTaa9CNqbCgZyczjz5oZfqhIlQGjjdSNXi55TAM1ALMdEgitkyjz6evMRllqGqpFa7Ioe0\/hcXGpYUecNStUQlaoCqkuiq3f5uBAzhj\/9W1FxVdP0xt77GPBV5V0aKzrRmSMztWfpVVkaNjxYrwLq2S01Aqkj6OGI9H1Q+a8LIVhmGk0Q32VlC6N1hnlO1+x5+E\/k\/wirwAXTyOWRo8Ft2ht5Vx0QEPGGw67tFZo18jC3p3UMg7f08EM5NKQ\/jHpToLtTfHXmohTvUr5HB+jkXbgFqezCjhWmxN73eFXX3KuOJF25wyvdzvGtdIBlzAOZeIJwcWjMFrcF8hYBteqTf\/xvMccfnYcAfZnokMRC5aBO7N7opOZjZFxdXMnv9da");
		var isCountryOfLanguage = 'F'
		var sMallDepositName = '예치금';
		var sIsLeaveReason = 'F';
		$(document).ready(
				function() {
					ZipcodeFinder.Opener.setLanguage({
						"apply" : "",
						"close" : ""
					});
					ZipcodeFinder.Opener.bind('postBtn', 'postcode1',
							'postcode2', 'addr1', 'layer', 'city_name',
							'state_name', 'ko_KR', 'addr2', '');
				});
		$(document).ready(
				function() {
					ZipcodeFinder.Opener.setLanguage({
						"apply" : "",
						"close" : ""
					});
					ZipcodeFinder.Opener.bind('postBtn', 'postcode1',
							'postcode2', 'addr1', 'layer', 'city_name',
							'state_name', 'ko_KR', 'addr2', '');
				});
		var userOption = {
			"login_page" : "\/member\/login.html"
		}
		$(document).ready(function() {
			AuthSSLManager.weave({
				'auth_mode' : 'decryptClient', //mode
				'auth_string' : $('#sEData').val(), //auth_string
				'auth_callbackName' : 'MemberEditAuthtSSL.setMember' //callback function
			});
		});
		$(document)
				.ready(
						function() {
							AuthSSL
									.Bind(
											'editForm',
											[
													"editForm::member_id",
													"editForm::useSimpleSignin",
													"editForm::passwd",
													"editForm::is_certification",
													"editForm::new_passwd",
													"editForm::new_passwd_confirm",
													"editForm::user_passwd_confirm",
													"editForm::hint",
													"editForm::hint_answer",
													"editForm::postcode1",
													"editForm::postcode2",
													"editForm::addr1",
													"editForm::addr2",
													"editForm::phone1",
													"editForm::phone2",
													"editForm::phone3",
													"editForm::mobile1",
													"editForm::mobile2",
													"editForm::mobile3",
													"editForm::email1",
													"editForm::email2",
													"editForm::email3",
													"editForm::emailDuplCheck",
													"editForm::login_id_type",
													"editForm::name",
													"editForm::is_display_register_name",
													"editForm::display_required_name",
													"editForm::name_phonetic",
													"editForm::is_display_register_name_phonetic",
													"editForm::display_required_name_phonetic",
													"editForm::name_en",
													"editForm::is_display_register_eng_name",
													"editForm::display_required_name_en",
													"editForm::passwd_type",
													"editForm::city_name",
													"editForm::state_name",
													"editForm::country",
													"editForm::is_display_register_addr",
													"editForm::__addr1",
													"editForm::__city_name",
													"editForm::__state_name",
													"editForm::direct_input_postcode1_addr[]",
													"editForm::display_required_address",
													"editForm::display_required_address2",
													"editForm::is_display_register_mobile",
													"editForm::display_required_cell",
													"editForm::display_register_mobile",
													"editForm::verify_sms_number",
													"editForm::use_checking_mobile_number_duplication",
													"editForm::isMobileVerify",
													"editForm::is_display_register_phone",
													"editForm::display_required_phone",
													"editForm::display_register_phone",
													"editForm::is_display_password_hint",
													"editForm::is_sms",
													"editForm::required_is_sms_flag",
													"editForm::is_news_mail",
													"editForm::required_is_news_mail_flag",
													"editForm::birth_year",
													"editForm::birth_month",
													"editForm::birth_day",
													"editForm::is_solar_calendar",
													"editForm::is_display_register_birthday",
													"editForm::display_required_is_birthday",
													"editForm::is_sex",
													"editForm::display_required_sex",
													"editForm::nick_name",
													"editForm::nick_name_flag",
													"editForm::nick_name_confirm",
													"editForm::display_required_nick_name_flag",
													"editForm::marry_year",
													"editForm::marry_month",
													"editForm::marry_day",
													"editForm::is_display_register_wedding",
													"editForm::display_required_is_wedding_anniversary",
													"editForm::partner_year",
													"editForm::partner_month",
													"editForm::partner_day",
													"editForm::is_display_register_life_partner",
													"editForm::display_required_is_life_partner",
													"editForm::job",
													"editForm::display_required_job",
													"editForm::job_class",
													"editForm::display_required_job_class",
													"editForm::school",
													"editForm::display_required_school",
													"editForm::inter_check[]",
													"editForm::display_required_interest",
													"editForm::region",
													"editForm::display_required_region",
													"editForm::internet",
													"editForm::display_required_internet",
													"editForm::child",
													"editForm::display_required_child",
													"editForm::car",
													"editForm::display_required_car",
													"editForm::earning",
													"editForm::display_required_earning",
													"editForm::reco_id",
													"editForm::display_required_reco_id",
													"editForm::add1[]",
													"editForm::display_required_add1",
													"editForm::add2",
													"editForm::display_required_add2",
													"editForm::add3",
													"editForm::display_required_add3",
													"editForm::add4",
													"editForm::display_required_add4",
													"editForm::returnUrl",
													"editForm::sUseCountryNumberFlag",
													"editForm::sUseSeparationNameFlag",
													"editForm::sEData",
													"editForm::sEDataDiff",
													"editForm::is_lifetime",
													"editForm::agree_information_check[]",
													"editForm::display_agree_information_check_flag",
													"editForm::agree_consignment_check[]",
													"editForm::display_agree_consignment_check_flag" ]);
						});
		var aLogData = {
			"log_server1" : "eclog2-249.cafe24.com",
			"log_server2" : "eclog2-249.cafe24.com",
			"mid" : "gsnetvision",
			"stype" : "e",
			"domain" : "",
			"shop_no" : 1,
			"etc" : ""
		};
		var sMileageName = '적립금';
		var sMileageUnit = '[:PRICE:]원';
		var sDepositName = '예치금';
		var sDepositUnit = '원';
		var SHOP_CURRENCY_INFO = {
			"1" : {
				"aShopCurrencyInfo" : {
					"currency_code" : "KRW",
					"currency_no" : "410",
					"currency_symbol" : "\uffe6",
					"currency_name" : "South Korean won",
					"currency_desc" : "\uffe6 \uc6d0 (\ud55c\uad6d)",
					"decimal_place" : 0,
					"round_method_type" : "F"
				},
				"aShopSubCurrencyInfo" : null,
				"aBaseCurrencyInfo" : {
					"currency_code" : "KRW",
					"currency_no" : "410",
					"currency_symbol" : "\uffe6",
					"currency_name" : "South Korean won",
					"currency_desc" : "\uffe6 \uc6d0 (\ud55c\uad6d)",
					"decimal_place" : 0,
					"round_method_type" : "F"
				},
				"fExchangeRate" : 1,
				"fExchangeSubRate" : null,
				"aFrontCurrencyFormat" : {
					"head" : "",
					"tail" : "\uc6d0"
				},
				"aFrontSubCurrencyFormat" : {
					"head" : "",
					"tail" : ""
				}
			}
		};
		var EC_ASYNC_LIVELINKON_ID = '';
		var EC_FRONT_JS_CONFIG_MANAGE = {
			"sSmartBannerScriptUrl" : "https:\/\/app4you.cafe24.com\/SmartBanner\/tunnel\/scriptTags?vs=1563164396689206",
			"sMallId" : "gsnetvision",
			"sDefaultAppDomain" : "https:\/\/app4you.cafe24.com",
			"sWebLogEventFlag" : "F",
			"FW_MANIFEST_CACHE_REVISION" : 1912191094,
			"IS_WEB_VIEW" : "F"
		};
		var EC_FRONT_JS_CONFIG_MEMBER = {
			"sAuthUrl" : "https:\/\/i-pin.cafe24.com\/certify\/1.0\/?action=auth"
		};
	</script> -->
</body>
</html>