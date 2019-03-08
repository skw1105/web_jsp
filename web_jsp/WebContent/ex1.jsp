<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.File"%>
<%
	//String appPath = application.getContextPath();
	//String filePath = application.getRealPath("/images");
	//File dir = new File(filePath);
	//String[] files = dir.list();
	String[] files = (String[])request.getAttribute("files");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
for (String file : files) {
%>
	<img src="<%=application.getContextPath()%>/images/<%=file%>" width="400"/><br>
<%
}
%>
</body>
</html>