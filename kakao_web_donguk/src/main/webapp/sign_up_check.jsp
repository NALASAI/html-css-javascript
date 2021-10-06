<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String submit_flag = request.getParameter("submit_flag");
	if(submit_flag.equals("1")){
		//가입 요청
	} else if(submit_flag.equals("2")){
		// 전화번호 인증 요청
	}
%>