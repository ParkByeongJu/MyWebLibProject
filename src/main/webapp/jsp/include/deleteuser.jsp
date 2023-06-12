<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="EUC-KR" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="EUC-KR">
    <title>회원탈퇴</title>
    <style>
        body {
            background-color: #343a40;
            color: #fff;
        }

        .container {
           background-color: #343a40;
	    width: 500px; /* 원하는 가로 길이로 조정해주세요 */
	    margin: 0 auto;
	    padding: 20px;
	    text-align: center;
	    position: absolute;
	    top: 200px;
	    left: 50%;
	    transform: translateX(-50%);
        }

        .container h1 {
            color: #fff;
        }

        .container label {
            display: block;
            margin-bottom: 10px;
            color: #fff;
        }

        .container input[type="password"],
        .container input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border-radius: 4px;
        }

        .container input[type="password"] {
            background-color: #fff;
            color: #343a40;
        }

        .container input[type="submit"] {
            background-color: #343a40;
            color: #fff;
            cursor: pointer;
        }

        .container input[type="submit"]:hover {
            background-color: #1a1d21;
        }
    </style>
</head>
<body>
    <header>
        <jsp:include page="/jsp/include/topMenu.jsp" />
    </header>
    <section>
        <div class="container">
            <h1>회원탈퇴</h1>
            <form action="deleteuserprocess.do" method="POST">
                <input type="hidden" name="id" value="${ loginUser.id }">
                <div>
                    <label for="currentPassword" style="color: #fff;">현재 비밀번호:</label>
                    <input type="password" id="currentPassword" name="password" required>
                </div>
                <div>
                    <label for="confirmPassword" style="color: #fff;">비밀번호 확인:</label>
                    <input type="password" id="confirmPassword" name="pwcheck" required>
                </div>
                <div>
                    <input type="submit" value="회원탈퇴">
                </div>
            </form>
        </div>
    </section>
    <footer>
    </footer>
</body>
</html>
