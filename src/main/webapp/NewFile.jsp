<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<title>���ֵ�����</title>
<style type="text/css">
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
		left: 730px;
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
	
	#btn-wapper {
		position: absolute;
		top: 20px;
		left: 1790px;
		width: 100px;
		height: 24px;
	}
	
</style>
</head>
<body>
	<div id="logo">
		<img alt="" src="logo.png">
	</div>
	<div class="menu">
		<a id="github" href="https://github.com/ParkByeongJu"><i class="fab fa-github">&nbsp;GitHub</i></a>
		<a id="login" href="/WebMyLibProject/login.do"><i class="fas fa-sign-in-alt">&nbsp;Login</i></a>
			<div id="btn-wapper" >	
			<div class="dropdown">
				<button class="btn btn-black btn-lg" type="button" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					<i class="fas fa-bars text-white"></i> <!-- ����Ʈ ������ -->
				</button>
				<ul class="dropdown-menu">
					<li><a class="dropdown-item" href="#"><i class="fas fa-home"></i> Home</a></li>
					<li><a class="dropdown-item" href="#"><i class="fas fa-cog"></i> Settings</a></li>
					<li><a class="dropdown-item" href="#"><i class="fas fa-user"></i> Profile</a></li>
		  		</ul>
			</div>
		</div>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
	</body>
</html>