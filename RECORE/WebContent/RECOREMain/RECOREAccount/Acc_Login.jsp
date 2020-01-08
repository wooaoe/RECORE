<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.security.SecureRandom" %>
<%@ page import="java.math.BigInteger" %>

<!doctype html>
<html lang="kr">
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link rel="stylesheet" href="AccountCss/AccountStyle.css">
<link rel="stylesheet" href="cssMain/style2.css">
<style type="text/css">
body .container .half.bg img {
	background-color: #F56D3E;
}
</style>
</head>
<body>

  <%
    String clientId = "EM8u8oB6xvKkt1JJiT47";//애플리케이션 클라이언트 아이디값";
    String redirectURI = URLEncoder.encode("http://localhost:8787/RECORE04/RECOREMain/index.jsp", "UTF-8");
    SecureRandom random = new SecureRandom();
    String state = new BigInteger(130, random).toString();
    String apiURL = "https://nid.naver.com/oauth2.0/authorize?response_type=code";
    apiURL += "&client_id=" + clientId;
    apiURL += "&redirect_uri=" + redirectURI;
    apiURL += "&state=" + state;
    session.setAttribute("state", state);
 %>
	<!-- header 시작 -->

	<%-- <%@ include file="/RECOREMain/RECOREAccount/header.jsp" %> --%>
	<div id="header">
		<section class="menu">
			<nav class="navtest">
				<a href="../index.jsp"><img src="Accimages/logo.png" /></a>
			</nav>
		</section>
	</div>

	<div>
		<section class="container">
			<article class="half">
				<h1>로그인</h1>
				<div class="tabs">
					<span class="tab signin active"><a href="Acc_Login.jsp">sign in</a></span>
				</div>

				<div class="content">
					<div class="signin-cont cont">
						<form action="../../Account_Controller.do?command=login" method="post" id="loginForm" name="loginForm" >
							<input type="text" name="acc_id" id="id" class="inpt" required="required" placeholder="아이디"><label for="id">아이디</label>
							<input type="password" name="acc_pw" id="password" class="inpt"required="required" placeholder="비밀번호" > <label for="password">비밀번호</label> 
							<div class="submit-wrap">
								<input type="submit" value="로그인" style="text-align: center;" class="submit" > <span class="tab signup active">
<!-- 							<input type="checkbox" id="remember" class="checkbox" checked>
						        <label for="remember">아이디 저장</label> -->
								<a href="<%=apiURL%>" class="more" ><img width="200" style="margin-top: 0px;" src="<%=request.getContextPath()%>/RECOREMain/RECOREAccount/Accimages/login.PNG"/></a>
								<a href="Acc_Signup.jsp" class="more" style="margin-top: 15px;">회원가입</a></span> 
								<a href="#" class="more" style="margin-top: 15px;">아이디/비밀번호 찾기</a>
							</div>
						</form>
					</div>
				</div>
			</article>
			
			<div class="half" style="background-color: #A0D9D9;"></div>
		</section>
	</div>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script type="text/javascript">
		$('.tabs .tab').click(function() {
			if ($(this).hasClass('signin')) {
				$('.tabs .tab').removeClass('active');
				$(this).addClass('active');
				$('.cont').hide();
				$('.signin-cont').show();
			}
			if ($(this).hasClass('signup')) {
				$('.tabs .tab').removeClass('active');
				$(this).addClass('active');
				$('.cont').hide();
				$('.signup-cont').show();
			}
		});
	</script>
</body>
</html>
