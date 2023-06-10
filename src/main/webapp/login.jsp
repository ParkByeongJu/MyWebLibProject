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
<title>병주도서관: 로그인</title>
</head>
<style type="text/css">
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
	<div class="form-container">
		<form action="login.do" method="post">
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
			<a href="insertUser.jsp">회원가입</a>
		</div>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>