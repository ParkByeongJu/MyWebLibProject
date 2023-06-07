<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>병주도서관</title>
    <style>
        #title{
        	background-color: black;
        	height: 110px;
        	position: absolute;
        	top: 0px;
        	left: -5px;
        }
        #logo{
        	width: 135px;
        	height: 110px;
        }
        #login{
	        position: absolute;
	        right: 200px;
	        top : 20px;
        }
        #searchID{
	        position: absolute;
	        right: 70px;
	        top : 20px;
        }
        #searchPassword{
	        position: absolute;
	        right: 70px;
	        top : 50px;
        }
        .user-info{
        	position: absolute;
        	right: 70px;
        	top: 20px;
        }
        
        #totalSearch{
	        position: absolute;
	        right: 150px;
	        top : 50px;
        }
        
        #logout{
	        position: absolute;
	        right: 70px;
	        top : 50px;
        }
    </style>
</head>
<body>
    <header>
        <div id="title">
            <img alt="" src="logo.png" id = "logo">
        </div>
    </header>
    
    <section>
    	
        <c:if test="${user.role == 'admin'}">
            <a href="/WebMyLibProject/Addbook.do">책입고</a>
            <a href="/WebMyLibProject/DeleteBook.do">책삭제</a>
        </c:if>
        
        <c:choose>
            <c:when test="${empty user}">
                <h3><a href="/WebMyLibProject/login.do" id="login">로그인</a></h3>
                <h3>
                    <a href="/WebMyLibProject/searchId.do" id = "searchID">아이디 찾기</a>
                    <a href="/WebMyLibProject/searchPassword.do" id = "searchPassword">비밀번호 찾기</a>
                </h3>
            </c:when>
            <c:otherwise>
                <span class="user-info">${user.name}(${user.id})님</span>
                <a href="/WebMyLibProject/totalSearch.do" id = "totalSearch">통합검색</a>
                <a href="/WebMyLibProject/logout.do" id = "logout">로그아웃</a>
            </c:otherwise>
        </c:choose>
    </section>
</body>
</html>
