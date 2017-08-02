<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>세션 초기화</title>
</head>
<body>
	<%--  세션 초기화 : session.invalidate();  --%>
	<% session.invalidate();
	response.sendRedirect("ex07_1.jsp");
	%>
</body>
</html>