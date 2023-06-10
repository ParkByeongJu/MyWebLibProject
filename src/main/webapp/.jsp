<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� �˻�</title>
</head>
<header>
	<h1>���� �˻�</h1>
	<hr />
</header>
<body>
	<form action="bookTotalSearch.do" method="post">
		<label for="total"></label> <br> <input type="text" name="total"
			id="total" placeholder="���հ˻�"> <input type="submit"
			value="Search">
	</form>

	<c:if
		test="${not empty name || not empty writer || not empty publisher}">

		<h3>���� �˻� ���</h3>
		<hr>
		<ul>
			<c:forEach items="${name}" var="name">
				<li>${name}</li>
			</c:forEach>
		</ul>
		<c:if test="${empty name}">
			<h3>�˻� ����� �����ϴ�.</h3>
		</c:if>

		<h3>���� �˻� ���</h3>
		<hr>
		<ul>
			<c:forEach items="${writer}" var="writer">
				<li>${writer}</li>
			</c:forEach>
		</ul>
		<c:if test="${empty writer}">
			<h3>�˻� ����� �����ϴ�.</h3>
		</c:if>

		<h3>���ǻ� �˻� ���</h3>
		<hr>
		<ul>
			<c:forEach items="${publisher}" var="publisher">
				<li>${publisher}</li>
			</c:forEach>
		</ul>
		<c:if test="${empty publisher}">
			<h3>�˻� ����� �����ϴ�.</h3>
		</c:if>
	</c:if>



</body>
</html>