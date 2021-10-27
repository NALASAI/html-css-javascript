<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="insert-data" method="post">
		아이디 : <input type="text" name="user_id">
		비밀번호 : <input type="password" name="user_password">
		이름 : <input type="text" name="user_name">
		연락처 : <input type="tel" name="user_phone">
		<input type="submit" value="전송">
	</form>
</body>
</html>