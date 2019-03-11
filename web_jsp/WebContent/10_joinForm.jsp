<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="">
		사용자 ID: <input type="text" name="userId" value="${member.userId}" required><br>
		비밀번호: <input type="password" name="password" required><br>
		이름: <input type="text" name="name" value="${member.name}" required><br>
		이메일: <input type="text" name="email" value="${member.email}" required><br>
		전화번호: <input type="text" name="phone" value="${member.phone}" required><br>
		성별:
		<label>
			<input type="radio" name="gender" value="M">남
		</label>
		<label>
			<input type="radio" name="gender" value="W">여
		</label>
		<br>
		<input type="submit" value="가입하기">
	</form>
</body>
</html>