<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>병주도서관</title>
  <style>
   html, body {
      background-color: black;
      background: black;
		margin: 0;
		font-family: Roboto, 'Segoe UI', Arial, 'Malgun Gothic', Gulim,
			sans-serif;
    }
  </style>
</head>
<body>
  <%-- 탑메뉴랑 바텀메뉴에 내용 넣기 --%>
  <div>
    <jsp:include page="/jsp/include/topMenu.jsp"/>
  </div>

  <div>
    <p id="main">
      <jsp:include page="/jsp/include/mainbody.jsp" />
    </p>
  </div>
</body>
</html>
