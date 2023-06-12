<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="EUC-KR">
    <title>Insert title here</title>
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
        <jsp:include page="/jsp/include/topMenu.jsp" />
    </header>

    <section>
        <div class="container">
        <h1>대여중 도서</h1>
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
                <c:if test="${loginUser.type eq 'U'}">
                    <span>
                        <c:if test="${book.rented_book eq '1'}">
                            <form action="returnbook.do" method="POST">
                                <input type="hidden" name="no" value="${book.no}">
                                <input type="hidden" name="id" value="${loginUser.id}">
                                <input type="submit" value="반납하기">
                            </form>
                        </c:if>
                    </span>
                </c:if>
            </div>
        </c:forEach>
        
        </div>
    </section>

</body>
</html>
