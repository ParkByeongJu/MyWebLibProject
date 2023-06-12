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
            margin: 0 auto; /* ��� ������ ���� �߰� */
            text-align: center; /* ��ư�� �߾ӿ� ���η� ���� */
        }

        .custom-container p,
        .custom-container h1,
        .custom-container form {
            text-align: center;
        }
        
        .custom-container form {
            display: inline-block; /* �ζ��� ��ҷ� �����Ͽ� ���η� ���� */
            margin-top: 20px;
        }
        
        .custom-container form input[type="submit"] {
            margin-right: 10px;
        }
        
        /* Bootstrap ��ư ��Ÿ�� ���� */
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
        <h1>${user.id}(${user.name})�� ����</h1>
        <p>���̵�: ${user.id}</p>
        <p>�̸�: ${user.name}</p>
        <c:if test="${ user.type eq 'S' }">����: ������</c:if>
        <c:if test="${ user.type eq 'U' }">����: �����</c:if>
        <div>
            <form action="updateinfo.do" method="POST">
                <input type="submit" value="ȸ����������" class="btn btn-dark">
            </form>
            <form action="deleteuser.do" method="POST">
                <input type="submit" value="ȸ��Ż��" class="btn btn-dark">
            </form>
            <form action="returnbooklist.do" method="POST">
                <input type="submit" value="�뿩���� �������" class="btn btn-dark">
            </form>
        </div>
    </div>
</div>
</body>
</html>
