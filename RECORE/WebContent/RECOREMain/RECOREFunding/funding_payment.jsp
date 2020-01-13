<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


    <link href="<%=request.getContextPath() %>/RECOREMain/RECOREIssue/css/main.css" rel="stylesheet" media="all">

</head>
<body>

  <div class="page-wrapper bg-dark p-t-100 p-b-50">
        <div class="wrapper wrapper--w900">
		<div class="card card-6" >
                <div class="card-heading" >
                    <h2 class="title">펀딩 참여하기</h2>
                </div>
                <div class="card-body"style="border:0px;" >

                    <form action="funding.do?command=insertFunding" method="post" id="frm" enctype="multipart/form-data">

                        <div class="form-row" style="border:0px;">
                            <div class="name">펀딩 제목</div>
                            <div class="value">
                            <div class="input-group">
                                <input class="input--style-6" type="text" name="fund_title">
                                </div>
                            </div>
                        </div>
                        <div class="form-row" style="border:0px;">
                            <div class="name">작성자</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-6" type="text" name="fund_creator" >
                                </div>
                            </div>
                        </div>
                        <div class="form-row" style="border:0px;">
                            <div class="name">결제 금액</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-6" type="number" name="fund_target_price" >
                                </div>
                            </div>
                        </div>
                         <div class="form-row" style="border:0px;">
                            <div class="name"></div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-6"  type="date" name="fund_deadline" >   
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
                        <input type="submit" id="savebutton" value="펀딩 등록하기" class="btn btn--radius-2 btn--blue-2"
                        onclick="location.href='funding.do?command=selectAllFunding&pageno=1'" >           
                    	
                    
                    </form>
           
                </div>
                <div class="card-footer">
               
                </div>
            </div>
            </div>
            </div>
</body>
</html>