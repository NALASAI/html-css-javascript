<%@page import="com.web.dao.UserDaoImpl"%>
<%@page import="com.web.dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	UserDao userDao = new UserDaoImpl();
%>
<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	int flag = userDao.login(id, password);
	if(flag == 0){
		System.out.println("존재하지 않는 아이디입니다. 가입 후 이용 바랍니다");
	}else if(flag == 1){
		System.out.println("비밀번호가 일치하지 않습니다. 다시 확인해 주세요");
	}else if(flag == 2){
		System.out.println("로그인 성공");
	}else{
		System.out.println("DB 오류");
	}
	response.sendRedirect("login.jsp");
%>