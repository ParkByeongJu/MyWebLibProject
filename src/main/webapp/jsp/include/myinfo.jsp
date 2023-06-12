<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="EUC-KR">
    <title>My Info</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
    	.container {
			max-width: 200px;
			margin: 0 auto;
			padding: 30px;
			background-color: #343a40;
			border-radius: 8px;
			position: absolute;
			top: 50%;
			left: 50%;
			transform: translate(-50%, -50%);
		}
    
        .custom-container {
            background-color: #343a40;
            color: #fff;
            padding: 20px;
            border-radius: 10px;
            margin: 0 auto; /* 가운데 정렬을 위해 추가 */
            text-align: center; /* 버튼을 중앙에 가로로 정렬 */
        }

        .custom-container p,
        .custom-container h1,
        .custom-container form {
            text-align: center;
        }
        
        .custom-container form {
            display: inline-block; /* 인라인 요소로 변경하여 가로로 정렬 */
            margin-top: 20px;
        }
        
        .custom-container form input[type="submit"] {
            margin-right: 10px;
        }
        
        /* Bootstrap 버튼 스타일 적용 */
        .custom-container form input[type="submit"].btn-primary {
            color: #fff;
            background-color: #007bff;
            border-color: #007bff;
        }
        
        .custom-container form input[type="submit"].btn-primary:hover {
            color: #fff;
            background-color: #0069d9;
            border-color: #0062cc;
        }
    </style>
</head>
<body>
<div>
    <jsp:include page="/jsp/include/topMenu.jsp"/>
</div>
<div class="container">
    <div class="custom-container">
        <h1>${user.id}(${user.name})님 정보</h1>
        <p>아이디: ${user.id}</p>
        <p>이름: ${user.name}</p>
        <c:if test="${ user.type eq 'S' }">유형: 관리자</c:if>
        <c:if test="${ user.type eq 'U' }">유형: 사용자</c:if>
        <div>
            <form action="updateinfo.do" method="POST">
                <input type="submit" value="회원정보수정" class="btn btn-dark">
            </form>
            <form action="deleteuser.do" method="POST">
                <input type="submit" value="회원탈퇴" class="btn btn-dark">
            </form>
            <form action="returnbooklist.do" method="POST">
                <input type="submit" value="대여중인 도서목록" class="btn btn-dark">
            </form>
        </div>
    </div>
</div>
</body>
</html>
