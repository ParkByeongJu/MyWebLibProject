<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="EUC-KR">
    <title>병주도서관: 회원 정보 수정</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .form-container {
        max-width: 500px;
        max-height: 800px;
        margin: 0 auto;
        padding: 70px;
        background-color: #343a40;
        border-radius: 8px;
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
    }

    .form-container h1,
    .form-container label {
        color: #fff;
    }

    .form-container .form-group {
        margin-bottom: 20px;
    }

    .form-container hr {
        border-color: #fff;
    }

    .form-container .text-white {
        color: #fff;
    }

    .form-container .form-label-left {
        text-align: left;
    }
    </style>
</head>
<body>
<div>
    <jsp:include page="/jsp/include/topMenu.jsp"/>
</div>
<div class="form-container">
    <div class="container mt-auto">
        <h1 class="text-center">회원 정보 수정</h1>
        <hr class="text-white" />
        <div class="text-center">
            <form action="updateuserinfo.do" method="post">
                <div class="form-group">
                    <br>
                    <label for="id" class="form-label-left" style="color: #fff;">아이디 :&nbsp; ${loginUser.id}</label>
                    <input name="id" type="hidden" value="${loginUser.id}" />
                </div>
                <div class="form-group">
                    <label for="password" class="form-label-left" style="color: #fff;">비밀번호</label>
                    <input type="password" name="password" value="${loginUser.password}" />
                </div>
                <div class="form-group">
                    <label for="name" class="form-label-left" style="color: #fff;">이름</label>
                    <input type="text" name="name" value="${loginUser.name}" />
                </div>
                <br>
                <div class="d-flex justify-content-center">
                    <input type="submit" value="수정" class="btn btn-dark" />
                </div>
            </form>
            <br/>
            <div class="d-flex justify-content-center">
            </div>
            
        </div>
    </div>
</div>
</body>
</html>
