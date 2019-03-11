<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<br>
	<c:url value="/images/Penguins.jpg" var="data">
		<c:param name="query">한글쿼리</c:param>
		<c:param name="keyword">펭귄</c:param>
	</c:url>
	<h3>${data}</h3>
	<img src="${data}" width='150' height='150'>

	<c:import url="https://www.naver.com" var="data"></c:import>
	${data}
	
</body>
</html>