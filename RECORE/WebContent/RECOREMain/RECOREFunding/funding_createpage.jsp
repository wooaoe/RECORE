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


	<!-- insert 폼 css 적용 -->
	
    
    <link href="<%=request.getContextPath() %>/RECOREMain/RECOREIssue/css/main.css" rel="stylesheet" media="all">

  </head>
  <body>
  
  
	<!-- header -->
	<%@ include file="/header.jsp" %>
	
	
	 <div class="site-section">

  <div class="page-wrapper bg-dark p-t-100 p-b-50">
        <div class="wrapper wrapper--w900">
		<div class="card card-6" >
                <div class="card-heading" >
                    <h2 class="title">펀딩 등록하기</h2>
                </div>
                <div class="card-body"style="border:0px;" >

                    <form action="issue.do?command=insertFunding" method="post" id="frm" enctype="multipart/form-data">

                        <div class="form-row" style="border:0px;">
                            <div class="name">펀딩 제목</div>
                            <div class="value">
                            <div class="input-group">
                                <input class="input--style-6" id="title" type="text" name="fund_title">
                                </div>
                            </div>
                        </div>
                        <div class="form-row" style="border:0px;">
                            <div class="name">작성자</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-6" id="creator" type="text" name="fund_creator" >
                                </div>
                            </div>
                        </div>
                        <div class="form-row" style="border:0px;">
                            <div class="name">목표 금액</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-6" id="target_price" type="number" name="fund_target_price" >
                                </div>
                            </div>
                        </div>
                         <div class="form-row" style="border:0px;">
                            <div class="name">펀딩   마감 기한</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-6" id="deadline" type="date" name="fund_deadline" >   
                                </div>
                            </div>
                        </div>
                        <div class="form-row" style="border:0px;">
                            <div class="name">본문 내용 이미지 업로드</div>
                            <div class="value">
                                <div class="input">
                                     <input type="file" name=fund_content accept=".png">
                               


                                </div>
                                <div class="label--desc">이미지 파일을 업로드 하세요</div>
                            </div>
                        </div>	
                        <div class="form-row" style="border:0px;">
                            <div class="name">썸네일 이미지 업로드</div>
                            <div class="value">
                                <div class="input">
                                  
                               <input type="file" name=fund_front_img accept=".png">
                               <label class="label--file" for="file"> </label>

                               
                                </div>
                                <div class="label--desc">이미지 파일을 업로드 하세요</div>
                            </div>
                        </div>
                        <br><br>
                        <input type="submit" id="savebutton" value="펀딩 등록하기" class="btn btn--radius-2 btn--blue-2" >           
                    </form>
           
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