<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>도서관 사이트</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        
        header {
            background-color: blue;
            padding: 10px;
        }
        
        #title {
            margin: 0;
            font-size: 24px;
            color: #ffffff;
        }
        
        section {
            padding: 20px;
        }
        
        h2 {
            margin-top: 0;
            color: #333333;
        }
        
        ul.book-list {
            list-style: none;
            padding: 0;
            margin: 0;
            display: flex;
            flex-wrap: wrap;
        }
        
        li.book-item {
            width: 200px;
            margin-right: 20px;
            margin-bottom: 20px;
        }
        
        .book-item img {
            width: 100%;
            height: auto;
        }
        
        .book-item h3 {
            margin: 5px 0;
            font-size: 16px;
        }
        
        .book-item p {
            margin: 0;
            font-size: 14px;
            color: #666666;
        }
        
        .login-form {
            max-width: 300px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #cccccc;
        }
        
        .login-form input[type="text"],
        .login-form input[type="password"] {
            width: 100%;
            margin-bottom: 10px;
            padding: 10px;
            font-size: 14px;
            border: 1px solid #cccccc;
        }
        
        .login-form button {
            width: 100%;
            padding: 10px;
            font-size: 14px;
            background-color: blue;
            color: #ffffff;
            border: none;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <header>
        <h1 id="title">도서관 사이트</h1>
    </header>
    
    <section>
        <h2>추천 도서</h2>
        <ul class="book-list">
            <c:forEach var="book" items="${recommendedBooks}">
                <li class="book-item">
                    <img src="${book.image}" alt="${book.title} 표지 이미지">
                    <h3>${book.title}</h3>
                    <p>저자: ${book.author}</p>
                </li>
            </c:forEach>
        </ul>
    </section>
    
    <section>
        <h2>신작 도서</h2>
        <ul class="book-list">
            <c:forEach var="book" items="${newBooks}">
                <li class="book-item">
                    <img src="${book.image}" alt="${book.title} 표지 이미지">
                    <h3>${book.title}</h3>
                    <p>저자: ${book.author}</p>
                </li>
            </c:forEach>
        </ul>
    </section>
    
    <section>
        <h2>인기 도서</h2>
        <ul class="book-list">
            <c:forEach var="book" items="${popularBooks}">
                <li class="book-item">
                    <img src="${book.image}" alt="${book.title} 표지 이미지">
                    <h3>${book.title}</h3>
                    <p>저자: ${book.author}</p>
                </li>
            </c:forEach>
        </ul>
    </section>
    
    <section>
        <h2>로그인</h2>
        <div class="login-form">
            <form action="/WebMyLibProject/login.do" method="post">
                <input type="text" name="username" placeholder="아이디" required>
                <input type="password" name="password" placeholder="비밀번호" required>
                <button type="submit">로그인</button>
            </form>
        </div>
    </section>
</body>
</html>
