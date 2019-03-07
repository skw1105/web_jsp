<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 간단한 인삿말 출력하기 html주석문이기 때문에 서버에서 처리하지 않고 브라우저에 보내고 브라우저에서 처리하게 된다. 브라우저에서 보임 -->
	<%-- 인삿말을 String 변수에 저장한다. 서버에서 처리해주고 브라우저에는 가지 않는다. 브라우저에서 안보임 --%>
	<%
		String name = "Angel";
	%>
	Hello
	<%= name %>
</body>
</html>