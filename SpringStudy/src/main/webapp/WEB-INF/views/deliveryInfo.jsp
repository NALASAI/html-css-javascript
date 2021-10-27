<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="deliveryInfo" method="get">
		배송받는사람 : ${customerModel.getCustomer_name() }<br>
		배송지 : ${customerModel.getCustomer_address() }<br>
		연락처 : ${customerModel.getCustomer_phone() }<br>
		요청사항 : ${customerModel.getCustomer_request() }<br>
	</form>
</body>
</html>