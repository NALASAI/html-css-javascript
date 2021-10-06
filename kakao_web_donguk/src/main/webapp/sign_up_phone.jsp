<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	String repassword = request.getParameter("repassword");
	String name = request.getParameter("name");
	String flag = request.getParameter("flag") == null ? "0" : request.getParameter("flag");
%>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>카카오계정 만들기</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/sign_up.css">
</head>

<body>
    <div class="container">
        <div class="inner_container">
            <jsp:include page="sign_up_include/sign_up_header.jsp"></jsp:include>
            <main>
                <div class="warp_form">
                    <form action="sign_up_check.jsp" method="post">
                    	<input type="hidden" name="id" value="<%=id %>">
                    	<input type="hidden" id="password" name="password" value="<%=password %>">
                    	<input type="hidden" id="repassword" name="repassword" value="<%=repassword %>">	
                    	<input type="hidden" id="name" name="name" value="<%=name %>">
                    	<input type="hidden" id="flag" name="flag" value="<%=flag %>">
                    	<input type="hidden" id="submit_flag" name="flag" value="0">
                    	
                        <div class="navigation_wrap">
                            <progress class="bar_navigation" value="100" max="100"></progress>
                        </div>
                        <h2>카카오계정 가입을 위해<br>
                            휴대폰 인증을 진행해 주세요.</h2>
                        <div class="item_tf">
                            <input type="tel" class="item_ip" placeholder="전화번호 입력">
                            <div class="util_tf">
                                <button type="button" class="button_round">인증요청</button>
                            </div>
                        </div>
                        <div class = "item_msg">
                        	<span class = "msg1">필수항목입니다</span>
							<span class = "msg2">이미 가입된 객체입니다</span>
							<span class = "msg3">인증실패, 연락처를 다시 확인해 보세요</span>                        
                        </div>
                        <div class="confirm_btn">
                            <button type="button">마침</button>
                        </div>
                    </form>
                </div>
            </main>
            <jsp:include page="sign_up_include/sign_up_footer.jsp"></jsp:include>
        </div>
    </div>
</body>

</html>