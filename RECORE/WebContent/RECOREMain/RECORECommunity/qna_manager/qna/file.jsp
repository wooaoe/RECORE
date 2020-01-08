<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- enctype : 폼태그를 통해서 전송되는 데이터의 형식  지정하는 속성 -->
	<!-- multipart/form-data : 서버로 파일이나 이미지를 전송할때 설정해주는  속성값 
		 그냥 사용못함 그래서 라이브러리 가져와야함. http://servlets.com/cos/ 접속 > 맨 아래의 cos-20.08.zip 다운로드 > 압축풀고 > cos-20.08\lib 에서 cos.jar 이클립스 lib에 추가-->
		 <!-- http://servlets.com/cos/javadoc/com/oreilly/servlet/MultipartRequest.html  -->
	<form action="qna.do" method="post" enctype="multipart/form-data">
		<br/>
		이름: <input type="text" name="name"/><br/>
		사진: <input type="file" name="file"/><br/>
		사진2: <input type="file" name="file2"/>
		
		<br/>
		<input type="submit" value="확인"/>
	</form>
</body>
</html>