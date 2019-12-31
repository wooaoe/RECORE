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
    
    <div class="site-section" style="padding:10px;">
    	<div class="" style="width:100%; text-align: right; margin-top:3rem; padding-right: 17%; ">
    	<div>
    	<img src="<%=request.getContextPath() %>/RECOREMain/images/icon/previous.png" width="20px" height="20px" style="margin-left: 10px" onclick="location.href='issue.do?command=newsPrepage&iss_no=${issue_vo.iss_no}'">
    	<img src="<%=request.getContextPath() %>/RECOREMain/images/icon/list.png" width="30px" height="30px" style="margin-left: 10px" onclick="location.href='issue.do?command=selectAllNews&pageno=${page}'">
    	<img src="<%=request.getContextPath() %>/RECOREMain/images/icon/next.png" width="20px" height="20px" style="margin-left: 10px" onclick="location.href='issue.do?command=newsNextpage&iss_no=${issue_vo.iss_no}'">    	
    	</div>
    	<div class="text-muted" style="font-size: 10pt;"></div>
    	</div>
    	<h1  style="margin-top:5rem; font-size: 3rem; text-align: center;" >${issue_vo.iss_title }</h1>
    	<div style="text-align: right; padding-right: 17%; padding-top: 30px; padding-bottom: 20px">${issue_vo.iss_regdate }</div>
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
          	<c:forEach begin="1" end="${issue_vo.iss_con_count }" var="i">
	            <div class="d-block mb-3" style="margin-left: 5%; width: 1000px">
			    	<img src="<%=request.getContextPath() %>/RECOREMain/RECOREIssue/images/${issue_vo.iss_no }/${issue_vo.iss_content }${i }.png" alt="Image" class="img-fluid">        	                  	
	            </div>
           	</c:forEach>
            
<!-- 
          <div class="col-lg-6 mb-5 mb-lg-0">
            <div class="img-border">
              <img src="images/img_5.jpg" alt="Image" class="img-fluid">
            </div>
          </div>
          
-->
          
          
<!--
          <div class="col-lg-6">
            <div class="row row-items">
              <div class="col-6">
                <a href="#" class="d-flex text-center feature active p-4 mb-4 bg-white">
                  <span class="align-self-center w-100">
                    <span class="d-block mb-3">
                      <span class="flaticon-step-ladder display-3"></span>
                    </span>
                    <h3>Pool Decor</h3>
                  </span>
                </a>
              </div>
              <div class="col-6">
                <a href="#" class="d-flex text-center feature active p-4 mb-4 bg-white">
                  <span class="align-self-center w-100">
                    <span class="d-block mb-3">
                      <span class="flaticon-sit-down display-3"></span>
                    </span>
                    <h3>Seat Decor</h3>
                  </span>
                </a>
              </div>
            </div>
            <div class="row row-items last">
              <div class="col-6">
                <a href="#" class="d-flex text-center feature active p-4 mb-4 bg-white">
                  <span class="align-self-center w-100">
                    <span class="d-block mb-3">
                      <span class="flaticon-turned-off display-3"></span>
                    </span>
                    <h3>Intuitive Idea</h3>
                  </span>
                </a>
              </div>
              <div class="col-6">
                <a href="#" class="d-flex text-center active feature active p-4 mb-4 bg-white">
                  <span class="align-self-center w-100">
                    <span class="d-block mb-3">
                      <span class="flaticon-window display-3"></span>
                    </span>
                    <h3>Decorations</h3>
                  </span>
                </a>
              </div>
            </div>
          </div>
-->
          
        </div>
        <div style="text-align: right; margin-right: 100px;">${issue_vo.iss_writer }</div>
    	<div style="text-align: right; margin-right: 100px;">${issue_vo.iss_source }</div>
    	<div style="text-align: right; margin-right: 100px;"><a href="${issue_vo.iss_note }">${issue_vo.iss_note }</a></div>
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