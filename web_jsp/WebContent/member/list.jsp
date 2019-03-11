<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>

</head>
<body>
<div class="container">
	<h2 class="my-5"><i class="fas fa-users"></i> 회원목록</h2>
		<div class="text-right">총 ${pageInfo.totalCount}건</div>
		<table class="table table-striped table-hover">
			<!-- <table class="table table-striped table-hover"> -->
			<tr>
				<th>No</th>
				<th>ID</th>
				<th>Name</th>
				<th>Email</th>
				<th>Phone</th>
				<th>Gender</th>
				<th>RegDate</th>
			</tr>
			
			<fmt:formatDate var="today" value="<%=new java.util.Date()%>"
				pattern="yyyy-MM-dd"/>

			<c:forEach var="m" items="${pageInfo.list}" varStatus="status">
				<fmt:formatDate var="regDate" value="${m.regDate}"
					pattern="yyyy-MM-dd"/>
				<tr>
					<td>${(pageInfo.page - 1) * pageInfo.perCount + 1 + status.index}</td>
					<td>${m.userId}
						<c:if test="${regDate == today}">
							<span class="badge badge-danger">
								<i class="fas fa-tag"></i>new
							</span>
						</c:if>
					</td>
					<td>${m.name}</td>
					<td>${m.email}</td>
					<td>${m.phone}</td>
					<td>${m.gender}</td>
					<td>${m.regDate}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	
	<jsp:include page="/common/pagination.jsp"></jsp:include>
	
</body>
</html>