<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
    <meta charset="EUC-KR">
    <title>도서 목록</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .container {
            background-color: #343a40;
            color: #fff;
            padding: 20px;
            max-width: 800px;
            max-height: 800px;
            margin: 0 auto;
            border-radius: 8px;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            text-align: center;
        }

        .container h1 {
            color: #fff;
        }

        .container .book {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-bottom: 20px;
        }

        .container .book span {
            flex-basis: 16.66%;
        }

        .container .book .status {
            width: 8%;
        }
        
        .container .book .action {
            width: 8%;
            text-align: right;
        }

        .container .book span.header {
            font-weight: bold;
        }

        .container .book .rented-book {
            color: #ff0000;
        }

        .container .book .available-book {
            color: #00ff00;
        }
    </style>
</head>
<body>
<header>
    <jsp:include page="/jsp/include/topMenu.jsp"/>
</header>
<section>
    <div class="container">
        <h1>전체 도서</h1>
        <hr class="text-white" />

        <c:forEach var="book" items="${sbook}">
            <div class="book">
                <span>${book.no}</span>
                <span>${book.title}</span>
                <span>${book.writer}</span>
                <span>${book.publisher}</span>
                <span class="${book.rented_book eq '1' ? 'rented-book' : 'available-book'} status">
                    <c:choose>
                        <c:when test="${book.rented_book eq '1'}">
                            대출 중
                        </c:when>
                        <c:otherwise>
                            대출 가능
                        </c:otherwise>
                    </c:choose>
                </span>
                <span class="action">
                    <c:choose>
                        <c:when test="${book.rented_book eq '0'}">
                            <c:if test="${loginUser.type eq 'U'}">
                                <form action="rentbook.do" method="POST">
                                    <input type="hidden" name="no" value="${book.no}">
                                    <input type="hidden" name="id" value="${loginUser.id}">
                                    <input type="submit" value="대출하기" class="btn btn-dark">
                                </form>
                            </c:if>
                            <c:if test="${loginUser.type eq 'S'}">
                                <form action="deletebook.do" method="post" onsubmit="return confirm('삭제하시겠습니까?');">
                                    <input type="hidden" name="no" value="${book.no}">
                                    <input type="submit" value="삭제" class="btn btn-danger">
                                </form>
                            </c:if>
                        </c:when>
                        <c:when test="${book.rented_book eq '1'}">
                            <c:choose>
                                <c:when test="${loginUser.type eq 'S'}">
                                    <form action="deletebook.do" method="post" onsubmit="return confirm('삭제하시겠습니까?');">
                                        <input type="hidden" name="no" value="${book.no}">
                                        <input type="submit" value="삭제" class="btn btn-danger" disabled>
                                    </form>
                                </c:when>
                                <c:otherwise>
                                    대출 중
                                </c:otherwise>
                            </c:choose>
                        </c:when>
                    </c:choose>
                </span>
            </div>
        </c:forEach>
    </div>
</section>
<footer>
</footer>
</body>
</html>
