<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% request.setCharacterEncoding("utf-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>RECORE &mdash; ENROLL</title>
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
	<link rel="icon" href="<%=request.getContextPath()%>/images/recorefavi.png">
    
    <link href="<%=request.getContextPath() %>/RECOREMain/RECOREIssue/css/main.css" rel="stylesheet" media="all">
    
        <script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    	<script type="text/javascript">
	
		$(function(){
			
			var count = 1;
			
			<% int opcount = 1;	%>

			
			$("#plusOp").click(function(){

				count++;
				<% opcount++; %>
				
				var form_row = $("<div class='form-row'>").html(
						"<div class='name' style='font-size: 15px; color: gray;'>옵션"+count+"</div>"
						+"<div class='value'> <div class='input-group' style='margin-top: 11px;'>"
						+"COLOR <input class='input--style-6' type='text' name='prod_color"+count+"' placeholder='color'>"
						+"</div></div>"
	                    +"<div class='name' style='font-size: 15px; color: gray;'></div>"
						+"<div class='value'> <div class='input-group' style='margin-top: 11px;'>"
						+"SIZE <input class='input--style-6' type='text' name='prod_size"+count+"' placeholder='size'>"
	                    +"</div></div>"
	                    +"<div class='name' style='font-size: 15px; color: gray;'></div>"
						+"<div class='value'> <div class='input-group' style='margin-top: 11px;'>"
						+"재고 <input class='input--style-6' type='number' name='prod_stock"+count+"' value='0'>"
	                    +"</div></div>");
				

				$(".card-body").append(form_row);
				
				
				
			});
				
			
			
		})
			
		
	</script>
    

  </head>
  <body>
  
  
	<!-- header -->
	<%@ include file="/header.jsp" %>


	
	 <div class="page-wrapper p-t-100 p-b-50" style="background-color: white;">
        <div class="wrapper wrapper--w900">
            <div class="card card-6" style="border:0px;">
            
                <form action="../../Product.do?command=insertproduct" method="post" enctype="multipart/form-data">
                <div class="card-heading" style="border:0px;">
                    <h2 class="title" style="color:#a0d9d9;">
                    	&nbsp;&nbsp;&nbsp;상품 등록
                    </h2>
                </div>
                <div class="card-body" style="border:0px;">
                        <div class="form-row">
                            <div class="name">카테고리</div>
                            <div class="value">
								<select class="input--style-6" name="prod_catd" style="margin-top: 11px;" >
                                		<option value="6">BAG/ACC</option>
                                		<option value="7">OUTER</option>
                                		<option value="8">TOP</option>
                                		<option value="9">BOTTOM</option>
                                		<option value="10">WALLET</option>
                                		<option value="11">OFFICE SUPPLY</option>
                                		<option value="12">HOME</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">상품명</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-6" type="text" name="prod_name" placeholder="상품명">
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">브랜드</div>
                            <div class="value">
                                <div class="input-group">
                                    <textarea class="input--style-6" name="prod_brand" placeholder="브랜드명"></textarea>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">가격</div>
                            <div class="value">
                                <div class="input-group">
                                	<input type="number" class="input--style-6" name="prod_price" value="0" >
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">할인여부</div>
                            <div class="value">
                                <div class="input-group">
                                	<select class="input--style-6" name="prod_dc_yn" style="margin-top: 11px;" >
                                		<option value="N">N</option>
                                		<option value="Y">Y</option>
                                	</select>
                                </div>
                            </div>
                        </div>
                                    
                        <div class="form-row">
                            <div class="name">할인율</div>
                            <div class="value">
                                <div class="input-group">
                                	<input type="number" class="input--style-6" name="prod_dc" value="0" min="0" max="100">
                                </div>
                            </div>
                        </div>    
                                           
                        <div class="form-row">
                            <div class="name">상품설명</div>
                            <div class="value">
                                <div class="input-group">
                                    <textarea class="input--style-6" name="prod_note" placeholder="상품설명"></textarea>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">대표이미지</div>
                            <div class="value">
                                <div class="input-group">
                                    <input type="file" name="prod_front_img" accept=".png">
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">썸네일이미지</div>
                            <div class="value">
                                <div class="input-group">
                                    <input type="file" name="prod_th_img" accept=".png">
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">내용이미지</div>
                            <div class="value">
                                <div class="input-group">
                                    <input type="file" name="prod_content" accept=".png">
                                </div>
                                <div class="label--desc">업로드 하는 사진의 확장자는 .png 이어야 하며 사진의 크기는 10MB까지 가능합니다.</div>
                            </div>
                        </div>
                        
                        <div class="form-row">
                            <div class="name" style="font-size: 25px; color: gray;">옵션관리</div>
                            <button id="plusOp" class="" type="button"  style="background: #a9d0d0; line-height: 20px;
   							 padding: 0 7px; margin-top: 20px;">+</button>
                            
                        </div>
                        <input type="hidden" name="opcount" value="<%=opcount %>">
                        <div class="form-row">
                            <div class="name" style="font-size: 15px; color: gray;">옵션1</div>
                            <div class="value">
                                <div class="input-group" style="margin-top: 11px;">
                                    	COLOR <input class="input--style-6" type="text" name="prod_color1" placeholder="color">
                                </div>
                            </div>
                            <div class="name" style="font-size: 15px; color: gray;"></div>
                            <div class="value">
                                <div class="input-group" style="margin-top: 11px;">
                                    	SIZE <input class="input--style-6" type="text" name="prod_size1" placeholder="size">
                                </div>
                            </div>
                            <div class="name" style="font-size: 15px; color: gray;"></div>
                            <div class="value">
                                <div class="input-group" style="margin-top: 11px;">
                                    	재고 <input class="input--style-6" type="number" name="prod_stock1" value="0">
                                </div>
                            </div>
                        </div>
      
                </div>
                <div class="card-footer" style="border:0px; text-align: right;">
                    <button class="btn btn--radius-2 btn--blue-2" type="submit">작성 완료</button>&nbsp;&nbsp;
                    <button class="btn btn--radius-2 btn--blue-2" type="button" onclick="location.href='issue.do?command=selectAllNews&pageno=1'">돌아가기</button>
                </div>
                </form>
            </div>
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