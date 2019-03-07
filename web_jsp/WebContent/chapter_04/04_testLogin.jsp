<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@page import="java.net.URLEncoder" %>
	<%
		String id = "skw1105";
		String pwd = "1234";
		String name = "심규원";
		request.setCharacterEncoding("UTF-8");
		if (id.equals(request.getParameter("id")) && pwd.equals(request.getParameter("pwd"))) {
			response.sendRedirect("04_main.jsp?name=" + URLEncoder.encode(name, "UTF-8"));
		} else {
			response.sendRedirect("04_loginForm.jsp");
		}
	%>
</body>
</html>