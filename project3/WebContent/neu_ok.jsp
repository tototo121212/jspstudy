<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>회원가입 성공</title>
</head>
<body>
	<c:choose>
		<c:when test="${empty result2}">
			<script>
				alert("회원가입에 실패하셨습니다.")
			</script>
		</c:when>	
		<c:otherwise>
			<script>
				alert("회원가입 축하드립니다.");
				window.close();
			</script>
		</c:otherwise>
	</c:choose>
</body>
</html>