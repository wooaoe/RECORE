<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%request.setCharacterEncoding("UTF-8");%>
	<%response.setContentType("text/html; charset=UTF-8");%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    <%@ page import = "com.mvc.vo.Vo_Account" %>
    
    <%
	Vo_Account vo = (Vo_Account)session.getAttribute("vo");
	%>      
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>RECORE &mdash; PRODUCT</title>
    <meta charset="utf-8">
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

    <link rel="stylesheet" href="cssMain/styleProd.css">
    
  </head>
  <body>
  
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
        <div style = "text-align: center;"><a href = "../index.jsp"><img alt="" src = "imagesMain/logo.png"></a></div>
        
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
              	<c:if test="${empty vo }">
                <a href="../RECOREAccount/Acc_Login.jsp" class="d-flex align-items-center">
                 <span class="d-none d-md-inline-block" style="color:black;">로그인 &nbsp;&nbsp;</span>
                 </a>
                 
                 <a href="../RECOREAccount/Acc_Signup.jsp" class="d-flex align-items-center">
                  <span class="d-none d-md-inline-block" style="color:black;">회원가입 &nbsp;&nbsp;</span></a>
                  <br>
                  <a href="../RECOREMypage/Mypage_Main.jsp" class="d-flex align-items-center">
                  <span class="d-none d-md-inline-block" style="color:black;">마이페이지&nbsp;&nbsp;</span></a>
                  <br>
                  <a href="../RECOREAccount/Acc_Login.jsp" class="d-flex align-items-center">
                  <span class="d-none d-md-inline-block" style="color:black;">장바구니</span></a>
                 </c:if>
                
                <c:if test="${!empty vo }">
    				<a href="../../Account_Controller.do?command=logout" class="d-flex align-items-center">
    				<span class="d-none d-md-inline-block" style="color:black;">로그아웃&nbsp;&nbsp;</span></a>
    				<a href="../RECOREMypage/Mypage_Main.jsp" class="d-flex align-items-center">
    				<span class="d-none d-md-inline-block" style="color:black;">마이페이지&nbsp;&nbsp;</span></a>
    				<a href="../RECOREMypage/Mypage_Cart.jsp" class="d-flex align-items-center">
                    <span class="d-none d-md-inline-block" style="color:black;">장바구니</span></a>
    			</c:if>    
                
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
            <!--   <h1 class="mb-0 site-logo"><a href="../index.html">RECORE</a></h1> -->
            </div>
            <div class="col-10">
              <nav class="site-navigation text-right" role="navigation">
                <div class="container">
                  <div class="d-inline-block d-lg-none ml-md-0 mr-auto py-3"><a href="#" class="site-menu-toggle js-menu-toggle text-white"><span class="icon-menu h3"></span></a></div>

                  <ul class="site-menu js-clone-nav d-none d-lg-block">
                    <li class="has-children">
                      <a href="index.html" style = "color:black;">Funding</a>
                      <ul class="dropdown arrow-top">
                        <li><a href="#">조회</a></li>
                        <li><a href="#">등록</a></li>
                      </ul>
                    </li>
                    <li class="has-children">
                      <a href="Prod_All.jsp" style = "color:black;">Product</a>
                      <ul class="dropdown arrow-top">
                        <li><a href="BagAcc.jsp" style = "color:black;">Bag / Acc</a></li>
                        <li class = "has-children"><a href="Clothing.jsp" style = "color:black;">Clothing</a>
                        	<ul class = "dropdown arrow-down">
								<li><a href = "Outer.jsp">Outer</a></li>                        	
								<li><a href = "TOP.jsp">Top</a></li>                        	
								<li><a href = "Bottom.jsp">Bottom</a></li>                        	
                        	</ul>
                        </li>
                        <li><a href="#">Wallet</a></li>
                        <li class = "has-children"><a href="#">Life</a>
                        	<ul class = "dropdown arrow-down">
								<li><a href = "#">Supply</a></li>                        	
								<li><a href = "#">Home</a></li>                        	
                        	</ul>
                        </li>
                      </ul>
                    </li>
                    <li  class="has-children"><a href="news.html" style = "color:black;">Issue</a>
                    	<ul class="dropdown arrow-top">
                        <li><a href="#">News</a></li>
                        <li><a href="#">Exhibition</a></li>
                      </ul>
                    </li>
                    <li  class="has-children"><a href="news.html" style = "color:black;">Community</a>
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

    <div class="site-blocks-cover overlay inner-page" style="background-image: url(imagesMain/backimg.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row align-items-center">
         <div class="col-md-10">
         <!-- <span class="sub-text">Our Awesome</span> --> 
         	<br><br><br><br>
         	<h1>Clothing</h1>
         	<h5><span class="sub-text">&nbsp;Clothes</span></h5>
          </div>
        </div> 
      </div>
    </div>  
    
    

    <div class="site-section">
      <div class="container">
        <div class="row">
          <div class="col-lg-4 col-md-6 mb-4 project-entry">
            <a href="#" class="d-block figure">
              <img src="product/Sealand_Bettie_Breeze 대표이미지.jpg" alt="Image" class="img-fluid">
            </a>
            <h3 class="mb-0"><a href="#">Sealand Bettie Breeze</a></h3>
            <span class="text-muted">SEALAND GEAR</span><br>
            <span class = "mb-0"><b>223,000원</b></span>
          </div>
         
          
          <div class="col-lg-4 col-md-6 mb-4 project-entry">
            <a href="#" class="d-block figure">
              <img src="product/Sealand_Bettie_TT 대표이미지.jpg" alt="Image" class="img-fluid">
            </a>
            <h3 class="mb-0"><a href="#">Sealand Bettie TT</a></h3>
            <span class="text-muted">SEALAND GEAR</span><br>
            <span class = "mb-0"><b>223,000원</b></span>
            <br>
            <br>
          </div>
          
          
          <div class="col-lg-4 col-md-6 mb-4 project-entry">
            <a href="#" class="d-block figure">
              <img src="product/Sealand_Buddy S_Flare 대표이미지.jpg" alt="Image" class="img-fluid">
            </a>
            <h3 class="mb-0"><a href="#">Sealand Buddy S Flare</a></h3>
            <span class="text-muted">SEALAND GEAR</span><br>
            <span class = "mb-0"><b>141,000원</b></span>
          </div>
          <br>

          <div class="col-lg-4 col-md-6 mb-4 project-entry">
            <a href="#" class="d-block figure">
              <img src="product/Sealand_Buddy S_Lava 대표이미지.jpg" alt="Image" class="img-fluid">
            </a>
            <h3 class="mb-0"><a href="#">Sealand Buddy S Lava</a></h3>
            <span class="text-muted">SEALAND GEAR</span><br>
            <span class = "mb-0"><b>141,000원</b></span>
            <br>
            <br>
          </div>
          <br>
          
          <div class="col-lg-4 col-md-6 mb-4 project-entry">
            <a href="#" class="d-block figure">
              <img src="product/Sealand_Jolla_Vintage 대표이미지.jpg" alt="Image" class="img-fluid">
            </a>
            <h3 class="mb-0"><a href="#">Sealand Jolla Vintage</a></h3>
            <span class="text-muted">SEALAND GEAR</span><br>
            <span class = "mb-0"><b>147,000원</b></span>
          </div>
          <br>
          
          
          <div class="col-lg-4 col-md-6 mb-4 project-entry">
            <a href="#" class="d-block figure">
              <img src="product/ulkin01.jpg" alt="Image" class="img-fluid">
            </a>
            <h3 class="mb-0"><a href="Prod_SingleDetail.jsp">UL:KINxUPCYCLING LABEL FRAME CLUTCH_HASSAM</a></h3>
            <span class="text-muted">UL:KIN</span>
          </div>
          <br>
          
          <div class="col-lg-4 col-md-6 mb-4 project-entry">
            <a href="#" class="d-block figure">
              <img src="product/ulkin02.jpg" alt="Image" class="img-fluid">
            </a>
            <h3 class="mb-0"><a href="#">UL:KIN FRAME TOTE BAG FERNAND_BLACK</a></h3>
            <span class="text-muted">UL:KIN</span>
            <br>
            <br>
          </div>
          <br>
          
          <div class="col-lg-4 col-md-6 mb-4 project-entry">
            <a href="#" class="d-block figure">
              <img src="product/ulkin03.jpg" alt="Image" class="img-fluid">
            </a>
            <h3 class="mb-0"><a href="#">UL:KIN FRAME TOTE BAG FERNAND_NAVY</a></h3>
            <span class="text-muted">UL:KIN</span>
          </div>
          <br>
          
          <div class="col-lg-4 col-md-6 mb-4 project-entry">
            <a href="#" class="d-block figure">
              <img src="product/ulkin04.jpg" alt="Image" class="img-fluid">
            </a>
            <h3 class="mb-0"><a href="#">UL:KINxMODERN ALCHEMIST UGLY SHOES BAG_BLACK</a></h3>
            <span class="text-muted">UL:KIN</span>
          </div>
          <br>
          
          <div class="col-lg-4 col-md-6 mb-4 project-entry">
            <a href="#" class="d-block figure">
              <img src="product/ulkin05.jpg" alt="Image" class="img-fluid">
            </a>
            <h3 class="mb-0"><a href="#">UL:KINxMODERN ALCHEMIST UGLY SHOES BAG_WHITE</a></h3>
            <span class="text-muted">UL:KIN</span>
          </div>
          <br>
          
          <div class="col-lg-4 col-md-6 mb-4 project-entry">
            <a href="#" class="d-block figure">
              <img src="product/cucelyp01.jpg" alt="Image" class="img-fluid">
            </a>
            <h3 class="mb-0"><a href="#">600D Draw Backpack_GREEN</a></h3>
            <span class="text-muted">CUCELYP</span>
          </div>
          <br>
          
          <div class="col-lg-4 col-md-6 mb-4 project-entry">
            <a href="#" class="d-block figure">
              <img src="product/cucelyp02.jpg" alt="Image" class="img-fluid">
            </a>
            <h3 class="mb-0"><a href="#">600D Draw Backpack_NAVY</a></h3>
            <span class="text-muted">CUCELYP</span>
          </div>
          <br>
        </div>
      </div>
    </div>
  
  

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

           <!-- <div class="row">
              <div class="col-md-12">
                <h3 class="footer-heading mb-4">Follow Us</h3>

                <div>
                    <a href="#" class="pl-0 pr-3"><span class="icon-facebook"></span></a>
                  <a href="#" class="pl-3 pr-3"><span class="icon-twitter"></span></a>
                  <a href="#" class="pl-3 pr-3"><span class="icon-instagram"></span></a>
                  <a href="#" class="pl-3 pr-3"><span class="icon-linkedin"></span></a>
                </div>
              </div>
            </div>-->


          </div>
          
        </div>
        <div class="row pt-5 mt-5 text-center">
          <div class="col-md-12">
            <p>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            Copyright &copy;<script>document.write(new Date().getFullYear());</script> 
            All rights reserved | RECORE<!--  This template is made with <i class="icon-heart-o" aria-hidden="true"></i> by 
            <a href="https://colorlib.com" target="_blank" >Colorlib</a>
            Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            </p>
          </div>
          
        </div>
      </div>
    </footer>
  </div>

  <script src="js/jquery-3.3.1.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/jquery-ui.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/jquery.countdown.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/bootstrap-datepicker.min.js"></script>
  <script src="js/aos.js"></script>

  <script src="js/main.js"></script>
    
  </body>
</html>