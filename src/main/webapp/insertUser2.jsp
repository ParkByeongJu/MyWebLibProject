<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
  $(document).ready(function() {
    // ���̵� �ߺ� üũ ��ư Ŭ�� �̺�Ʈ ó��
    $('#checkDuplicate').click(function(e) {
      e.preventDefault();
      var username = $('#username').val(); // �Էµ� ���̵� ��������
      
      // AJAX ��û ����
      $.ajax({
        url: 'checkDuplicate.do', // �ߺ� üũ�� �����ϴ� ���� ���� URL�� �����ؾ� �մϴ�.
        type: 'POST',
        data: { username: username },
        success: function(response) {
          if (response === 'duplicate') {
            alert('�ߺ��� ���̵��Դϴ�.');
          } else {
            alert('��� ������ ���̵��Դϴ�.');
          }
        },
        error: function() {
          alert('�������� ��ſ� ������ �߻��߽��ϴ�.');
        }
      });
    });
  });
</script>
<title>���ֵ�����: ȸ������</title>
</head>
<style>
	body {
			background: black;
			margin: 0;
			font-family: Roboto, 'Segoe UI', Arial, 'Malgun Gothic', Gulim,
				sans-serif;
		}
		
		
	.container {
        background: #333;
        padding: 30px;
        border-radius: 10px;
        max-width: 600px;
		position: absolute;
		top: 40%;
		left: 50%;
		transform: translate(-50%, -50%);
    }

    .form-label, .text-light {
        color: #fff;
    }
    
    .btn-primary-custom {
        background-color: #007bff;
        border-color: #007bff;
        color: #fff;
    }
    
    .user-type-container label {
	    margin-right: 30px;
	}
		
</style>
<body>
	<div class="container mt-5">
    <h1 class="text-center text-light">ȸ������</h1>

    <div class="row justify-content-center">
	        <div class="col-md-6">
	            <form action="registerProcess.do" method="post" class="mt-5">
	                <div class="mb-3">
	                    <label for="username" class="form-label text-light">���̵�</label>
	                    <input type="text" name="username" id="username" class="form-control" required>
	                </div>
	
	                <div class="mb-3">
	                    <label for="password" class="form-label text-light">��й�ȣ</label>
	                    <input type="password" name="password" id="password" class="form-control" required>
	                </div>
	
	                <div class="mb-3">
	                    <label for="email" class="form-label text-light">�̸���</label>
	                    <input type="email" name="email" id="email" class="form-control" required>
	                </div>
	
	                <div class="mb-3">
	                    <label for="phone" class="form-label text-light">�޴��� ��ȣ</label>
	                    <input type="tel" name="phone" id="phone" class="form-control" required>
	                </div>
	
	                <div class="mb-3">
					    <label for="userType" class="form-label text-light">����� ����</label>
					    <div class="user-type-container">
					        <label>
					            <input type="radio" id="admin" name="role" value="admin" checked="checked">
					            <span class="text-white">������</span>
					        </label>
					        <label>
					            <input type="radio" id="user" name="role" value="user">
					            <span class="text-white">�����</span>
					        </label>
					    </div>
					</div>
	
	                <div class="text-center">
	                    <button type="submit" class="btn btn-dark">�����ϱ�</button>
	                </div>
	            </form>
	
	            <div class="text-center mt-3">
	                <a href="login.do" class="text-light">�̹� ȸ���̽Ű���? �α����ϱ�</a>
	            </div>
	        </div>
	    </div>
	</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>