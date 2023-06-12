<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>회원가입</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <style>
       body {
            background: black;
            margin: 0;
            font-family: Roboto, 'Segoe UI', Arial, 'Malgun Gothic', Gulim, sans-serif;
        }
        
        h1 {
            text-align: center;
            margin-bottom: 20px;
            color: white;
        }
        
        
        
        .form-container {
            background: #333;
            padding: 30px;
            border-radius: 10px;
            width: 600px;
            height: 600px;
            position: absolute;
            top: 40%;
            left: 50%;
            transform: translate(-50%, -50%);
        }
        
        .form-container label {
            display: block;
            margin-bottom: 10px;
            font-weight: bold;
            color: #fff;
        }
        
        .form-container input[type="text"],
        .form-container input[type="password"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }
        
        .form-container input[type="radio"] {
            margin-right: 5px;
        }
        
        .form-container input[type="submit"] {
            width: 50%;
            padding: 15px;
            background-color: #2c3e50;
            color: #fff;
            border: none;
            border-radius: 3px;
            cursor: pointer;
            position: absolute;
            left: 25%;
            top : 420px;
            font-size: 18px;
        }
        
        .form-container .login-link {
            text-align: center;
            margin-top: 10px;
            font-size: 16px;
            color: #fff;
            position: absolute;
            top: 500px;
            left: 220px;
        }
        
        .form-container .login-link a {
            color: #fff;
            text-decoration: none;
        }
        
        .form-container .login-link a:hover {
            color: #ccc;
        }
        
        .form-container .role-container {
            display: flex;
            justify-content: center;
            margin-top: 10px;
            position: absolute;
            top: 350px;
            left: 250px;
        }
        
        .form-container .role-container label {
            margin-right: 10px;
            color: #fff;
        }
        
    </style>
    
    <script>
 // 아이디 유효성 검사 함수
    function validateId() {
        var id = $("#id").val();
        var idRegex = /^[a-zA-Z0-9]{1,16}$/;
        if (!idRegex.test(id)) {
            $("#id").addClass("is-invalid");
            return false;
        } else {
            $("#id").removeClass("is-invalid");
            return true;
        }
    }

    // 비밀번호 유효성 검사 함수
    function validatePassword() {
        var password = $("#password").val();
        var passwordRegex = /^[a-zA-Z0-9]{1,16}$/;
        if (!passwordRegex.test(password)) {
            $("#password").addClass("is-invalid");
            return false;
        } else {
            $("#password").removeClass("is-invalid");
            return true;
        }
    }

    function checkSubmit() {
        var id = $("#id").val();
        // 유효성 검사 수행
        if (validateId() && validatePassword()) {
            // 유효성 검사 통과 시 AJAX 요청
            console.log('duplicate check start...')
            $.ajax({
                url: "/WebMyLibProject/checkduplicateid.do", // 중복 아이디 확인을 위한 서버 요청 URL
                method: "POST",
                data: {id: id}, // 폼 데이터 직렬화하여 전송
                success: function(response) {
                    response = response.trim();
                    if (response === "duplicate") {
                        alert("중복된 아이디입니다. 다른 아이디를 사용해주세요.");
                    } else if (response === "success") {
                        // 유효성 검사와 중복 아이디 확인 모두 통과 시 회원가입 진행
                        $("#signupForm")[0].submit();
                    }
                }
            });
        }
        return false;
    }

    $(document).ready(function() {
        // 아이디와 비밀번호 입력 필드의 유효성 검사
        $("#id").on("input", function() {
            validateId();
        });

        $("#password").on("input", function() {
            validatePassword();
        });

        // 회원가입 양식 제출 시 유효성 검사
        $("#signupForm").on("submit", function(event) {
            event.preventDefault(); // 기본 제출 동작 중지
        });
    });
    </script>
   

</head>
<body>
    <div class="form-container">
        <h1>회원가입</h1>
        <form action="insertUserProcess.do" method="post" name="inputForm" id="signupForm" onsubmit="return checkSubmit()">

            <div>
                <label for="id">아이디</label>
                <input type="text" name="id" id="id" required>
            </div>
            <div>
                <label for="password">비밀번호</label>
                <input type="password" name="password" id="password" required>
            </div>
            <div>
                <label for="name">이름</label>
                <input type="text" name="name" id="name" required>
            </div>
            <div class="role-container">
                <label for="role-admin">관리자</label>
                <input type="radio" name="type" value="S" id="role-admin" checked>
                <label for="role-user">사용자</label>
                <input type="radio" name="type" value="U" id="role-user">
            </div>
            <div>
                <input type="submit" value="회원가입">
            </div>
            <div class="login-link">
                <a href="login.do" class="text-light">이미 회원이신가요? 로그인하기</a>
            </div>
        </form>
    </div>
</body>
</html>
