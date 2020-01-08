<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%-- keyword --%>
<% String key = request.getParameter("keyword"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RECORE - QNA</title>
</head>
<body>
	<div id="paging" style="width: 600px;">
		<c:url var="action" value="qna.do"/>
		<div id="arrow_2" class="xans-element- xans-board xans-board-paging-1002 xans-board-paging xans-board-1002 ec-base-paginate arrow-wrapper">
			<c:choose>
				<c:when test="${param.prev}">
					<div class="arrow arrow--left">
			    		<span><a href="${action}?command=qna_searchboardlist&page=${param.beginPage-1}">prev</a></span>
			    	</div>
				<li class="xans-record-" style="padding-left: 5px;"><a href="${action}?command=qna_searchboardlist&page=${param.beginPage-1}">&lt;</a></li>
				</c:when>
				<c:when test="${param.page-1 >0}">
					<li class="xans-record-" style="padding-left: 5px;"><a href="${action}?command=qna_searchboardlist&page=${param.page-1}">&lt;</a></li>
				</c:when>
		 		<c:otherwise>
					<li class="xans-record-" style="padding-left: 5px;"><a href="#">&lt;</a></li>
				</c:otherwise> 
			</c:choose>
	 		<ol>
				<c:forEach begin="${param.beginPage}" end="${param.endPage}" step="1" var="index">
				
				    <c:choose>
				    
				        <c:when test="${param.page==index}">
				            <li class="xans-record-"><a href="#" class="this">${index}</a></li>
				        </c:when>
				        <c:otherwise>
				            <li class="xans-record-"><a href="${action}?command=qna_searchboardlist&page=${index}&keyword=<%=key %>" class="other">${index}</a></li>
				        </c:otherwise>
				    </c:choose>
				 
				</c:forEach>
	 	 	 </ol>
			<c:choose>
				<c:when test="${param.next}">
				<li class="xans-record-" style="padding-right: 5px;"><a href="${action}?command=qna_searchboardlist&page=${param.page+1}&keyword=<%=key %>">&gt;</a></li>
				<div class="arrow arrow--right">
				
			    <span><a href="${action}?command=qna_list&page=${param.endPage+1}">next</a></span>
			    </div>
				</c:when>
				<c:when test="${param.page+1 <= param.endPage}">
					<li class="xans-record-" style="padding-right: 5px;"><a href="${action}?command=qna_searchboardlist&page=${param.page+1}&keyword=<%=key %>">&gt;</a></li>
				</c:when>
				<c:otherwise>
					<li class="xans-record-" style="padding-right: 5px;"><a href="#">&gt;</a></li>
				</c:otherwise> 
			</c:choose>
		</div>
	</div>
</body>
</html>