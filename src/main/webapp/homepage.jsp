<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���ֵ�����</title>
</head>
	<style>
		#top{
		 background-color: blue;
		}
		#title{
			margin: 0%
			font-size: large;
		}
	</style>
<header>
	<div id="top"></div>
    <div id="title">������</div>
    <hr/>
</header>
<body>
<section>
	<c:if test="${ user.role == 'admin' }">
		<a href="/WebMyLibProject/Addbook.do">å�԰�</a><a href="/WebMyLibProject/DeleteBook.do">å����</a>
	</c:if>
	<c:choose>
		<c:when test="${ empty user }">
		    <h1><a href="/WebMyLibProject/login.do">�α���</a></h1>
		    <h3><a href="/WebMyLibProject/searchId.do">���̵� ã��</a> <a href="/WebMyLibProject/searchPassword.do">��й�ȣ ã��</a> <a href="/WebMyLibProject/insertUser.do">ȸ������</a></h3>
		</c:when>
		<c:otherwise>
			${ user.name }(${ user.id })��
			<a href="/WebMyLibProject/getBookList.do">��ü�����˻�</a>
			<a href="/WebMyLibProject/logout.do">�α׾ƿ�</a>			 
		</c:otherwise>
	</c:choose>
</section>
</body>
</html>