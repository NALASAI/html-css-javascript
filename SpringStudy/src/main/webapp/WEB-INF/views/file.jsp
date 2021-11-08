<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일 출력</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

</head>
<body>
	<form id="file_form">
		아이디 <input type="text" name="user_id"><br>
		비밀번호 <input type="password" name="user_password"><br>
		프로필 사진 <input type="file" multiple="multiple" name="user_photo"><br>
		<button type="button" class="btn">등록</button>
	</form>
	
	<script type="text/javascript">
		const btn = document.querySelector('.btn');
		btn.onclick = () => {
			const file_form = document.querySelector('#file_form');
			let formData = new FormData(file_form);
			formData.append("user_name", "강동욱");
			
			$.ajax({
				type: "post",
				url: "file-insert",
				enctype: "multpart/form-data",
				processData: false,
				contentType: false,
				data: formData,
				dataType: "text",
				success: function(data){
					alert("전송 성공");
				},
				error: function(){
					alert("전송 실패");
				}
			})
		}
	</script>
</body>
</html>