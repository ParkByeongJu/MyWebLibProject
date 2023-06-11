<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</head>
<style>

body {
		background: black;
		margin: 0;
		font-family: Roboto, 'Segoe UI', Arial, 'Malgun Gothic', Gulim, sans-serif;
	}
	
.form-container {
		max-width: 500px;
		max-height : 800px;
		margin: 0 auto;
		padding: 70px;
		background-color: #343a40;
		border-radius: 8px;
		position: absolute;
		top: 50%;
		left: 50%;
		transform: translate(-50%, -50%);
	}

	.form-container label {
		font-weight: 500;
		color: white;
	}

	.form-container input[type="text"],
	.form-container input[type="password"] {
		width: 100%;
		padding: 20px;
		margin-bottom: 30px;
		border: 1px solid #ced4da;
		border-radius: 4px;
		color: white;
		background-color: transparent;
		box-sizing: border-box;
		height: 50px;
		width : 300px;
		font-size: 16px;
	}

	.form-container input[type="submit"] {
		width: 100%;
		padding: 10px;
		border: none;
		border-radius: 4px;
		background-color: #2c3e50;
		color: white;
		font-weight: 500;
		cursor: pointer;
	}

	.link {
		margin-top: 40px;
		text-align: center;
	}

	.link a {
		color: white;
		text-decoration: none;
	}

	.link a:hover {
		text-decoration: underline;
	}
	
	.alert-danger { /* 추가된 CSS 코드 */
		width: 100%;
		margin-bottom: 30px; /* 조정된 간격 */
		padding: 10px;
		border-radius: 4px;
		background-color: #dc3545;
		color: white;
		font-weight: 500;
		font-size: 11px;
		display: line-block; /* 기본적으로 에러 메시지 숨김 */
	}
</style>
<body>
	<header>
		
	</header>
	<section>
	<div class="form-container">
		<form action="/WebMyLibProject/loginProcess.do" method="post">
			<div class="mb-3">
				<label for="id" class="form-label">아이디</label>
				<input type="text" id="id" name="id" class="form-control" />
			</div>
			<div class="mb-3">
				<label for="password" class="form-label">비밀번호</label>
				<input type="password" id="password" name="password" class="form-control" />
			</div>
			<div class="mb-3">
				<input type="submit" value="로그인" class="btn btn-primary" />
			</div>
		</form>
		
		<c:choose>
	        <c:when test="${not empty error}">
	            <div class="alert alert-danger" role="alert">
	                ${error}
	            </div>
	        </c:when>
	    </c:choose>
		<div class="link">
			<a href="insertUser.do">회원가입</a>
		</div>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
	</section>
	<footer>
	
	</footer>
</body>
</html>