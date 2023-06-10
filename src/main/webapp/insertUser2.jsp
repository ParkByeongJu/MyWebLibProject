<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
  $(document).ready(function() {
    // 아이디 중복 체크 버튼 클릭 이벤트 처리
    $('#checkDuplicate').click(function(e) {
      e.preventDefault();
      var username = $('#username').val(); // 입력된 아이디 가져오기
      
      // AJAX 요청 수행
      $.ajax({
        url: 'checkDuplicate.do', // 중복 체크를 수행하는 서버 측의 URL로 변경해야 합니다.
        type: 'POST',
        data: { username: username },
        success: function(response) {
          if (response === 'duplicate') {
            alert('중복된 아이디입니다.');
          } else {
            alert('사용 가능한 아이디입니다.');
          }
        },
        error: function() {
          alert('서버와의 통신에 오류가 발생했습니다.');
        }
      });
    });
  });
</script>
<title>병주도서관: 회원가입</title>
</head>
<style>
	body {
			background: black;
			margin: 0;
			font-family: Roboto, 'Segoe UI', Arial, 'Malgun Gothic', Gulim,
				sans-serif;
		}
		
		
	.container {
        background: #333;
        padding: 30px;
        border-radius: 10px;
        max-width: 600px;
		position: absolute;
		top: 40%;
		left: 50%;
		transform: translate(-50%, -50%);
    }

    .form-label, .text-light {
        color: #fff;
    }
    
    .btn-primary-custom {
        background-color: #007bff;
        border-color: #007bff;
        color: #fff;
    }
    
    .user-type-container label {
	    margin-right: 30px;
	}
		
</style>
<body>
	<div class="container mt-5">
    <h1 class="text-center text-light">회원가입</h1>

    <div class="row justify-content-center">
	        <div class="col-md-6">
	            <form action="registerProcess.do" method="post" class="mt-5">
	                <div class="mb-3">
	                    <label for="username" class="form-label text-light">아이디</label>
	                    <input type="text" name="username" id="username" class="form-control" required>
	                </div>
	
	                <div class="mb-3">
	                    <label for="password" class="form-label text-light">비밀번호</label>
	                    <input type="password" name="password" id="password" class="form-control" required>
	                </div>
	
	                <div class="mb-3">
	                    <label for="email" class="form-label text-light">이메일</label>
	                    <input type="email" name="email" id="email" class="form-control" required>
	                </div>
	
	                <div class="mb-3">
	                    <label for="phone" class="form-label text-light">휴대폰 번호</label>
	                    <input type="tel" name="phone" id="phone" class="form-control" required>
	                </div>
	
	                <div class="mb-3">
					    <label for="userType" class="form-label text-light">사용자 유형</label>
					    <div class="user-type-container">
					        <label>
					            <input type="radio" id="admin" name="role" value="admin" checked="checked">
					            <span class="text-white">관리자</span>
					        </label>
					        <label>
					            <input type="radio" id="user" name="role" value="user">
					            <span class="text-white">사용자</span>
					        </label>
					    </div>
					</div>
	
	                <div class="text-center">
	                    <button type="submit" class="btn btn-dark">가입하기</button>
	                </div>
	            </form>
	
	            <div class="text-center mt-3">
	                <a href="login.do" class="text-light">이미 회원이신가요? 로그인하기</a>
	            </div>
	        </div>
	    </div>
	</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>