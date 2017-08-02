<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page errorPage="ex10_3.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오류처리 방법2 : erroPage 생성</title>
</head>
<body>
	name 파라미터 값 : <%= request.getParameter("name").toUpperCase() %>
</body>
</html>