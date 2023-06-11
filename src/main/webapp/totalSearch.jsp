<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">
<title>통합 검색</title>
<style type="text/css">
	body {
		background: black;
		margin: 0;
		font-family: Roboto, 'Segoe UI', Arial, 'Malgun Gothic', Gulim, sans-serif;
	}
	
	#logo {
		height: 92px;
		width: 272px;
		margin-bottom: 38px;
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
</style>
</head>
<body>
	<div id="logo">
			<img alt="" src="logo.png">
	</div>
	<div class="menu">
		<a id="github" href="https://github.com/ParkByeongJu"><i class="fab fa-github">&nbsp;GitHub</i></a>
		<c:choose>
			<c:when test="${empty user}">
				<a id="login" href="/WebMyLibProject/totalSearch.do"><i class="fas fa-sign-in-alt">&nbsp;Login</i></a>
			</c:when>
			<c:otherwise>
				<a id="logout" href="/WebMyLibProject/totalSearch.do"><i class="fas fa-sign-out-alt">&nbsp;Logout</i></a>
			</c:otherwise>
		</c:choose>
	</div>
	
		
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
