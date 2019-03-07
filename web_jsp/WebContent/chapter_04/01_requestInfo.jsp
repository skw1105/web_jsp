<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	컨텍스트 패스 :
	<%=request.getContextPath()%>
	<br> 요청방식 :
	<%=request.getMethod()%>
	<br> 요청한 URL :
	<%=request.getRequestURL()%>
	<br> 요청한 URI :
	<%=request.getRequestURI()%>
	<br> 서버의 이름 :
	<%=request.getServerName()%>
	<br> 프로토콜 :
	<%=request.getProtocol()%>
	<br>
	<!-- context path명을 적어줘야한다. 하지만 직접 써주는건 좋지 않다. 그렇다고 상대경로는 안된다.
	절대경로로 하되 context path의 이름이 변경되더라도 처리되게 -->
	<img src="<%=request.getContextPath()%>/images/Chrysanthemum.jpg">
</body>
</html>