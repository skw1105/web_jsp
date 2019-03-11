<%@page import="javax.xml.ws.Response"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String target = (String) request.getAttribute("target");
	if (target == null)
		target = "";

	String error = (String) request.getAttribute("error");
	if (error == null)
		error = "";

	String reason = (String) request.getAttribute("reason");
	if (reason == null)
		reason = "";
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
.error {
	color: red;
	font-weight: bold;
}

.reason {
	color: blue;
	font-weight: bold;
}
</style>

</head>
<body>
	<form method="post" action="login">
		<input type="hidden" name="target" value="${target}">
		
		<label for="userid"> 아이디 : </label>
		<input type="text" name="id" id="userid" value=${param.id}><br>
		
		<label for="userpwd"> 암 &nbsp; 호 : </label>
		<input type="password" name="pwd" id="userpwd"><br>
		
		<input type="submit" value="로그인">
	</form>
	
	<div>
		<a href="join">회원가입</a>
	</div>

	<div class="error">${error}</div>
	<div class="reason">${reason}</div>

	전에 입력한 값 <br>
	ID: ${param.id}, ${param["id"]}<br>
	PW: ${param.pwd}, ${param["pwd"]}<br>
</body>
</html>