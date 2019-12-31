<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8");%>
<% response.setContentType("text/html; charset=UTF-8");%>
<!DOCTYPE html>
<html>
<head>
<title>Page</title>
<jsp:include page="head.jsp"></jsp:include>
</head>
<body>
<div class="wrap" >
    <header>
        <jsp:include page="header.jsp"></jsp:include>
    </header>
    <section >
        <section class="section-container" >
            <div class="row">
            <div class="col-md-2" ></div>
                <!-- <div class="col-md-8" style="background: pink;"  >
                    sdfsdf
                </div> -->
            <div class="col-md-2" ></div>
            </div>
        </section>
    </section>
   <%--  <footer class="site-footer">
        <jsp:include page="footer.jsp"></jsp:include>
    </footer>
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
    <script src="js/main.js"></script> --%>
</div>
</body>
</html>