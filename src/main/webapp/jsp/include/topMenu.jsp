<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<title>Document</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.0.0/css/bootstrap.min.css" />
  <style>
    body {
		background: black;
		margin: 0;
		font-family: Roboto, 'Segoe UI', Arial, 'Malgun Gothic', Gulim,
			sans-serif;
	}
	
	#logo {
		height: 92px;
		width: 272px;
		margin-bottom: 38px;
		z-index: 1;
		position: absolute;
		top: 110px;
		left: 750px;
	}
	
	.menu {
		display: inline-block;
		line-height: 24px;
		vertical-align: middle;
		font-family: arial, sans-serif;
		width: 33.9531px;
		height: 24px;
		color: white;
	}

	#home {
		font-family: arial, sans-serif;
		width: 33.9531px;
		height: 24px;
		color: white;
		text-decoration: none;
		position: absolute;
		top: 30px;
		left: 1400px;
		font-size: 15pt;
	}
	
	#github {
		font-family: arial, sans-serif;
		width: 33.9531px;
		height: 24px;
		color: white;
		text-decoration: none;
		position: absolute;
		top: 30px;
		left: 1520px;
		font-size: 15pt;
	}
	
	
	#login {
		font-family: arial, sans-serif;
		width: 33.9531px;
		height: 24px;
		color: white;
		text-decoration: none;
		position: absolute;
		top: 30px;
		left: 1660px;
		font-size: 15pt;
	}

	#logout {
		font-family: arial, sans-serif;
		width: 33.9531px;
		height: 24px;
		color: white;
		text-decoration: none;
		position: absolute;
		top: 30px;
		left: 1660px;
		font-size: 15pt;
	}
	
	#btn-wapper {
		position: absolute;
		top: 20px;
		left: 1790px;
		width: 100px;
		height: 24px;
	}
	
	.dropdown-menu{
		position: absolute;
		top: 1000%;
	}
	
	.col-3{
		position: absolute;
		top: 400px;
		left: 680px;
	}
  </style>
</head>

<body>
	<div class="menu">
		<a id="home" href="/WebMyLibProject/main.do"><i class="fas fa-home">home</i></a>
		<a id="github" href="https://github.com/ParkByeongJu"><i class="fab fa-github">&nbsp;GitHub</i></a>
		<c:choose>
			<c:when test="${empty loginUser }">
				<a id="login" href="/WebMyLibProject/login.do"><i class="fas fa-sign-in-alt">&nbsp;Login</i></a>
			</c:when>
			<c:otherwise>
				<a id="logout" href="/WebMyLibProject/logout.do"><i class="fas fa-sign-out-alt">&nbsp;Logout</i></a>
			</c:otherwise>
		</c:choose>
		<div id="btn-wapper" >	
			<div class="dropdown">
				<button class="btn btn-black btn-lg" type="button" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					<i class="fas fa-bars text-white"></i> <!-- 리스트 아이콘 -->
				</button>
				<ul class="dropdown-menu">
					<c:if test="${ loginUser.type eq 'S' }">
		            <li><a class="dropdown-item" href="/WebMyLibProject/insertbook.do">도서등록</a></li>
		             </c:if>
		             <li><a class="dropdown-item" href="/WebMyLibProject/myinfo.do"><i class="fas fa-user"></i> MyPage</a></li>
		             <li><a class="dropdown-item" href="/WebMyLibProject/booklist.do">도서목록</a></li>
		  		</ul>
			</div>
		</div>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>