<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/login_style.css">
</head>

<body>
    <div class="container">
        <header class="d-flex mt-5 ms-auto me-auto">
            <a class="navbar-brand ms-auto me-auto logo_size" href="/index.html"><i class="fab fa-js">Web_Study</a>
        </header>
        <main class="mt-5">
            <div class="card border-gray mb-3 ms-auto me-auto" style="max-width: 30rem;">
            	<form action="login_service.jsp" method="get">
	                <div class="card-header bg-transparent border-gray d-flex justify-content-between">
	                    <div>로그인</div>
	                    <div><input type="checkbox" class="me-2">로그인 상태 유지</div>
	                </div>
	
	                <div class="card-body p-5 text-dark">
	                    <div class="form-floating mb-3">
	                        <input type="text" class="form-control" id="floatingInput" name="id" placeholder="아이디" required="required">
	                        <label for="floatingInput">아이디</label>
	                    </div>
	                    <div class="form-floating">
	                        <input type="password" class="form-control" id="floatingPassword" name="password" placeholder="비밀번호" required="required">
	                        <label for="floatingPassword">비밀번호</label>
	                    </div>
	                    <button class="btn btn-primary pt-3 pb-3 mt-3 mb-3 w-100 text" type="submit">로그인</button>
	                    <div class="g-signin2 mt-3" data-onsuccess="onSignIn"></div>
	                </div>
	                <div class="card-footer bg-transparent border-gray d-flex justify-content-center">
	                    <a href="" class="nav-link">비밀번호 찾기</a> <a href="" class="nav-link">회원가입</a>
	                </div>
                </form>
            </div>
        </main>
    </div>
    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="https://kit.fontawesome.com/c3df4d7dlc.js" crossorigin="annonymous"></script>
</body>

</html>