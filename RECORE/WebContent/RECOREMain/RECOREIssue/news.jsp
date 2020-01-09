<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% request.setCharacterEncoding("utf-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>
<%@ page import="com.mvc.vo.Vo_Account" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <title>RECORE &mdash; NEWS</title>
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
    
	<style type="text/css">
		.newsButtonWhite{
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
		.newsButton{
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
  <body id="body">
  
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
                <a href="<%=request.getContextPath()%>/RECOREMain/RECOREAccount/Acc_Login.jsp" class="d-flex align-items-center">
                 <span class="d-none d-md-inline-block" style="color:black;">로그인 &nbsp;&nbsp;</span>
                 </a>
                  <a href="<%=request.getContextPath()%>/RECOREMain/RECOREAccount/Acc_Signup.jsp" class="d-flex align-items-center">
                  <span class="d-none d-md-inline-block" style="color:black;">회원가입 &nbsp;&nbsp;</span></a>
                  <br>
                  <a href="<%=request.getContextPath()%>/RECOREMain/RECOREAccount/Acc_Login.jsp" class="d-flex align-items-center">
                  <!-- <a href="RECOREMypage/Mypage_Main.jsp" class="d-flex align-items-center"> -->
                  <span class="d-none d-md-inline-block" style="color:black;">마이페이지&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></a>
                  <a href = "<%=request.getContextPath()%>/RECOREMain/RECOREAccount/Acc_Login.jsp">
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

    <div class="site-blocks-cover overlay inner-page" style="background-image: url(<%=request.getContextPath() %>/RECOREMain/RECOREIssue/backimg/news.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-md-10">
            <span class="sub-text"></span>
            <h1>News</h1>
          </div>
        </div>
      </div>
    </div>  

    <div class="site-section">
      <div class="container">
      
        <div class="row">
          <div class="col-12 text-center">
            <span class="sub-title">뉴스</span>
            <h2 class="font-weight-bold text-black mb-5">News</h2>
            		
					
<%
	
				if(session.getAttribute("vo") != null){
					Vo_Account vo_a = (Vo_Account)session.getAttribute("vo");

					if(vo_a.getAcc_m_c().equals("M")){		
%>	
		            <span class="" onclick="location.href='issue.do?command=insertpage&iss_catd_no=4'"
					style="background-color:#a0d9d9;
					width: 70px; 
					height: 30px;
					font-size:13px; 
					text-align: center;
					float: right; 
					padding-top: 3px;
					margin-bottom: 15px;
					color:white;">글쓰기</span>
<%					
					}
				}			
%>		
			
          </div>
        </div>
        
        <div class="row">
		
			<c:forEach begin="${(page-1)*8 }" end="${((page-1)*8)+7 }" var="vo">
				<c:choose>
					<c:when test="${vo >= issue_list.size() }">
						<div class="col-lg-3 col-md-6 mb-4">
				           <div class="person">
				             <div class="bio-img">
				               <div class="social">
								<span style="font-size: 8pt; color:white;"><b></b></span>
				               </div>
				             </div>
				             <h2><span style="font-size: 12pt;"><b></b></span></h2>
				             <span class="sub-title"></span>
				           </div>
				         </div>
					</c:when>
					<c:otherwise>
						<div class="col-lg-3 col-md-6 mb-4">
				           <div class="person" onclick="location.href='issue.do?command=selectOneNews&pageno=${page }&iss_no=${issue_list.get(vo).iss_no}'">
				             <div class="bio-img">
				                 <img src="<%=request.getContextPath() %>/RECOREMain/RECOREIssue/images/${issue_list.get(vo).iss_no }/th_img.png" alt="Image" class="img-fluid">
				               <div class="social">
								<span style="font-size: 8pt; color:white;"><b>${issue_list.get(vo).iss_source }</b></span>
				               </div>
				             </div>
				             <h2><span style="font-size: 12pt;"><b>${issue_list.get(vo).iss_title }</b></span></h2>
				             <span class="sub-title">${issue_list.get(vo).iss_writer }</span>
				           </div>
				         </div>
					</c:otherwise>
				</c:choose>
		         
			</c:forEach>
			
        </div>
        
        
        <div class="row" style="text-align: center;">
        	
        	<div class="" style="width:100%; margin-top:20px; text-align :center; padding-left: 44%;">
        		
        		<c:choose>
        			<c:when test="${page eq 1 }">
		        		<div class="newsButtonWhite">1</div>
		        		<div class="newsButton" onclick="location.href='issue.do?command=selectAllNews&pageno=2'">2</div>
		        		<div class="newsButton" onclick="location.href='issue.do?command=selectAllNews&pageno=3'">3</div>
        			</c:when>
        			<c:otherwise>
		        		<div class="newsButton" onclick="location.href='issue.do?command=selectAllNews&pageno=${page-1 }'">${page-1 }</div>
        				<div class="newsButtonWhite" onclick="location.href='issue.do?command=selectAllNews&pageno=${page }'">${page }</div>
		        		<div class="newsButton" onclick="location.href='issue.do?command=selectAllNews&pageno=${page+1 }'">${page+1}</div>
        			</c:otherwise>
        		</c:choose>
        		
        		
        	</div>
        	
        </div>
        
      </div>
    </div>

<!-- 
    <div class="site-half">
      <div class="img-bg-1" style="background-image: url('images/hero_bg_1.jpg');"></div>
      <div class="container">
        <div class="row no-gutters align-items-stretch">
          <div class="col-md-12 col-lg-7 ml-lg-auto py-5">
            <span class="sub-title">Architectural Design</span>
            <h2 class="font-weight-bold text-black font-secondary mb-4">Why Choose Us</h2>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus aliquid eius facilis voluptatem eligendi magnam accusamus vel commodi asperiores sint rem reprehenderit nobis nesciunt veniam qui fugit doloremque numquam quod.</p>
            <p class="mb-4">Lorem ipsum dolor sit amet consectetur adipisicing elit. Consectetur tempora distinctio ipsam nesciunt recusandae repellendus asperiores amet.</p>  

            <ul class="list-unstyled ul-check primary">
              <li>Lorem ipsum dolor sit amet consectetur</li>
              <li>Consectetur tempora distinctio ipsam</li>
              <li>Recusandae repellendus asperiores amet</li>
              <li>Lorem ipsum dolor sit amet consectetur</li>
              <li>Consectetur tempora distinctio ipsam</li>
            </ul>
          </div>
        </div>
      </div>
    </div>
-->
    <footer class="site-footer">
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
                  <a href="#" class="pl-3 pr-3"><span class="icon-linkedin"></span></a>
                </div>
              </div>
            </div>


          </div>
          
        </div>
        <div class="row pt-5 mt-5 text-center">
          <div class="col-md-12">
            <p>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank" >Colorlib</a>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            </p>
          </div>
          
        </div>
      </div>
    </footer>
  </div>

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