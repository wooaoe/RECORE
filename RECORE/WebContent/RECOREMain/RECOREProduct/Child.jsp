<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%request.setCharacterEncoding("UTF-8");%>
	<%response.setContentType("text/html; charset=UTF-8");%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ page import = "java.util.List" %>
	<%@ page import = "com.mvc.vo.Vo_Product" %>
	<%@ page import = "com.mvc.vo.Vo_Category_Detail" %>
	<%@ page import = "com.mvc.vo.Vo_Account" %>
	
	
	<%List<Vo_Product> child = (List)request.getAttribute("child"); %>
	<%Vo_Category_Detail cdvo2 = (Vo_Category_Detail)request.getAttribute("cdvo2"); %>
	<%! String kinds;%>
  	<% if(cdvo2.getCatd_no() == 6){
  		 kinds = "Bag/Acc";  
  	 }else if(cdvo2.getCatd_no() == 7){
  		 kinds = "OUTER";
  	 }else if(cdvo2.getCatd_no() == 8){
  		 kinds = "TOP";
  	 }else if(cdvo2.getCatd_no() == 9){
  		 kinds = "BOTTOM";
  	 }else if(cdvo2.getCatd_no() == 10){
  		 kinds = "WALLET";
  	 }else if(cdvo2.getCatd_no() == 11){
  		 kinds = "SUPPLY";
  	 }else if(cdvo2.getCatd_no() == 12){
  		 kinds = "HOME";
  	 }
  	%>
	
    
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>RECORE &mdash; <%=kinds%></title>
   	
   	<meta charset="utf-8">
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
    
    <!-- @@ RECORE favicon @@  -->
    <link rel="icon" href="<%=request.getContextPath()%>/images/recorefavi.png">
    
    <style type="text/css">
    	#img-fluid{
    		width: 350px;
    		height: 350px;
    	}   
    	html{
    		scroll-behavior: smooth;
    	}
    	.prodButtonWhite{
			background-color: white; 
			border:1px solid ;
			border-radius: 50%; 
			border-color:#a0d9d9; 
			width: 30px; 
			height: 30px; 
			text-align: center;
			float: left; 
			margin-right: 10px;
			cursor: pointer;
		}
		.prodButton{
			background-color: #a0d9d9; 
			border:2px solid ; 
			border-radius: 50%;  
			border-color:#a0d9d9; 
			width: 30px; 
			height: 30px; 
			text-align: center;
			float: left; 
			margin-right: 10px;
			cursor: pointer;
		}
    	
    	
    	
    	
    </style>
    
  </head>
  <body id = "body">
  
  <div class="site-wrap">

    <div class="site-wrap">

    <div class="site-mobile-menu">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div> <!-- .site-mobile-menu -->
    
    
    <div class="site-navbar-wrap" style="background-color: white;">
      <div class="site-navbar-top">
        <div class="container py-3">
       
        <!--@@ 로고 위치 @@-->
        <br>
        <div style = "text-align: center;"><a href = "<%=request.getContextPath()%>/RECOREMain/index.html">
        <img alt="" src = "<%=request.getContextPath()%>/images/logo2.png"></a></div>
        
          <div class="row align-items-center">
            <div class="col-6">
            </div>
            <div class="col-6">
              <div class="d-flex ml-auto" style = "position:relative; left: 100px;" >
               <form id="search" method="get" action="#" class="d-flex align-items-center ml-auto mr-4">
                	<!-- <input type="text" name="query" placeholder="Search" />
              		<a href="#search"> &nbsp; Search</a>  -->
              	</form>
              	
              	<!-- 로그인 안되어있을 때 -->
              	<c:if test="${empty vo }">
                <a href="<%=request.getContextPath()%>/Account_Controller.do?command=loginpage" class="d-flex align-items-center">
                 <span class="d-none d-md-inline-block" style="color:black;">로그인 &nbsp;&nbsp;</span>
                 </a>
                  <a href="<%=request.getContextPath()%>/Account_Controller.do?command=loginpage" class="d-flex align-items-center">
                  <span class="d-none d-md-inline-block" style="color:black;">회원가입 &nbsp;&nbsp;</span></a>
                  <br>
                  <a href="<%=request.getContextPath()%>/Account_Controller.do?command=loginpage" class="d-flex align-items-center">
                  <!-- <a href="RECOREMypage/Mypage_Main.jsp" class="d-flex align-items-center"> -->
                  <span class="d-none d-md-inline-block" style="color:black;">마이페이지&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></a>
                  <a href = "<%=request.getContextPath()%>/Account_Controller.do?command=loginpage">
                  <img class="d-none d-md-inline-block" src = "<%=request.getContextPath()%>/images/cart3.png"/>
                  </a>
                 </c:if>
                 
                 <!-- 로그인 되어있을 때 -->
                  <c:if test="${!empty vo }">
    				<a href="<%=request.getContextPath()%>/Account_Controller.do?command=logout" class="d-flex align-items-center">
    				<span class="d-none d-md-inline-block" style="color:black;">로그아웃&nbsp;&nbsp;</span></a>
    				<a href="<%=request.getContextPath()%>/mypage.do?command=main" class="d-flex align-items-center">
    				<span class="d-none d-md-inline-block" style="color:black;">마이페이지&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></a>
    				<a href = "<%=request.getContextPath()%>/mypage.do?command=cartlist">
                  <img class="d-none d-md-inline-block" src = "<%=request.getContextPath()%>/images/cart3.png"/></a>
    			</c:if>
                 
                 
                 
              </div>
            </div>
          </div>
        </div>
      </div>
      
      
      
      <div class="site-navbar">
        <div class="container py-1">
          <div class="row align-items-center">
            <div class="col-2">
            </div>
            <div class="col-10">
              <nav class="site-navigation text-right" role="navigation">
                <div class="container">
                  <div class="d-inline-block d-lg-none ml-md-0 mr-auto py-3"><a href="#" class="site-menu-toggle js-menu-toggle text-white"><span class="icon-menu h3"></span></a></div>

                  <ul class="site-menu js-clone-nav d-none d-lg-block" style = "position:relative; z-index: 1; left: 110px;">
                    <li class="has-children">
                      <a href="<%=request.getContextPath()%>/funding.do?command=selectAllFunding&pageno=1" style="color:black;">Funding</a>
                      <ul class="dropdown arrow-top">
                        <li><a href="<%=request.getContextPath()%>/funding.do?command=selectAllFunding&pageno=1">조회</a></li>
                        <li><a href="<%=request.getContextPath()%>/funding.do?command=createfundingpage">등록</a></li>
                      </ul>
                    </li>
                    <li class="has-children">
                    
                      <a href= "<%=request.getContextPath()%>/Product.do?command=ProdSelectAll&pageno=1" style= "color:black;">Product</a>
                      <ul class="dropdown arrow-top">
                        <li><a href="<%=request.getContextPath()%>/Product.do?command=ChildSelectAll&catdno=6&pageno=1">Bag/Acc</a></li>
                        <li class = "has-children"><a href="<%=request.getContextPath()%>/Product.do?command=ParentSelectAll&catdid=4&pageno=1">Clothing</a>
                        	<ul class = "dropdown arrow-down">
								<li><a href = "<%=request.getContextPath()%>/Product.do?command=ChildSelectAll&catdno=7&pageno=1">Outer</a></li>                        	
								<li><a href = "<%=request.getContextPath()%>/Product.do?command=ChildSelectAll&catdno=8&pageno=1">Top</a></li>                        	
								<li><a href = "<%=request.getContextPath()%>/Product.do?command=ChildSelectAll&catdno=9&pageno=1">Bottom</a></li>                        	
                        	</ul>
                        </li>
                        <li><a href="<%=request.getContextPath()%>/Product.do?command=ChildSelectAll&catdno=10&pageno=1">Wallet</a></li>
                        <li class = "has-children"><a href="<%=request.getContextPath()%>/Product.do?command=ParentSelectAll&catdid=6&pageno=1">Life</a>
                        	<ul class = "dropdown arrow-down">
								<li><a href = "<%=request.getContextPath()%>/Product.do?command=ChildSelectAll&catdno=11&pageno=1">Supply</a></li>                        	
								<li><a href = "<%=request.getContextPath()%>/Product.do?command=ChildSelectAll&catdno=12&pageno=1">Home</a></li>                        	
                        	</ul>
                        </li>
                      </ul>
                    </li>
                    <li  class="has-children"><a href="<%=request.getContextPath()%>/issue.do?command=selectAllNews&pageno=1" style="color:black;">Issue</a>
                    	<ul class="dropdown arrow-top">
                        <li><a href="<%=request.getContextPath()%>/issue.do?command=selectAllNews&pageno=1">News</a></li>
                        <li><a href="<%=request.getContextPath()%>/issue.do?command=selectAllExhibition&pageno=1">Exhibition</a></li>
                      </ul>
                    </li>
                    <li class="has-children"><a href="<%=request.getContextPath()%>/qna.do?command=qna_list&catd=all" style="color:black;">Community</a>
					    <ul class="dropdown arrow-top">
					    <li><a href="<%=request.getContextPath()%>/qna.do?command=qna_list&catd=all">QnA</a></li>
					    <li><a href="<%=request.getContextPath()%>/qna.do?command=review_list&catd=all">Review</a></li>
					    </ul>
					</li>
				
                  </ul>
                </div>
              </nav>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="site-blocks-cover overlay inner-page" style="background-image: url(<%=request.getContextPath()%>/RECOREMain/images/Pbackimg.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row align-items-center">
         <div class="col-md-10">
         	<br><br><br><br><br><br><br>
         	<h1>${cdvo2.catd_name}</h1>
         	<h5><span class="sub-text">&nbsp;Your beautiful Life</span></h5>
          </div>
        </div> 
      </div>
    </div>  
    <br><br>
    

     <div class="site-section">
      <div class="container">
            <div class="row" style = "position: relative; bottom: 50px;"> 
          <div class="col-12 text-center">
            <span class="sub-title">PRODUCT</span>
            <h2 class="font-weight-bold text-black mb-5"><%=kinds %></h2>
            		
					
<%
	
				if(session.getAttribute("vo") != null){
					Vo_Account vo_a = (Vo_Account)session.getAttribute("vo");

					if(vo_a.getAcc_m_c().equals("M")){		
%>	
		            <span class="" onclick="location.href='Product.do?command=insertpage'"
					style="background-color:#a0d9d9;
					width: 80px; 
					height: 30px;
					font-size:13px; 
					text-align: center;
					float: right; 
					padding-top: 3px;
					margin-bottom: 25px;
					color:white;">상품등록</span>
<%					
					}
				}			
%>		
			
          </div>
        </div>
        
        
        <div class="row">
          
          <!-- @@ 이미지 들어가는 곳 @@ -->
          <c:forEach begin = "${(page-1)*9}" end = "${((page-1)*9)+8}" var = "i">
          <c:choose>
          <c:when test="${i >= child.size()}">
          <div class="col-lg-4 col-md-6 mb-4 project-entry">
            <a href="" class="d-block figure">
            </a>
            <h3 class="mb-0"><a href=""></a></h3>
            <span class="text-muted"></span><br>
            <span class = "mb-0"><b></b></span>
          	<br><br>
          </div>
          </c:when>
		  <c:otherwise>      
          <div class="col-lg-4 col-md-6 mb-4 project-entry">
            <a href="Product.do?command=ProdDetail&pseq=${child.get(i).getProd_no()}&catdno=${child.get(i).getProd_catd()}" class="d-block figure">
            <%-- <%=request.getContextPath()%> --%>
              <img id = "img-fluid" src="<%=request.getContextPath()%>/RECOREMain/RECOREProduct/product/${child.get(i).getProd_no()}/f_img.png" alt="Image" class="img-fluid"> 
            </a>
            <h3 class="mb-0"><a href="Product.do?command=ProdDetail&pseq=${child.get(i).getProd_no()}&catdno=${child.get(i).getProd_catd()}">${child.get(i).getProd_name()}</a></h3>
            <span class="text-muted">${child.get(i).getProd_brand()}</span><br>
            <span class = "mb-0"><b><fmt:formatNumber value="${child.get(i).getProd_price()}" groupingUsed="true"></fmt:formatNumber>원</b></span>
          	<br><br>
          </div>
          </c:otherwise>    
          </c:choose>
          </c:forEach>
         
        </div>
        
        <div class="row" style="text-align: center;">
        	
        	<div class="" style="width:100%; margin-top:20px; text-align :center; padding-left: 44%;">
        		
        		<c:choose>
        			<c:when test="${page eq 1}">
		        		<div class="prodButtonWhite">1</div>
		        		<div class="prodButton" onclick="location.href='Product.do?command=ChildSelectAll&catdno=${child.get(i).getProd_catd()}&pageno=2'">2</div>
		        		<div class="prodButton" onclick="location.href='Product.do?command=ChildSelectAll&catdno=${child.get(i).getProd_catd()}&pageno=3'">3</div>
        			</c:when>
        			<c:otherwise>
		        		<div class="prodButton" onclick="location.href='Product.do?command=ChildSelectAll&catdno=${child.get(i).getProd_catd()}&pageno=${page-1 }'">${page-1 }</div>
        				<div class="prodButtonWhite" onclick="location.href='Product.do?command=ChildSelectAll&catdno=${child.get(i).getProd_catd()}&pageno=${page }'">${page}</div>
		        		<div class="prodButton" onclick="location.href='Product.do?command=ChildSelectAll&catdno=${child.get(i).getProd_catd()}&pageno=${page+1 }'">${page+1}</div>
        			</c:otherwise>
        			
        		</c:choose>
        	</div>
        </div>
         
        </div>
      </div>
    </div>


    <%@ include file="/footer.jsp" %>


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