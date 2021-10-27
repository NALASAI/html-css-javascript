<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="delivery-request" method="post">
		배송받는사람 : <input type="text" name="customer_name">
		배송지 : <input type="text" name="customer_address">
		연락처 : <input type="tel" name="customer_phone">
		요청사항 : <input type="text" name="customer_request">
		<input type="submit" value="전송">
	</form>
</body>
</html>