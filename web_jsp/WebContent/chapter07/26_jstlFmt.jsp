<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<pre>
	<c:set var="now" value="<%=new java.util.Date()%>"></c:set>
	\${now} : ${now}
	<fmt:formatDate var="today" value="${now}" pattern="yyyy-MM--dd"/>
	</pre>
</body>
</html>