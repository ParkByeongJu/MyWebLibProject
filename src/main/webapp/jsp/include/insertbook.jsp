<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Insert title here</title>
  <link rel="stylesheet" href="/webLib/css/layout.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <style>
    body {
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }
    
    .form-container {
		max-width: 500px;
		max-height : 800px;
		margin: 0 auto;
		padding: 70px;
		background-color: #343a40;
		border-radius: 8px;
		position: absolute;
		top: 50%;
		left: 50%;
		transform: translate(-50%, -50%);
	}

	.form-container label {
		font-weight: 500;
		color: white;
	}
	
	.form-container input[type="submit"] {
		width: 100%;
		padding: 10px;
		border: none;
		border-radius: 4px;
		background-color: #2c3e50;
		color: white;
		font-weight: 500;
		cursor: pointer;
	}
	
	.link {
		margin-top: 40px;
		text-align: center;
	}

	.link a {
		color: white;
		text-decoration: none;
	}

	.link a:hover {
		text-decoration: underline;
	}
	
	.section-divider {
		border-top: 1px solid white;
		margin-top: 20px;
		margin-bottom: 10px;
	}
	
	.form-title {
		color: white;
		text-align: center;
	}
  </style>
</head>
<body>
  <header>
    <jsp:include page="/jsp/include/topMenu.jsp"/>
  </header>
  <section>
        <div class="form-container">
          <h1 class="form-title">신규도서등록<br></h1>
          <div class="section-divider"></div>
          <form action="insertbookprocess.do" method="POST">
            <div class="mb-3">
              <label for="title">제목</label>
              <input type="text" id="title" name="title" class="form-control">
            </div>
            <div class="mb-3">
              <label for="writer">작가</label>
              <input type="text" id="writer" name="writer" class="form-control">
            </div>
            <div class="mb-3">
              <label for="publisher">출판사</label>
              <input type="text" id="publisher" name="publisher" class="form-control">
            </div>
            <div class="link">
              <button type="submit" class="btn btn-primary">등록</button>
            </div>
          </form>
        </div>
  </section>

  <footer>
  </footer>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
