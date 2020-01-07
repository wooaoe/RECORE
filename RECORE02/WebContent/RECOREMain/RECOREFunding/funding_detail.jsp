<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% request.setCharacterEncoding("utf-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.mvc.vo.Vo_Funding" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <title>뉴스 &mdash; Colorlib Website Template</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito+Sans:200,300,400,700,900"> 
    <link rel="stylesheet" href="<%=request.getContextPath() %>/RECOREMain/fonts/icomoon/style.css">

    <link rel="stylesheet" href="<%=request.getContextPath() %>/RECOREMain/css/magnific-popup.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/RECOREMain/css/jquery-ui.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/RECOREMain/css/owl.carousel.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/RECOREMain/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/RECOREMain/css/bootstrap-datepicker.css">
    
    
    <link rel="stylesheet" href="<%=request.getContextPath() %>/RECOREMain/fonts/flaticon/font/flaticon.css">
  
    <link rel="stylesheet" href="<%=request.getContextPath() %>/RECOREMain/css/aos.css">

    <link rel="stylesheet" href="<%=request.getContextPath() %>/RECOREMain/css/style.css">
	<style>
	.state-box{
	position: relative;
	left: 19%;
	
	}
	.img-fluid{
	position: relative;
	}
	
	
		#title{
		color: #676363;
		font-family: Roboto, 'Noto Sans KR', sans-serif;
		font-size:28px;
		padding-top:10px;
		padding-bottom:100px;
	}
	#btn{
		
		position: relative;
		padding-top: 10px;
	    padding-bottom: 10px;
	    background-color: #F25430; 
	    border: 1px;
	    color: white;
		padding: 20px 100px;
	   	text-align: center;  
	    font-size: 20px;
	    cursor: pointer;
	    font-family: Roboto, 'Noto Sans KR', sans-serif;
	   	
	}
		#deadline{
		color: #676363;
		font-family: Roboto, 'Noto Sans KR', sans-serif;
		font-size:20px;
		padding-top: 10px;
		padding-bottom: 10px;
		
		}
		#target_price{
		color: #676363;
		font-family: Roboto, 'Noto Sans KR', sans-serif;
		font-size:20px;
		padding-top: 10px;
		padding-bottom: 10px;
		}
		#total-amount{
		color: #676363;
		font-family: Roboto, 'Noto Sans KR', sans-serif;
		font-size:20px;
		padding-top: 10px;
		padding-bottom: 10px;
		}
		#total-supporter{
		color: #676363;
		font-family: Roboto, 'Noto Sans KR', sans-serif;
		font-size:20px;
		padding-top: 10px;
		padding-bottom: 10px;
		}
		#creator{
		color: #676363;
		font-family: Roboto, 'Noto Sans KR', sans-serif;
		font-size:20px;
		padding-top: 10px;
		padding-bottom: 50px;
		}
	
	
	</style>    
        
    
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>       
    <script type="text/javascript">
    	
    	function deleteFunding(){
    		
    		var fund_no = "${funding_vo.fund_no}";
    		var pageno = "${page}";
    		
    		if(confirm("현재 펀딩을 삭제하시겠습니까?")){
    			location.href="funding.do?command=deleteFunding&pageno="+pageno+"&fund_no="+fund_no;
    		}else{
    			
    		}
    		
    	}
    	
    	
    	
    </script>
    
  </head>
  <body>
  
  
	<!-- header -->
	<%@ include file="/header.jsp" %>
    
    <div class="site-section" style="padding:10px;">
    	<div class="" style="width:100%; text-align: right; margin-top:3rem; padding-right: 17%; ">
    	<div>
    	<img src="<%=request.getContextPath() %>/RECOREMain/images/icon/previous.png" width="20px" height="20px" style="margin-left: 10px" onclick="location.href='funding.do?command=newsPrepage&fund_no=${funding_vo.fund_no}'">
    	<img src="<%=request.getContextPath() %>/RECOREMain/images/icon/list.png" width="30px" height="30px" style="margin-left: 10px" onclick="location.href='funding.do?command=selectAllNews&pageno=${page}'">
    	<img src="<%=request.getContextPath() %>/RECOREMain/images/icon/next.png" width="20px" height="20px" style="margin-left: 10px" onclick="location.href='funding.do?command=newsNextpage&fund_no=${funding_vo.fund_no}'">    	
    	</div>
    	<div class="text-muted" style="font-size: 10pt;"></div>
    	</div>
    	<h1  style="margin-top:5rem; font-size: 3rem; text-align: center; padding-bottom: 60px" >${funding_vo.fund_title }</h1>
    	<!--  div style="text-align: right; padding-right: 17%; padding-top: 30px; padding-bottom: 20px">${funding_vo.fund_regdate }</div-->
    </div>



    <div class="site-section site-block-3 bg-light">
      <div class="container">
        <div class="row">
        <!--
        	<div class="img-border" style="margin-left: 29%">
              <img src="images/frontimg.png" alt="Image" class="img-fluid">
            </div>
            <br><br>
        -->
        
          	<c:forEach begin="1" end="${funding_vo.fund_con_count }" var="i">
          	
	            <div class="d-block mb-3" style="margin-left: 0%; width: 600px">
			    	<img src="<%=request.getContextPath() %>/RECOREMain/RECOREFunding/images/${funding_vo.fund_no }/${funding_vo.fund_content }.png" alt="Image" class="img-fluid">        	                  	
 
	         </div>
	<div class="state-box" >
	 	
 		<div id=deadline >
<p class="remaining-day"  >${funding_vo.fund_deadline } 펀딩 종료</p></div>
<div id="countDay">
</div>
<script>
var x = setInterval(function() {
var t1=moment('${funding_vo.fund_deadline}');
var now=moment();
var diffTime={
		d:moment.duration(t1.diff(now)).days(),
		h:moment.duration(t1.diff(now)).hours(),
		m:moment.duration(t1.diff(now)).minutes(),
		s:moment.duration(t1.diff(now)).seconds()
		
}
console.log(diffTime.d +"일"+diffTime.h+"시간"+diffTime.m+"분"+diffTime.s+"초");
document.getElementById("countDay").innerHTML = "펀딩종료까지 " + diffTime.d +"일 " + diffTime.h + "시간 " + diffTime.m + "분 "+diffTime.s+"초 남았습니다.";


});
</script>
 <!-- <p class="rate-bar"><em style="width:156%"></em></p>      
  <!--  p class="achievement-rate"><strong>156</strong>% 달성</p>-->
		<div id=target_price> <p class="target_price"><strong>목표금액  ${funding_vo.fund_target_price } 원</strong></p></div>	
<p class="total-amount"><strong></strong></p>
<p class="total-supporter"><strong></strong></p>
		<div id=creator> 메이커 정보: 
	${funding_vo.fund_creator }
		</div>
	
	<div class="button" id="btn">
	                    펀딩하기
	</div>
	                  
	               
  </div>
	            
           	</c:forEach>
  
          
        </div>
       <div style="text-align: right; margin-right: 100px;"><button id="deletebtn" onclick="deleteFunding()">글삭제</button></div>
      </div>
    </div>


	<!-- footer -->
	<%@ include file="/footer.jsp" %>	    



  <script src="<%=request.getContextPath() %>/RECOREMain/js/jquery-3.3.1.min.js"></script>
  <script src="<%=request.getContextPath() %>/RECOREMain/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="<%=request.getContextPath() %>/RECOREMain/js/jquery-ui.js"></script>
  <script src="<%=request.getContextPath() %>/RECOREMain/js/popper.min.js"></script>
  <script src="<%=request.getContextPath() %>/RECOREMain/js/bootstrap.min.js"></script>
  <script src="<%=request.getContextPath() %>/RECOREMain/js/owl.carousel.min.js"></script>
  <script src="<%=request.getContextPath() %>/RECOREMain/js/jquery.stellar.min.js"></script>
  <script src="<%=request.getContextPath() %>/RECOREMain/js/jquery.countdown.min.js"></script>
  <script src="<%=request.getContextPath() %>/RECOREMain/js/jquery.magnific-popup.min.js"></script>
  <script src="<%=request.getContextPath() %>/RECOREMain/js/bootstrap-datepicker.min.js"></script>
  <script src="<%=request.getContextPath() %>/RECOREMain/js/aos.js"></script>

  <script src="<%=request.getContextPath() %>/RECOREMain/js/main.js"></script>
    
  </body>
</html>