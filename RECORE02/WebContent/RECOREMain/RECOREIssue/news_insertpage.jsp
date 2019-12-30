<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% request.setCharacterEncoding("utf-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
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
    
  </head>
  <body>
  
  
	<!-- header -->
	<%@ include file="/header.jsp" %>
	
	
	
    <form action="issue.do?command=insertNews" method="post" enctype="multipart/form-data">
    <input type="hidden" name="iss_catd_no" value="${iss_catd_no }">
	<div class="site-section" style="padding:10px;">
    	<div class="" style="width:100%; text-align: right; margin-top:3rem; padding-right: 17%; ">
    	<div>  	
    	</div>
    	<div class="text-muted" style="font-size: 10pt;"></div>
    	</div>
    	<h1  style="margin-top:5rem; font-size: 3rem; text-align: center;" >
    	<input type="text" name="iss_title" placeholder="제목 입력" style="text-align: center; border: 2px solid gray">
    	</h1>
    	<div style="text-align: right; padding-right: 17%; padding-top: 30px; padding-bottom: 20px"></div>
    </div>



    <div class="site-section site-block-3 bg-light">
      <div class="container">
        <!--
        	<div class="img-border" style="margin-left: 29%">
              <img src="images/frontimg.png" alt="Image" class="img-fluid">
            </div>
            <br><br>
        -->
          	<fieldset style="background-color:white;">
	            <div class="d-block" style="text-align: center;">
	            	<ul style="margin-left:350px; font-size: 13px; list-style: none; text-align: left;">
	            	<br><br>
	            		<li>작성자 : &nbsp; &nbsp; <input type="text" name="iss_writer" placeholder="작성자 이름을 적어주세요." size="30"></li>
	            		<br>
	            		<li>출처 : &nbsp; &nbsp; &nbsp; &nbsp; <input type="text" name="iss_source" placeholder="출처를 적어주세요." size="30"></li>
	            		<br>
	            		<li>URL : &nbsp; &nbsp; &nbsp; &nbsp; <input type="text" name="iss_note" placeholder="URL을 적어주세요." size="50"></li>
	            		<br>
	            		<li>대표이미지 : &nbsp; <input type="file" name=iss_front_img accept=".png">
	            		<br><br>
	            		<li>썸네일이미지 : &nbsp; <input type="file" name=iss_th_img accept=".png">
	            		<br><br>
	            		<li>내용 : &nbsp; &nbsp; &nbsp; &nbsp; <input type="file" name=iss_content accept=".png">
	            	<br><br>	
	            	</ul>
	            	
	            </div>

            </fieldset>
            
            <br><br>
            <div style="text-align: center;"><input type="submit" value="글쓰기"> &nbsp; <input type="button" value="취소" onclick="location.href='<%=request.getContextPath()%>/issue.do?command=selectAllNews&pageno=1'"></div>

          
        </div>
      </div>
	</form>

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