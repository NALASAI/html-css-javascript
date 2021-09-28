<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	String name = "junil";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	name = name + "님 환영합니다.";
%>
	<h1>hello JSP</h1>
	<h4><%=name %></h4>
</body>
</html>