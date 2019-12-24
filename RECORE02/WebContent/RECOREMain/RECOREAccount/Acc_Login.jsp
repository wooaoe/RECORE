<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="kr">
	<head>
	<meta charset="UTF-8">
	<title>로그인</title>
<link rel="stylesheet" href="AccountCss/AccountStyle.css">
<link rel="stylesheet" href="cssMain/style2.css">

<style type="text/css">

	body .container .half.bg img{
		background-color: #F56D3E;
	}
	
</style>
</head>
<body>


<!-- header 시작 -->

<%-- <%@ include file="/RECOREMain/RECOREAccount/header.jsp" %> --%>


 		<div id="header">
			<section class="menu">
	
	 <nav class="navtest">
	 	<a href = "../index.html"><img src = "Accimages/donut.png"/></a>
	 </nav>
		      	
</section>
	</div>



<div>
<section class="container">
	<article class="half">
		<h1>로그인</h1>
		<div class="tabs">
		<span class="tab signin active"><a href="../index.html">sign in</a></span>
		</div>
		
		<div class="content">
			<div class="signin-cont cont">
				<form action="#" method="post" enctype="multipart/form-data">
					<input type="text" name="email" id="email" class="inpt" required="required" placeholder="아이디">
					<label for="id">아이디</label>
					<input type="password" name="password" id="password" class="inpt" required="required" placeholder="비밀번호">
                	<label for="password">비밀번호</label>
					<input type="checkbox" id="remember" class="checkbox" checked>
					<label for="remember">아이디 저장</label>
					
					<div class="submit-wrap">
					
					<input type="submit" value="로그인" style = "text-align: center;" class="submit">
					<span class="tab signup active"><a href="Acc_Signup.jsp">회원가입</a></span>
					<a href="#" class="more">아이디/비밀번호 찾기</a>
					</div>
        		</form>
    		</div>
    		
    		<!-- @@@회원가입 없앰@@@ -->
    		
    	<!-- <div class="signup-cont cont">
            <form action="#" method="post" enctype="multipart/form-data">
				<input type="email" name="email" id="name" class="inpt" required="required" placeholder="Your name">
				<label for="name">Your name</label>
                <input type="email" name="email" id="email" class="inpt" required="required" placeholder="Your email">
				<label for="email">Your email</label>
				<input type="password" name="password" id="password" class="inpt" required="required" placeholder="Your password">
                <label for="password">Your password</label>
					<div class="submit-wrap">
						<input type="submit" value="Sign up" class="submit">
						<a href="#" class="more">Terms and conditions</a>
		</div>
        	</form>
        </div> -->
        
	</div>
</article>
		    
		    
	<div class="half" style = "background-color: #A0D9D9;"></div>
	</section>

</div>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> 
<script type="text/javascript">
$('.tabs .tab').click(function(){
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
/* $('.container .bg').mousemove(function(e){
    var amountMovedX = (e.pageX * -1 / 30);
    var amountMovedY = (e.pageY * -1 / 9);
    $(this).css('background-position', amountMovedX + 'px ' + amountMovedY + 'px');
}); */
</script>
</body>
</html>
