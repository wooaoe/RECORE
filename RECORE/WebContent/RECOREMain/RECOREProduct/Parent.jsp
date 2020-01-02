<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%request.setCharacterEncoding("UTF-8");%>
	<%response.setContentType("text/html; charset=UTF-8");%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ page import="com.mvc.vo.Vo_Category_Detail"%>
    <%@ page import="com.mvc.vo.Vo_Product"%>
    <%@ page import = "java.util.List"%>
	
	<% List<Vo_Product> parent = (List)request.getAttribute("parent"); %>
	<% List<Vo_Category_Detail> cdlist = (List)request.getAttribute("cdlist"); %>
	<% Vo_Category_Detail cdvo = (Vo_Category_Detail)request.getAttribute("cdvo"); %>
	<%! String kinds;%>
  	<% if(cdlist.get(0).getCatd_id() == 4){
  		 kinds = "CLOTHING";  
  	 }else if(cdlist.get(0).getCatd_id() == 6){
  		 kinds = "LIFE";
  	 }
  	%>
  	
  	
  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RECORE - <%=kinds%></title>
<meta charset="utf-8">
    <%@ include file = "/head.jsp" %>
    
    <style type="text/css">
    	#img-fluid{
    		max-width: 350px;
    		height: 350px;
    	}   
    	html{
    		scroll-behavior: smooth;
    	} 
    </style>
    
  </head>
  
  <body id = "body">
  
  <div class="site-wrap">

    <div class="site-mobile-menu">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div> <!-- .site-mobile-menu -->
    
    
    <div class="site-navbar-wrap" style = "background-color: white;">
      <div class="site-navbar-top">
        <div class="container py-3">
        
        <!-- @@@로고 위치 @@@-->
        <br>
        <div style = "text-align: center;"><a href = "<%=request.getContextPath()%>/RECOREMain/index.jsp">
        <img alt="" src = "<%=request.getContextPath()%>/images/logo2.png"></a></div>
        
          <div class="row align-items-center">
            <div class="col-6">
              <!-- <a href="#" class="p-2 pl-0"><span class="icon-twitter"></span></a>
              <a href="#" class="p-2 pl-0"><span class="icon-facebook"></span></a>
              <a href="#" class="p-2 pl-0"><span class="icon-linkedin"></span></a>
              <a href="#" class="p-2 pl-0"><span class="icon-instagram"></span></a> -->
            </div>
            
            <div class="col-6">
              <div class="d-flex ml-auto">
              
               <form id="search" method="get" action="#" class="d-flex align-items-center ml-auto mr-4">
                	<!-- <input type="text" name="query" placeholder="Search" />
              		<a href="#search"> &nbsp; Search</a>  -->
              	</form>
                <a href="<%=request.getContextPath()%>/RECOREMain/RECOREAccount/Acc_Login.jsp" class="d-flex align-items-center">
                 <span class="d-none d-md-inline-block" style="color:black;">로그인&nbsp;&nbsp;</span>
                 </a>
                 
                 <a href="<%=request.getContextPath()%>/RECOREMain/RECOREAccount/Acc_Signup.jsp" class="d-flex align-items-center">
                  <span class="d-none d-md-inline-block" style="color:black;">회원가입 &nbsp;&nbsp;</span></a>
                  <br>
                  <a href="<%=request.getContextPath()%>/RECOREMain/RECOREMypage/Mypage_Main.jsp" class="d-flex align-items-center">
                  <span class="d-none d-md-inline-block" style="color:black;">마이페이지&nbsp;&nbsp;</span></a>
                  <br>
                  <a href="<%=request.getContextPath()%>/RECOREMain/RECOREMypage/Mypage_Cart.jsp" class="d-flex align-items-center">
                  <span class="d-none d-md-inline-block" style="color:black;">장바구니&nbsp;&nbsp;</span></a>
                 
                
                <!--              
                <a href="#" class="d-flex align-items-center">
                  <span class="icon-phone mr-2"></span>
                  <span class="d-none d-md-inline-block">회원가입</span>
                </a> --> 
                 
              </div>
            </div>
          </div>
        </div>
      </div>
      
      
      
      
      <div class="site-navbar">
        <div class="container py-1">
          <div class="row align-items-center">
            <div class="col-2">
              <!-- <h1 class="mb-0 site-logo"><a href="index.html">Interior</a></h1> -->
            </div>
            <div class="col-10">
              <nav class="site-navigation text-right" role="navigation">
                <div class="container">
                  <div class="d-inline-block d-lg-none ml-md-0 mr-auto py-3"><a href="#" class="site-menu-toggle js-menu-toggle text-white"><span class="icon-menu h3"></span></a></div>

                  <ul class="site-menu js-clone-nav d-none d-lg-block">
                    <li class="has-children">
                      <a href="index.html" style="color:black;">Funding</a>
                      <ul class="dropdown arrow-top">
                        <li><a href="#">조회</a></li>
                        <li><a href="#">등록</a></li>
                      </ul>
                    </li>
                    <li class="has-children">
                    
                      <a href= "Product.do?command=ProdSelectAll" style= "color:black;">Product</a>
                      <ul class="dropdown arrow-top">
                        <li><a href="Product.do?command=ChildSelectAll&catdno=6">Bag/Acc</a></li>
                        <li class = "has-children"><a href="Product.do?command=ParentSelectAll&catdid=4">Clothing</a>
                        	<ul class = "dropdown arrow-down">
								<li><a href = "Product.do?command=ChildSelectAll&catdno=7">Outer</a></li>                        	
								<li><a href = "Product.do?command=ChildSelectAll&catdno=8">Top</a></li>                        	
								<li><a href = "Product.do?command=ChildSelectAll&catdno=9">Bottom</a></li>                        	
                        	</ul>
                        </li>
                        <li><a href="Product.do?command=ChildSelectAll&catdno=10">Wallet</a></li>
                        <li class = "has-children"><a href="Product.do?command=ParentSelectAll&catdid=6">Life</a>
                        	<ul class = "dropdown arrow-down">
								<li><a href = "Product.do?command=ChildSelectAll&catdno=11">Supply</a></li>                        	
								<li><a href = "Product.do?command=ChildSelectAll&catdno=12">Home</a></li>                        	
                        	</ul>
                        </li>
                      </ul>
                    </li>
                    <li  class="has-children"><a href="news.html" style="color:black;">Issue</a>
                    	<ul class="dropdown arrow-top">
                        <li><a href="news.html">News</a></li>
                        <li><a href="exhibition.html">Exhibition</a></li>
                      </ul>
                    </li>
                    <li  class="has-children"><a href="news.html" style="color:black;">Community</a>
                    	<ul class="dropdown arrow-top">
                        <li><a href="#">QnA</a></li>
                        <li><a href="#">Review</a></li>
                      </ul>
                    </li>
<!--
                    <li><a href="services.html">Services</a></li>
                    <li><a href="contact.html">Contact</a></li>
-->
                  </ul>
                </div>
              </nav>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="site-blocks-cover overlay inner-page" style="background-image: url(<%=request.getContextPath()%>/RECOREMain/images/backimg.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row align-items-center">
         <div class="col-md-10">
         <!-- <span class="sub-text">Our Awesome</span> --> 
         	<br><br><br><br>
         	<h1><%=kinds%></h1>
         	<h5><span class="sub-text">Your beautiful Life</span></h5>
          </div>
        </div> 
      </div>
    </div>  
    
    

    <div class="site-section">
      <div class="container">
        <div class="row">
          
          <!-- @@ 이미지 들어가는 곳 @@ -->
          
          <c:forEach var = "par" items = "${parent}">
          <div class="col-lg-4 col-md-6 mb-4 project-entry">
            <a href="Product.do?command=ProdDetail&pseq=${par.prod_no}" class="d-block figure">
            <%-- <%=request.getContextPath()%> --%>
              <img id = "img-fluid" src="<%=request.getContextPath()%>/RECOREMain/RECOREProduct/product/${par.prod_no}/f_img.png" alt="Image" class="img-fluid"> 
            </a>
            <h3 class="mb-0"><a href="Product.do?command=ProdDetail&pseq=${par.prod_no}">${par.prod_name}</a></h3>
            <span class="text-muted">${par.prod_brand}</span><br>
            <span class = "mb-0"><b><fmt:formatNumber value="${par.prod_price}" groupingUsed="true"></fmt:formatNumber>원</b></span>
          	<br><br>
          </div>
          </c:forEach>
         
		  	         
         
        </div>
      </div>
    </div>

	 <!-- 상단으로 올라가기 -->
    <div style = "position: fixed; bottom: 30px; right: 30px;">
		<a href = "#body"><img src = "<%=request.getContextPath()%>/images/up-arrow.png" /></a>
	</div>

    <%@ include file="/footer.jsp" %>
    
  </div>

  <script src="<%=request.getContextPath()%>/RECOREMain/js/jquery-3.3.1.min.js"></script>
  <script src="<%=request.getContextPath()%>/RECOREMain/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="<%=request.getContextPath()%>/RECOREMain/js/jquery-ui.js"></script>
  <script src="<%=request.getContextPath()%>/RECOREMain/js/popper.min.js"></script>
  <script src="<%=request.getContextPath()%>/RECOREMain/js/bootstrap.min.js"></script>
  <script src="<%=request.getContextPath()%>/RECOREMain/js/owl.carousel.min.js"></script>
  <script src="<%=request.getContextPath()%>/RECOREMain/js/jquery.stellar.min.js"></script>
  <script src="<%=request.getContextPath()%>/RECOREMain/js/jquery.countdown.min.js"></script>
  <script src="<%=request.getContextPath()%>/RECOREMain/js/jquery.magnific-popup.min.js"></script>
  <script src="<%=request.getContextPath()%>/RECOREMain/js/bootstrap-datepicker.min.js"></script>
  <script src="<%=request.getContextPath()%>/RECOREMain/js/aos.js"></script>

  <script src="<%=request.getContextPath()%>/RECOREMain/js/main.js"></script>

</body>
</html>