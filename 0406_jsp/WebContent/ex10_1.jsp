<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오류처리 방법1 : try~catch</title>
</head>
<body>
	<%try{ %>
	name 파라미터 값 ; <%= request.getParameter("name").toUpperCase() %>
	
	<%}catch(Exception e){
      out.println("name 파라미터값이 존재하지 않습니다.");	 		
	}%>

</body>
</html>