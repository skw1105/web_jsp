<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%=session.getAttribute("id")%>(<%=session.getAttribute("name")%>)님 안녕하세요!
	<br> 저희 홈페이지에 방문해 주셔서 감사합니다.
	<br> 즐거운 시간 되세요....
	<br>
	<a href="logout">로그아웃</a>
</body>
</html>