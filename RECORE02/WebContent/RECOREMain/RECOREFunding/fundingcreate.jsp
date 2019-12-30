<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%request.setCharacterEncoding("UTF-8");%>
	<%response.setContentType("text/html; charset=UTF-8");%>

<!DOCTYPE html>
<html lang="en">

  <head>
 <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
    <title>펀딩 등록하기</title>
    <script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.2.1/dist/jquery.min.js"></script>

    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">

    <!-- Main CSS-->
    <link href="cssMain/main.css" rel="stylesheet" media="all">

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
<style>
table{
width:100%;
}
th{
text-align-last: center; 
border: 2px solid black; 
}
th,td{
padding: 10px;
}

#table{margin-left:25%;
}
#button1{
padding-top: 50px;
}


</style>   
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
    
    
    <div class="site-navbar-wrap">
      <div class="site-navbar-top">
        <div class="container py-3">
          <div class="row align-items-center">
            <div class="col-6">
              <!-- <a href="#" class="p-2 pl-0"><span class="icon-twitter"></span></a>
              <a href="#" class="p-2 pl-0"><span class="icon-facebook"></span></a>
              <a href="#" class="p-2 pl-0"><span class="icon-linkedin"></span></a>
              <a href="#" class="p-2 pl-0"><span class="icon-instagram"></span></a> -->
            </div>
            <div class="col-6">
              <div class="d-flex ml-auto">
              <!-- <form id="search" method="get" action="#" class="d-flex align-items-center ml-auto mr-4">
                	<input type="text" name="query" placeholder="Search" />
              		<a href="#search"> &nbsp; Search</a>
              	</form> -->
                <a href="#" class="d-flex align-items-center ml-auto mr-4">
                  <!-- <span class="icon-phone mr-2"></span> -->
                   <span class="d-none d-md-inline-block">로그인 &nbsp;/&nbsp;회원가입 &nbsp;&nbsp;마이페이지</span>
                 <!--  <span class="d-none d-md-inline-block">youremail@domain.com</span> -->
                </a>
                <a href="#" class="d-flex align-items-center">
                  <!-- <span class="icon-envelope mr-2"></span>
                  <span class="d-none d-md-inline-block">+1 291 2830 302</span> -->
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="site-navbar">
        <div class="container py-1">
          <div class="row align-items-center">
            <div class="col-2">
              <h1 class="mb-0 site-logo"><a href="index.html">RECORE</a></h1>
            </div>
            <div class="col-10">
              <nav class="site-navigation text-right" role="navigation">
                <div class="container">
                  <div class="d-inline-block d-lg-none ml-md-0 mr-auto py-3"><a href="#" class="site-menu-toggle js-menu-toggle text-white"><span class="icon-menu h3"></span></a></div>

              <ul class="site-menu js-clone-nav d-none d-lg-block">
                    <li class="has-children">
                      <a href="index.html">Funding</a>
                      <ul class="dropdown arrow-top">
                        <li><a href="fundinglist.html">조회</a></li>
                        <li><a href="fundingcreate.html">등록</a></li>
                      </ul>
                    </li>
                    <li class="has-children">
                      <a href="product_all.html">Product</a>
                      <ul class="dropdown arrow-top">
                        <li><a href="product.html">Bag / Acc</a></li>
                        <li class = "has-children"><a href="clothing.html">Clothing</a>
                        	<ul class = "dropdown arrow-down">
								<li><a href = "#">Outer</a></li>                        	
								<li><a href = "#">Top</a></li>                        	
								<li><a href = "#">Bottom</a></li>                        	
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
                    <li  class="has-children"><a href="news.html">Issue</a>
                    	<ul class="dropdown arrow-top">
                        <li><a href="#">News</a></li>
                        <li><a href="#">Exhibition</a></li>
                      </ul>
                    </li>
                    <li  class="has-children"><a href="news.html">Community</a>
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

    <div class="site-blocks-cover overlay inner-page" style="background-image: url(images/backimg.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row align-items-center">
         <div class="col-md-10">
         <!-- <span class="sub-text">Our Awesome</span> --> 
         	<h1>펀딩 등록하기</h1>
          </div>
        </div> 
      </div>
    </div>  
    
    

    <div class="site-section">

<p style="font-size:48px; text-align:center;">펀딩 등록하기</p>
<br>
<br>
<br>
  <div class="page-wrapper bg-dark p-t-100 p-b-50">
        <div class="wrapper wrapper--w900">
		<div class="card card-6" >
                <div class="card-heading" >
                    <h2 class="title">펀딩 등록하기</h2>
                </div>
                <div class="card-body"style="border:0px;" >
                    <form action="funding1.jsp" method="post" id="frm" enctype="multipart/form-data">
                        <div class="form-row" style="border:0px;">
                            <div class="name">펀딩 제목</div>
                            <div class="value">
                            <div class="input-group">
                                <input class="input--style-6" id="title" type="text" name="title">
                                </div>
                            </div>
                        </div>
                        <div class="form-row" style="border:0px;">
                            <div class="name">작성자</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-6" id="creator" type="text" name="creator" >
                                </div>
                            </div>
                        </div>
                        <div class="form-row" style="border:0px;">
                            <div class="name">목표 금액</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-6" id="target_price" type="number" name="target_price" >
                                </div>
                            </div>
                        </div>
                         <div class="form-row" style="border:0px;">
                            <div class="name">펀딩   마감 기한</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-6" id="deadline" type="date" name="deadline" >   
                                </div>
                            </div>
                        </div>
                        <div class="form-row" style="border:0px;">
                            <div class="name">본문 내용 이미지 업로드</div>
                            <div class="value">
                                <div class="input">
                                     <input type="file" class="file" id="file" name="file" accept="image/*" data-max-size="5000" />
                               
                                    <script>
    $("document").ready(function () {

        $('input[type=file]').on("change", function () {

            var $files = $(this).get(0).files;

            if ($files.length) {

                if ($files[0].size > $(this).data("max-size") * 10240) {
                    console.log("Please select a smaller file");
                    return false;
                }

          
                var apiUrl = 'https://api.imgur.com/3/image';
                var apiKey = 'fac99c105facfd0';

                var formData = new FormData();
                formData.append("image", $files[0]);

                var settings = {
                    "async": true,
                    "crossDomain": true,
                    "url": apiUrl,
                    "method": "POST",
                    "datatype": "json",
                    "headers": {
                        "Authorization": "Client-ID " + apiKey
                    },
                    "processData": false,
                    "contentType": false,
                    "data": formData,
                    beforeSend: function (xhr) {
                    	alert("파일첨부중, 약 10초간 기다려주세요");
                        console.log("Uploading ");
                    },
                    success: function (res) {
                    	                   	
                        $('body').append('<img src="' + res.data.link + '" />');
                        alert("파일첨부완료");
                       
                        return  res.data.link;
                        
                    },
                    error: function () {
                        alert("Failed ");
                    }
                }
                $.ajax(settings).done(function (response) {
                	
                    console.log("Done");
                });
                
            }
        });
    });
</script>
                                </div>
                                <div class="label--desc">이미지 파일을 업로드 하세요</div>
                            </div>
                        </div>
						
						
                        <div class="form-row" style="border:0px;">
                            <div class="name">썸네일 이미지 업로드</div>
                            <div class="value">
                                <div class="input">
                                    <input class="input-file" type="file" name="file2" id="file2">
                               <input type="file" class="file2" accept="image/*" data-max-size="5000" />
                               <label class="label--file" for="file"> </label>
                                    <script>
    $("document").ready(function () {

        $('input[type=file2]').on("change", function () {

            var $files = $(this).get(0).files;

            if ($files.length) {

                // Reject big files
                if ($files[0].size > $(this).data("max-size") * 10240) {
                    console.log("Please select a smaller file");
                    return false;
                }

                // Replace ctrlq with your own API key
                var apiUrl = 'https://api.imgur.com/3/image';
                var apiKey = 'fac99c105facfd0';

                var formData = new FormData();
                formData.append("image", $files[0]);

                var settings = {
                    "async": true,
                    "crossDomain": true,
                    "url": apiUrl,
                    "method": "POST",
                    "datatype": "json",
                    "headers": {
                        "Authorization": "Client-ID " + apiKey
                    },
                    "processData": false,
                    "contentType": false,
                    "data": formData,
                    beforeSend: function (xhr) {
                    	alert("파일첨부중, 약 10초간 기다려주세요");
                        console.log("Uploading ");
                    },
                    success: function (res2) {
                    	 console.log(res2.data.link);                  	
                        $('body').append('<img src="' + res2.data.link + '" />');
                        alert("파일첨부완료");
                        return res2.data.link;
                    },
                    error: function () {
                        alert("Failed ");
                    }
                }
                $.ajax(settings).done(function (response) {
                    console.log("Done");
                });
            }
        });
    });
</script>
                               
                               
                                </div>
                                <div class="label--desc">이미지 파일을 업로드 하세요</div>
                            </div>
                        </div>
                        <br><br>
                        <input type="submit" id="savebutton" value="펀딩 등록하기" class="btn btn--radius-2 btn--blue-2" >
                       
                                            
                        
                    </form>
                    <script>
                      function test2(){
        var form = $("form")[0];        
        var formData = new FormData(form);

        $.ajax({
            cache : false,
            url : "${pageContext.request.contextPath}/funding1.jsp", 
            processData: false,
            contentType: false,
            type : 'POST', 
            data : formData, 
            success : function(data) {
                var jsonObj = JSON.parse(data);
            }, // success 
    
            error : function(xhr, status) {
                alert(xhr + " : " + status);
            }
        }); // $.ajax */    }
</script>
                    
                </div>
                <div class="card-footer">
               
                </div>
            </div>
            </div>
            </div>

    <!-- Jquery JS-->
    <script src="vendor/jquery/jquery.min.js"></script>

<script src="js/global.js"></script>
    <!-- Main JS-->
    

<!--form action="funding1.jsp" method="post" id="frm">
<div id="table">
<table >
     <tr>
     		
     		
           <th align = "center">제목</th>    
            
            <td> <input type="text" id="title" name="title" style="width:650px"/> </td>
     
       </tr>
    <tr>
            <th>작성자   </th>
            <td> <input type="text" id="creator" name="creator" style="width:650px"/></td>
       </tr>

       	 <tr>
            <th>목표금액    </th>
            <td> <input type="number" id="target_price" name="target_price" style="width:650px"/>원</td>
       
     </tr>
 
      <tr>
            <th>마감기한    </th>
            <td> <input type="date" id="deadline" name="deadline" style="width:650px"/></td>
       
    
    </tr>   
   <tr>
	 <th>  
   	 펀딩 내용</th><td>
    <textarea name="smarteditor" id="smarteditor" rows="10" cols="100" style="width:766px; height:412px;"></textarea>
  
    </td>
    </tr>
   <tr>
    <td>
    <div id="button1">
    <input type="button" id="savebutton" value="펀딩 등록하기" /></div>

    </td>
    </tr>
</table>
</div>
</form-->



<script type="text/javascript"> 
$(function(){
    //전역변수선언
    var editor_object = [];
     
    nhn.husky.EZCreator.createInIFrame({
        oAppRef: editor_object,
        elPlaceHolder: "smarteditor",
        sSkinURI: "SmartEditor2Skin.html",
        htParams : {
            // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
            bUseToolbar : true,            
            // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
            bUseVerticalResizer : true,    
            // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
            bUseModeChanger : true,
        }
    });
     
    //전송버튼 클릭이벤트
    $("#savebutton").click(function(){
        //id가 smarteditor인 textarea에 에디터에서 대입
        editor_object.getById["smarteditor"].exec("UPDATE_CONTENTS_FIELD", []);
         
        // 이부분에 에디터 validation 검증
         
        //폼 submit
        $("#frm").submit();
    })
})
</script>

       
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