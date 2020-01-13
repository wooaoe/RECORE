<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.mvc.vo.Vo_Account" %>
<% request.setCharacterEncoding("UTF-8"); %>
<%response.setContentType("text/html; charset=UTF-8");%>

<%-- UserSession --%>
<%Vo_Account sessionVo = (Vo_Account)session.getAttribute("sessionVo");%>
<%-- category --%>
<% String catd = (String)session.getAttribute("catd"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RECORE - QNA</title>

<%-- css --%>
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<link rel="stylesheet" href="<%=request.getContextPath()%>/RECOREMain/RECORECommunity/qna_manager/qna/css/qna.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/RECOREMain/RECORECommunity/qna_manager/qna/css/qnaanswer.css">
<jsp:include page="/head.jsp"></jsp:include> 
 
<%-- SmartEditor --%>
<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js "></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/RECOREMain/RECORECommunity/qna_manager/editor/js/service/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/RECOREMain/RECORECommunity/qna_manager/qna/js/qna_boardwrite.js"></script>

</head>
<body>
	<header>
		<jsp:include page="/header.jsp"></jsp:include>
	</header>
	<section style="margin: 100px 0 100px 0px;">
		<section class="section-container">
			<div class="row" style="width:100%;">
				<div class="col-md-2"></div>
				<div class="col-md-8">
					<%-- Page title --%>
					<div class="xans-element- xans-board xans-board-title-4 xans-board-title xans-board-4 reviewTitlee ">
						<h2>
							<span>문의작성</span>
						</h2>
					</div>
					<%-- Write Form --%>
					<form id="boardWriteForm" action="qna.do" method="post">
						<input type="hidden" name="command" value="qna_write"> 
						<input type="hidden" name="writer" value="${sessionVo.acc_no }">
						<input type="hidden" name="qna_front_img" id="qna_front_img" value="">
						<input type="hidden" name="qna_seq_no" id="qna_seq_no" value="0">
						
						
						<div class="xans-element- xans-board xans-board-write-4 xans-board-write xans-board-4">
							<div class="ec-base-box typeProduct">
								<p class="thumbnail">
									<img style="width: 77px; height: 77px;"id="iPrdImg" src="" onerror="this.src='//img.echosting.cafe24.com/thumb/75x75.gif'" alt="">
								</p>
								<div class="information" style="padding-left: 30px;">
									<span id="sPrdCommonImg"></span>
									<h3>
										<span id="sPrdName" style="font-weight: bold; font-family: 'Noto Sans KR',sans-serif; color: #000;"></span>
									</h3>
									<p class="button">
										<span class="">
										<a href="#none" class="btnNormal" onclick="popup();">상품정보선택</a>
										</span>
									</p>
								</div>
							</div>
							<div class="ec-base-table typeWrite ">
								<table summary="">
									<caption>글쓰기 폼</caption>
									<colgroup>
										<col style="width: 130px;">
										<col style="width: auto;">
									</colgroup>
									<tbody>
										<tr>
											<th>문의선택</th>
											<td><select name="catd_no">
											<option value="14" selected="selected">배송문의</option>
											<option value="15">취소/교환/환불문의</option>
											<option value="16">상품문의</option>
											</select></td>
										</tr>
										<tr>
											<th>제목</th>
											<td><input name="title" type="text" class="inputTypeText" style="width: 100%; height: 28px;"></td>
										</tr>
										<tr>
											<th>작성자</th>
											<td>${sessionVo.acc_id }</td>
										</tr>
										<%-- Smart Editor --%>
										<tr>
											<td colspan="2" style="padding: 0px;">
												<textarea name="content" id="content" rows="10" cols="100"
												style="width:100%; height:412px;" placeholder="내용을 입력하세요."></textarea>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="ec-base-button ">
								<span class="gLeft"> 
									<input class="btnNormalFix sizeS" type="button" value="목록" onclick="location.href='qna.do?command=qna_list&catd=all'">
								</span> 
								<span class="gRight"> 
									<input id="save" class="btnNormalFix sizeS" type="button" value="등록">
									<input class="btnBasicFix sizeS" type="button" value="취소" onclick="location.href='qna.do?command=qna_list&catd=all'">
								</span>
							</div>
						</div>

					</form>
				</div>
				<div class="col-md-2"></div>
			</div>
		</section>
	</section>
	
	<%-- footer --%>
	<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>

<%-- Smart Editor --%>
<script type="text/javascript">

var oEditors = [];
nhn.husky.EZCreator.createInIFrame({
	oAppRef: oEditors,
	elPlaceHolder: "content",
	sSkinURI: "<%=request.getContextPath()%>/RECOREMain/RECORECommunity/qna_manager/editor/SmartEditor2Skin.html",
	fCreator: "createSEditor2",
	htParams : {
		// 툴바 사용 여부 (true:사용/ false:사용하지 않음)
		bUseToolbar : true,      
		
		// 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
		bUseVerticalResizer : false,     
	
		// 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
		bUseModeChanger : false
	}
});

<%-- submit --%>
$(function(){
	$("#save").click(function(){
		oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", []);
		
		var title =  document.getElementsByName("title")[0].value;
	    var content = document.getElementById("content").value;
	    
	    if( title == ""  || title == null || title == '&nbsp;' || title == '<p>&nbsp;</p>' || typeof title == "undefined")  {
            alert("제목을 입력하세요.");
            document.getElementsByName("title")[0].focus(); //포커싱
            return;
       	}
	    if( content == ""  || content == null || content == '&nbsp;' || content == '<p>&nbsp;</p>' || content=='<p><br></p>')  {
            alert("내용을 입력하세요.");
            oEditors.getById["content"].exec("FOCUS"); //포커싱
            return;
       	}
	  
	    $("#boardWriteForm").submit();
	});  
})
</script>