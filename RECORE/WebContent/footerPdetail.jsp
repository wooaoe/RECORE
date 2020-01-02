<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en">
  <head>
	<style type="text/css">
		.col-6{
		font-size: 9.5pt; 
		position:relative; 
		left:920px; 
		bottom:10px; "
			
		}
	</style>
  </head>
  <body>
 
    			<!-- footer 라인 -->
	<footer class="site-footer border-top" style = "background-color: #A0D9D9; height: 185.6px;"">
      <div class="container">
        <div class="row">
          <div class="col-lg-4 mb-5 mb-lg-0">
            <div class="row mb-5">
            </div>
          </div>
       
          <div class="col-lg-4" style = "text-align: center; position:relative; bottom: 16px;">
           	<a href = "<%=request.getContextPath()%>/RECOREMain/index.html">
           	<img alt="" src = "<%=request.getContextPath()%>/RECOREMain/images/donut.png"></a>
          </div>
          
          <div class="col-6" >
              <div class="d-flex ml-auto" >
              
                <a href="<%=request.getContextPath()%>/RECOREMain/RECOREAccount/Acc_Login.jsp" class="d-flex align-items-center">
                 <span class="d-none d-md-inline-block" style="color:black;">로그인&nbsp;&nbsp;</span>
                 </a>
                 <a href="<%=request.getContextPath()%>/RECOREMain/RECOREAccount/Acc_Signup.jsp" class="d-flex align-items-center">
                  <span class="d-none d-md-inline-block" style="color:black;">회원가입 &nbsp;&nbsp;</span></a>
                  <br>
                  <a href="<%=request.getContextPath()%>/RECOREMain/RECOREMypage/Mypage_Main.jsp" class="d-flex align-items-center">
                  <span class="d-none d-md-inline-block" style="color:black;">마이페이지 &nbsp;&nbsp;</span></a>
                  <br>
                  <a href="<%=request.getContextPath()%>/RECOREMain/RECOREMypage/Mypage_Cart.jsp" class="d-flex align-items-center">
                  <span class="d-none d-md-inline-block" style="color:black;">장바구니</span></a>
                 
                
              </div>
            </div>
            
        </div>
      </div>
    </footer>
    
</body>
</html>
