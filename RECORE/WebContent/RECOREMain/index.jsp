<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%request.setCharacterEncoding("UTF-8");%>
	<%response.setContentType("text/html; charset=UTF-8");%>
	
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    <%@ page import = "com.mvc.vo.Vo_Account" %>
    
    <% Vo_Account vo = (Vo_Account)session.getAttribute("vo"); %>
	
    
<!DOCTYPE html>
<html lang="en">
  <head>
    
    <title>RECORE &mdash; RECORE</title>
    <%@ include file = "/head.jsp" %>
    
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
        <div style = "text-align: center;"><a href = "<%=request.getContextPath()%>/RECOREMain/index.jsp">
        <img alt="" src = "<%=request.getContextPath()%>/images/logo2.png"></a></div>
        
        
          <div class="row align-items-center">
            <div class="col-6">
            </div>
            <div class="col-6">
              <div class="d-flex ml-auto" >
               <form id="search" method="get" action="#" class="d-flex align-items-center ml-auto mr-4">
                	<!-- <input type="text" name="query" placeholder="Search" />
              		<a href="#search"> &nbsp; Search</a>  -->
              	</form>
              	
              	<!-- 로그인 안되어있을 때 -->
              	<c:if test="${empty vo }">
                <a href="RECOREAccount/Acc_Login.jsp" class="d-flex align-items-center">
                 <span class="d-none d-md-inline-block" style="color:black;">로그인 &nbsp;&nbsp;</span>
                 </a>
                  <a href="RECOREAccount/Acc_Signup.jsp" class="d-flex align-items-center">
                  <span class="d-none d-md-inline-block" style="color:black;">회원가입 &nbsp;&nbsp;</span></a>
                  <br>
                  <a href="<%=request.getContextPath()%>/mypage.do?command=main" class="d-flex align-items-center">
                  <!-- <a href="RECOREMypage/Mypage_Main.jsp" class="d-flex align-items-center"> -->
                  <span class="d-none d-md-inline-block" style="color:black;">마이페이지&nbsp;&nbsp;</span></a>
                  <a href="<%=request.getContextPath()%>/mypage.do?command=cartlist" class="d-flex align-items-center">
                  <span class="d-none d-md-inline-block" style="color:black;">장바구니</span></a>
                 </c:if>
                 
                 <!-- 로그인 안되어있을 때 -->
                  <c:if test="${!empty vo }">
    				<a href="../Account_Controller.do?command=logout" class="d-flex align-items-center">
    				<span class="d-none d-md-inline-block" style="color:black;">로그아웃&nbsp;&nbsp;</span></a>
    				<a href="<%=request.getContextPath()%>/mypage.do?command=main" class="d-flex align-items-center">
    				<span class="d-none d-md-inline-block" style="color:black;">마이페이지&nbsp;&nbsp;</span></a>
    				<a href="<%=request.getContextPath()%>/mypage.do?command=cartlist" class="d-flex align-items-center">
                    <span class="d-none d-md-inline-block" style="color:black;">장바구니</span></a>
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
                    
                      <a href= "../Product.do?command=ProdSelectAll" style= "color:black;">Product</a>
                      <ul class="dropdown arrow-top">
                        <li><a href="../Product.do?command=ChildSelectAll&catdno=6">Bag/Acc</a></li>
                        <li class = "has-children"><a href="../Product.do?command=ParentSelectAll&catdid=4">Clothing</a>
                        	<ul class = "dropdown arrow-down">
								<li><a href = "../Product.do?command=ChildSelectAll&catdno=7">Outer</a></li>                        	
								<li><a href = "../Product.do?command=ChildSelectAll&catdno=8">Top</a></li>                        	
								<li><a href = "../Product.do?command=ChildSelectAll&catdno=9">Bottom</a></li>                        	
                        	</ul>
                        </li>
                        <li><a href="../Product.do?command=ChildSelectAll&catdno=10">Wallet</a></li>
                        <li class = "has-children"><a href="../Product.do?command=ParentSelectAll&catdid=6">Life</a>
                        	<ul class = "dropdown arrow-down">
								<li><a href = "../Product.do?command=ChildSelectAll&catdno=11">Supply</a></li>                        	
								<li><a href = "../Product.do?command=ChildSelectAll&catdno=12">Home</a></li>                        	
                        	</ul>
                        </li>
                      </ul>
                    </li>
                    <li  class="has-children"><a href="../issue.do?command=selectAllNews&pageno=1" style="color:black;">Issue</a>
                    	<ul class="dropdown arrow-top">
                        <li><a href="../issue.do?command=selectAllNews&pageno=1">News</a></li>
                        <li><a href="../issue.do?command=selectAllExhibition&pageno=1">Exhibition</a></li>
                      </ul>
                    </li>
                    <li  class="has-children"><a href="news.html" style="color:black;">Community</a>
                    	<ul class="dropdown arrow-top">
                        <li><a href="qna.do?command=qna_list&catd=all">QnA</a></li>
                        <li><a href="qna.do?command=review_list">Review</a></li>
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


    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
          <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="5"></li>
          </ol>
          <div class="carousel-inner" role="listbox">
            <div class="carousel-item active">
                <div class="site-blocks-cover overlay" style="background-image: url(images/backimg.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
      				<br><br>
      				<div class="container">
      				  <div class="row align-items-center text-center justify-content-center">
  				        <div class="col-md-8">
   				         <span class="sub-text">RECORE</span>
   				         <h1>DOKGO SUJI</h1>
  				        </div>
   				     </div>
 				     </div>
 				   </div> 
            </div>
            <div class="carousel-item">
                <div class="site-blocks-cover overlay" style="background-image: url(images/img01.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
      				<br><br>
      				<div class="container">
      				  <div class="row align-items-center text-center justify-content-center">
  				        <div class="col-md-8">
   				         <span class="sub-text">RECORE</span>
   				         <h1>NAMGUNG SUNGIL</h1>
  				        </div>
   				     </div>
 				     </div>
 				   </div>
     	        </div>
            <div class="carousel-item">
                <div class="site-blocks-cover overlay" style="background-image: url(images/img02.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
      				<br><br>
      				<div class="container">
      				  <div class="row align-items-center text-center justify-content-center">
  				        <div class="col-md-8">
   				         <span class="sub-text">RECORE</span>
   				         <h1>SUNWO SEUNGHYE</h1>
  				        </div>
   				     </div>
 				     </div>
 				   </div> 
           		</div>
           		<div class="carousel-item">
                <div class="site-blocks-cover overlay" style="background-image: url(images/img02.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
      				<br><br>
      				<div class="container">
      				  <div class="row align-items-center text-center justify-content-center">
  				        <div class="col-md-8">
   				         <span class="sub-text">RECORE</span>
   				         <h1>HWANGBO DOYOUNG</h1>
  				        </div>
   				     </div>
 				     </div>
 				   </div> 
           		</div>
           		<div class="carousel-item">
                <div class="site-blocks-cover overlay" style="background-image: url(images/img02.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
      				<br><br>
      				<div class="container">
      				  <div class="row align-items-center text-center justify-content-center">
  				        <div class="col-md-8">
   				         <span class="sub-text">RECORE</span>
   				         <h1>JAEKAL HEEJIN</h1>
  				        </div>
   				     </div>
 				     </div>
 				   </div> 
           		</div>
           		<div class="carousel-item">
                <div class="site-blocks-cover overlay" style="background-image: url(images/img02.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
      				<br><br>
      				<div class="container">
      				  <div class="row align-items-center text-center justify-content-center">
  				        <div class="col-md-8">
   				         <span class="sub-text">RECORE</span>
   				         <h1>PANG DONGHYUN</h1>
  				        </div>
   				     </div>
 				     </div>
 				   </div> 
           		</div>
          </div>
          <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>
 
<!-- 
    <div class="site-blocks-cover overlay" style="background-image: url(images/backimg.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row align-items-center text-center justify-content-center">
          <div class="col-md-8">
            <span class="sub-text">Interior Design Company</span>
            <h1>Experience Interior Design</h1>
          </div>
        </div>
      </div>
    </div>  
--> 
 
    
<!--

    <div class="site-block-1">
      <div class="container">
        <div class="row">
          <div class="col-lg-4">
            <a href="#" class="site-block-feature d-flex p-4 rounded mb-4">
              <div class="mr-3">
                <span class="icon flaticon-window font-weight-light h2"></span>
              </div>
              <div class="text">
                <h3>Interior Architecture</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
              </div>
            </a>   
          </div>
          <div class="col-lg-4">
            <a href="#" class="site-block-feature d-flex p-4 rounded mb-4">
              <div class="mr-3">
                <span class="icon flaticon-measuring font-weight-light h2"></span>
              </div>
              <div class="text">
                <h3>Interior Design</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
              </div>
            </a>
          </div>
          <div class="col-lg-4">
            <a href="#" class="site-block-feature d-flex p-4 rounded mb-4">
              <div class="mr-3">
                <span class="icon flaticon-interior-design font-weight-light h2"></span>
              </div>
              <div class="text">
                <h3>Furniture</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
              </div>
            </a>
          </div>
        </div>
      </div>
    </div>

-->



    <div class="site-section  border-bottom">
    
      <div class="container">
        <div class="row">
		  <div class="col-lg-4 col-md-6 mb-5 mb-lg-0">
          </div>
          
          <div class="col-lg-4 col-md-6 mb-5 mb-lg-0">
			<span class="sub-title" align="center">Funding</span>
            <h2  align="center" style="margin-bottom: 50px"><b>이 펀딩 어때요?</b></h2>
          </div>

          <div class="col-lg-4 col-md-6 mb-5 mb-lg-0">
          </div>
      	</div>
      </div>
      
      
      
      <div class="container">
        <div class="row">
        
		  <div class="col-lg-4 col-md-6 mb-4 project-entry">
            <a href="#" class="d-block figure">
              <img src="images/fundimg/fundimg1.png" alt="Image" class="img-fluid">
            </a>
            <h3 class="mb-0"><a href="#">funding 1</a></h3>
            <span class="text-muted">Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin..</span><br>
          </div>


		  <div class="col-lg-4 col-md-6 mb-4 project-entry">
            <a href="#" class="d-block figure">
              <img src="images/fundimg/fundimg2.png" alt="Image" class="img-fluid">
            </a>
            <h3 class="mb-0"><a href="#">funding 2</a></h3>
            <span class="text-muted">Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin..</span><br>
          </div>

		  <div class="col-lg-4 col-md-6 mb-4 project-entry">
            <a href="#" class="d-block figure">
              <img src="images/fundimg/fundimg3.png" alt="Image" class="img-fluid">
            </a>
            <h3 class="mb-0"><a href="#">funding 3</a></h3>
            <span class="text-muted"> Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin..</span><br>
          </div>

        </div>
        
        <!-- <div class="row mt-5 text-center">
          <div class="col-12">
            <p><a href="#" class="btn btn-primary btn-lg rounded-0">View All Posts</a></p>
          </div>
        </div> -->
        
      </div>
    </div>

    
<!--
    <div class="site-section">
      <div class="container">
        <div class="row">
          <div class="col-lg-6 mb-5 mb-lg-0">
            <div class="img-border">
              <img src="images/img_3.jpg" alt="Image" class="img-fluid">
            </div>
          </div>
          <div class="col-lg-5 ml-auto">
            <span class="sub-title">Why Us</span>
            <h2 class="font-weight-bold text-black mb-5">Why Us</h2>
            <div class="accordion" id="accordionExample">
              
              <h2 class="mb-0 border rounded mb-2">
                <button class="btn " type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                  1. What Should I Do If My Interior Broken?
                </button>
              </h2>

              <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
                <div class="card-body">
                  <p>Lorem ipsum dolor sit amet, <a href="#">Cnsectetur adipisicing</a> elit. Eos quos incidunt, perspiciatis, ad saepe, magnam error adipisci vitae ut provident alias! Odio debitis error ipsum molestiae voluptas accusantium quibusdam animi, soluta explicabo asperiores aliquid, modi natus suscipit deleniti. Corrupti, autem.</p>
                </div>
              </div>
            
              <h2 class="mb-0 border rounded mb-2">
                <button class="btn collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                  2. What Is Your Location?
                </button>
              </h2>
             
              <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
                <div class="card-body">
                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellat voluptate animi hic quasi sequi odio, vitae dolorum soluta sapiente debitis ad similique tempore, aliquam quae nam deserunt dicta ullam perspiciatis minima, quam. Quis repellat corporis aperiam, veritatis nemo iure inventore.</p>
                </div>
              </div>
           
              <h2 class="mb-0 border rounded mb-2">
                <button class="btn collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                  3. Robus Building
                </button>
              </h2>
              
              <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
                <div class="card-body">
                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsum et dolorum libero consequuntur facere molestias beatae quod labore quidem ad quasi eius pariatur quae nam quo soluta optio dicta, doloribus ullam fugit nulla! Itaque necessitatibus eum sed quam eos id!</p>
                </div>
              </div>

              <h2 class="mb-0 border rounded mb-2">
                <button class="btn collapsed" type="button" data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                  4. What Is Your Main Services?
                </button>
              </h2>

              <div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordionExample">
                <div class="card-body">
                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eos quos incidunt, perspiciatis, ad saepe, magnam error adipisci vitae ut provident alias! Odio debitis error ipsum molestiae voluptas accusantium quibusdam animi, soluta explicabo asperiores aliquid, modi natus suscipit deleniti. Corrupti, autem.</p>
                </div>
              </div>
             
            </div>

          </div>
        </div>
      </div>
    </div>

 -->
    
    <div class="container site-section block-13 testimonial-wrap">

      <div class="row">
        <div class="col-12 text-center">
          <span class="sub-title"><a href = "exhibition.html" style = "color:#F56D3E;">Exhibition</a></span>
          <h2 class="font-weight-bold text-black mb-5"><a href = "exhibition.html" style = "color:black;">기획전 & 전시</a></h2>
        </div>
      </div>

      <div class="nonloop-block-13 owl-carousel">
        
        <div class="" style="padding:10px;">
          <img src="images/exhibition_img/main_img1.png" alt="Image" style="margin:0 auto 30px auto;margin-left: 30px;">
          <h5 class="mb-0" style="margin-left: 30px;">Exhibition 1</h5>
        </div>
      
        <div class="" style="padding:10px;">
          <img src="images/exhibition_img/main_img2.png" alt="Image" style="margin:0 auto 30px auto;margin-left: 30px;">
          <h5 class="mb-0" style="margin-left: 30px;">Exhibition 2</h5>
        </div>
        
        <div class="" style="padding:10px;">
          <img src="images/exhibition_img/main_img3.png" alt="Image" style="margin:0 auto 30px auto;margin-left: 30px;">
          <h5 class="mb-0" style="margin-left: 30px;">Exhibition 3</h5>
        </div>
        
        <div class="" style="padding:10px;">
          <img src="images/exhibition_img/main_img4.png" alt="Image" style="margin:0 auto 30px auto;margin-left: 30px;">
          <h5 class="mb-0" style="margin-left: 30px;">Exhibition 4</h5>
        </div>
        
        <div class="" style="padding:10px;">
          <img src="images/exhibition_img/main_img5.png" alt="Image" style="margin:0 auto 30px auto;margin-left: 30px;">
          <h5 class="mb-0" style="margin-left: 30px;">Exhibition 5</h5>
        </div>
        
      </div>
      
      <!-- <div class="row mt-5 text-center">
          <div class="col-12">
            <p><a href="#" class="btn btn-primary btn-lg rounded-0">View All Posts</a></p>
          </div>
        </div> -->
      
      
    </div>




<!-- 
    <div class="site-section site-block-3 bg-light">
      <div class="container">
        <div class="row">
          <div class="col-lg-6 mb-5 mb-lg-0">
            <div class="img-border">
              <img src="images/img_2.jpg" alt="Image" class="img-fluid">
            </div>
          </div>
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
        </div>
      </div>
    </div>

 -->


    <div class="site-section">
      <div class="container">
        <div class="row">
          <div class="col-12 text-center">
            <span class="sub-title"><a href = "news.html" style = "color: #F56D3E;">News &amp; Issue</a></span>
            <h2 class="font-weight-bold text-black mb-5"><a href = "news.html" style = "color:black;">뉴스 &amp; 이슈</a></h2>
          </div>
        </div>
        <div class="row mb-5">
          <div class="col-lg-4 col-md-6 mb-4 mb-lg-0 post-entry">
            <a href="#" class="d-block figure">
              <img src="images/img_1.jpg" alt="Image" class="img-fluid">
            </a>
            <span class="text-muted d-block mb-2">23, January 2019</span>
            <h3><a href="#">Architecture is ready to take the world to the next level </a></h3>
          </div>
          <div class="col-lg-4 col-md-6 mb-4 mb-lg-0 post-entry">
            <a href="#" class="d-block figure">
              <img src="images/img_2.jpg" alt="Image" class="img-fluid">
            </a>
            <span class="text-muted d-block mb-2">23, January 2019</span>
            <h3><a href="#">Architecture is ready to take the world to the next level </a></h3>
          </div>
          <div class="col-lg-4 col-md-6 mb-4 mb-lg-0 post-entry">
            <a href="#" class="d-block figure">
              <img src="images/img_3.jpg" alt="Image" class="img-fluid">
            </a>
            <span class="text-muted d-block mb-2">23, January 2019</span>
            <h3><a href="#">Architecture is ready to take the world to the next level </a></h3>
          </div>

        </div>
        
        <!-- 포스트 전체보기 -->
        <!-- <div class="row mt-5 text-center">
          <div class="col-12">
            <p><a href="#" class="btn btn-primary btn-lg rounded-0">View All Posts</a></p>
          </div>
        </div> -->
        
      </div>
    </div>


	 <!-- 상단으로 올라가기 -->
          <div style = "position: fixed; bottom: 30px; right: 30px;">
			<a href = "#body"><img src = "../images/up-arrow.png" /></a>
		  </div>


	<!-- footer -->
    <footer class="site-footer border-top">
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
                  <a href="#" class="
                  pl-3 pr-3"><span class="icon-linkedin"></span></a>
                </div>
              </div>
            </div>


          </div>
          
        </div>
        <div class="row pt-5 mt-5 text-center">
          <div class="col-md-12">
            <p>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | RECORE
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
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