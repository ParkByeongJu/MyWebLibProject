<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>통합 검색</title>
</head>
	 <header>
	 <h1>Search</h1>
	 <hr/>
	 </header>
<body>
    <form action="search.do" method="post">
        <label for="author">Author:</label>
        <input type="text" name="author" id="author">
        <br>
        <label for="title">Title:</label>
        <input type="text" name="title" id="title">
        <br>
        <label for="content">Content:</label>
        <input type="text" name="content" id="content">
        <br>
        <input type="submit" value="Search">
    </form>
</body>
</html>