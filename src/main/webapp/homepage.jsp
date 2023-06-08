<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>도서관 홈페이지</title>
     <style>
        /* 전체 페이지 스타일 */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        /* 헤더 스타일 */
        header {
            background-color: black;
            color: #fff;
            padding: 20px;
        }
        #logo{
        	width: 170px; 
        	height: 100px;
        	
        }

        /* 네비게이션 스타일 */
        nav {
            background-color: #555;
            color: #fff;
            padding: 10px;
            height: 50px;
        }

        nav ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
        }

        nav ul li {
            display: inline;
            margin-right: 10px;
        }

        nav ul li a {
            color: #fff;
            text-decoration: none;
        }
        
        #home{
        	position: absolute;
        	left: 590px;
        	font-size: 20pt;
        }
        
        #totalSearch{
        	position: absolute;
        	left: 700px;
        	font-size: 20pt;
        }
        
		#login{
			position: absolute;
			left: 900px;
			font-size: 20pt;
		}

		#logout{
			position: absolute;
			left: 900px;
			font-size: 20pt;
		}
		
		#qa{
			position: absolute;
			left: 1100px;
			font-size: 20pt;
		}
        /* 메인 콘텐츠 스타일 */
        main {
            padding: 100px;
        }

        h2 {
            color: #333;
        }

        #middlelogin{
        position: absolute;
        left: 1500px;
        }
        /* 푸터 스타일 */
        footer {
            background-color: black;
            color: #fff;
            padding: 10px;
            text-align: center;
        }
    </style>
</head>
<body>
    <header>
        <img alt="" src="logo.png" id = "logo">
    </header>
    
    <nav>
        <ul>
        	<c:choose>
	        	<c:when test="${empty user }">
		            <li><a href="/WebMyLibProject/homepage.do" id="home">홈</a></li>
		            <li><a href="/WebMyLibProject/login.do" id="login">로그인</a></li>
		            <li><a href="/WebMyLibProject/totalSearch.do" id="totalSearch">통합검색</a></li>
		            <li><a href="contact.html" id="qa">문의</a></li>
	            </c:when>
	            <c:otherwise>
		            <li><a href="/WebMyLibProject/homepage.do" id="home">홈</a></li>
		            <li><a href="/WebMyLibProject/logout.do" id = "logout">로그아웃</a></li>
		            <li><a href="/WebMyLibProject/totalSearch.do" id = "totalSearch">통합검색</a></li>
		            <li><a href="/WebMyLibProject/rentalReturn.do" id = "rentalReturn">대출/반납</a></li>
		            <li><a href="contact.html" id="qa">문의</a></li>
	            </c:otherwise>
        	</c:choose>
        </ul>
    </nav>
    
    <main>
        <h2>도서 목록</h2>
        <!-- 도서 목록을 표시하는 내용을 추가합니다. -->
    
    
    <c:if test="${user.role == 'admin'}">
            <a href="/WebMyLibProject/Addbook.do">책입고</a>
            <a href="/WebMyLibProject/DeleteBook.do">책삭제</a>
        </c:if>
     <c:choose>
            <c:when test="${empty user}">
                <h3><a href="/WebMyLibProject/login.do" id="middlelogin">로그인</a></h3>
            </c:when>
            <c:otherwise>
                <span class="user-info">${user.name}(${user.id})님</span>
                <a href="/WebMyLibProject/totalSearch.do" id = "totalSearch">통합검색</a>
                <a href="/WebMyLibProject/rentalReturn.do" id = "rentalReturn">대출/반납</a>
                <a href="/WebMyLibProject/logout.do" id = "logout">로그아웃</a>
      </c:otherwise>
    </c:choose>
    </main>
    <footer>
        <p>&copy; 2023 도서관. All rights reserved.</p>
    </footer>
</body>
</html>
