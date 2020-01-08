<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.mvc.vo.Vo_Account" %>
<% request.setCharacterEncoding("UTF-8"); %>
<%response.setContentType("text/html; charset=UTF-8");%>

<%-- UserSession --%>
<%Vo_Account sessionVo = (Vo_Account)session.getAttribute("sessionVo");%>

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
							<span>답변수정</span>
						</h2>
					</div>
					<%-- Write Form --%>
					<form id="boardWriteForm" action="qna.do" method="post">
						<input type="hidden" name="command" value="qna_answerupdate"> 
						<input type="hidden" name="qna_no" value="${qnaVo.qna_no }">
						<input type="hidden" name="writer" value="${sessionVo.acc_no }">
						<div class="xans-element- xans-board xans-board-write-4 xans-board-write xans-board-4">
							<div class="ec-base-table typeWrite ">
								<table summary="">
									<caption>글쓰기 폼</caption>
									<colgroup>
										<col style="width: 130px;">
										<col style="width: auto;">
									</colgroup>
									<tbody>
										<tr>
											<th>제목</th>
											<td><input name="title" type="text" class="inputTypeText" style="width: 100%; height: 28px;" value="${qnaVo.qna_title }"></td>
										</tr>
										<tr>
											<th>작성자</th>
											<td>${qnaVo.qna_acc_id }</td>
										</tr>
										<%-- Smart Editor --%>
										<tr>
											<td colspan="2" style="padding: 0px;">
												<textarea name="content" id="content" rows="10" cols="100"
												style="width:100%; height:412px;" placeholder=""> ${qnaVo.qna_content} </textarea>
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
									<input id="save" class="btnNormalFix sizeS" type="button" value="수정">
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
	    $("#boardWriteForm").submit();
	});  
})

</script>