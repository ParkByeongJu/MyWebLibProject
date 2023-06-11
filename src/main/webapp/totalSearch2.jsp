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
	
	.container {
		margin-top: 50px;
	}

	.card {
		margin-top: 20px;
	}

	.card-body {
		padding: 20px;
	}

	h3 {
		font-size: 24px;
		margin-bottom: 10px;
	}

	hr {
		border-top: 1px solid #555;
		margin-bottom: 15px;
	}

	ul.result-list {
		padding: 0;
		margin: 0;
		list-style-type: none;
	}

	ul.result-list li {
		margin-bottom: 10px;
		font-size: 18px;
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
	
	<div class="container mt-5">
    <c:if test="${not empty name && empty writer && empty publisher}">
        <div class="card bg-dark text-white" style="font-family: 'Roboto', sans-serif;">
            <div class="card-body">
                <h3>제목 검색 결과</h3>
                <hr>
                <ul class="result-list">
                    <c:forEach items="${name}" var="nameItem" varStatus="loop">
                        <li>
                            <strong>제목:</strong> ${nameItem}<br>
                            <strong>저자:</strong> ${writer[loop.index - 1]}<br>
                            <strong>출판사:</strong> ${publisher[loop.index - 1]}<br>
                            <strong>출판날짜:</strong> ${publicationdate[loop.index - 1]}<br>
                        </li>
                    </c:forEach>
                </ul>
                <c:if test="${empty name}">
                    <h3>검색 결과가 없습니다.</h3>
                </c:if>
            </div>
        </div>
    </c:if>

    <c:if test="${empty name && not empty writer && empty publisher}">
        <div class="card mt-4 bg-dark text-white" style="font-family: 'Roboto', sans-serif;">
            <div class="card-body">
                <h3>저자 검색 결과</h3>
                <hr>
                <ul class="result-list">
                    <c:forEach items="${writer}" var="writerItem" varStatus="loop">
                        <li>
                            <strong>제목:</strong> ${name[loop.index - 1]}<br>
                            <strong>저자:</strong> ${writerItem}<br>
                            <strong>출판사:</strong> ${publisher[loop.index - 1]}<br>
                            <strong>출판날짜:</strong> ${publicationdate[loop.index - 1]}<br>
                        </li>
                    </c:forEach>
                </ul>
                <c:if test="${empty writer}">
                    <h3>검색 결과가 없습니다.</h3>
                </c:if>
            </div>
        </div>
    </c:if>

    <c:if test="${empty name && empty writer && not empty publisher}">
        <div class="card mt-4 bg-dark text-white" style="font-family: 'Roboto', sans-serif;">
            <div class="card-body">
                <h3>출판사 검색 결과</h3>
                <hr>
                <ul class="result-list">
                    <c:forEach items="${publisher}" var="publisherItem" varStatus="loop">
                        <li>
                            <strong>제목:</strong> ${name[loop.index - 1]}<br>
                            <strong>저자:</strong> ${writer[loop.index - 1]}<br>
                            <strong>출판사:</strong> ${publisherItem}<br>
                            <strong>출판날짜:</strong> ${publicationdate[loop.index - 1]}<br>
                        </li>
                    </c:forEach>
                </ul>
                <c:if test="${empty publisher}">
                    <h3>검색 결과가 없습니다.</h3>
                </c:if>
            </div>
        </div>
    </c:if>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
