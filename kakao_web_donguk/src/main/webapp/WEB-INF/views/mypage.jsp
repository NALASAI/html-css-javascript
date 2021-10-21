<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel = "stylesheet" href="css/style.css">
    <link rel = "stylesheet" href="css/mainNav.css">
    <link rel = "stylesheet" href="css/mypage.css">
</head>
<body>
    <div class="container">
        <jsp:include page="include/index_include/index_header.jsp"></jsp:include>
        <main>
            <div class="mypage-content"> 
                <div>
                    <h1>마이페이지</h1>
                </div>
                <div class="mypage-items">
                    <div class="item_tf">
                        <input type = "hidden" id="user_email" name="user_email" value="${login_user.id }">
                        <label class="item_lb" for="">${login_user.id }@kakao.com</label>
                    </div>
                    <div class="item_tf">
	                    <input type = "hidden" name="user_password" value="${login_user.password }">
                        <input type="password" class="item_ip" name="update_password" placeholder="비밀번호 입력">
                    </div>
                    <div class="item_msg">
                        <span class="msg1"></span>
                    </div>
                    <div class="item_tf">
                        <input type="password" class="item_ip" placeholder="비밀번호 확인">
                    </div>
                    <div class="item_msg">
                        <span class="msg1">비밀번호가 일치하지 않습니다.</span>
                    </div>
                    <div class="item_tf">
                        <input type="hidden" id="user_name" value="${login_user.name }">
                        <label class="item_lb" for="">${login_user.name }</label>
                    </div>
                    <div class="item_tf">
	                    <input type="hidden" id="user_phone" value="${login_user.phone }">
                        <input type="tel" class="item_ip" placeholder="전화번호 입력">
                        <div class="util_tf">
                            <button class="button_round">인증요청</button>
                        </div>
                    </div>
                    <div class="item_msg">
                        <span class="msg1">이미 가입된 연락처 입니다.</span>
                        <span class="msg2">인증실패. 연락처를 다시 확인해 주세요.</span>
                        <span class="msg3">인증성공.</span>
                    </div>
                    <div class="confirm_btn">
                        <button class="btn_g">회원정보 수정</button>
                    </div>
            </div>
        </main>
    </div>
    <script src="https://kit.fontawesome.com/b633b9875d.js" crossorigin="anonymous"></script>
    <script src="js/mypage.js"></script>
</body>
</html>