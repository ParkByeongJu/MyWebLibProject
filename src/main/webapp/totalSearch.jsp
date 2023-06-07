<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>통합 검색</title>
</head>
<header>
	<h1>통합 검색</h1>
	<hr />
</header>
<body>
	<form action="bookTotalSearch.do" method="post">
		<label for="total"></label> <br> <input type="text" name="total"
			id="total" placeholder="통합검색"> <input type="submit"
			value="Search">
	</form>

	<c:if
		test="${not empty name || not empty writer || not empty publisher}">

		<h3>제목 검색 결과</h3>
		<hr>
		<ul>
			<c:forEach items="${name}" var="name">
				<li>${name}</li>
			</c:forEach>
		</ul>
		<c:if test="${empty name}">
			<h3>검색 결과가 없습니다.</h3>
		</c:if>

		<h3>저자 검색 결과</h3>
		<hr>
		<ul>
			<c:forEach items="${writer}" var="writer">
				<li>${writer}</li>
			</c:forEach>
		</ul>
		<c:if test="${empty writer}">
			<h3>검색 결과가 없습니다.</h3>
		</c:if>

		<h3>출판사 검색 결과</h3>
		<hr>
		<ul>
			<c:forEach items="${publisher}" var="publisher">
				<li>${publisher}</li>
			</c:forEach>
		</ul>
		<c:if test="${empty publisher}">
			<h3>검색 결과가 없습니다.</h3>
		</c:if>
	</c:if>



</body>
</html>