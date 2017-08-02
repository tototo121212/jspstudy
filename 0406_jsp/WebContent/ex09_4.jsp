<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2> 계산 </h2>
	<h3> 선택한 품목 </h3>
	<hr />
	<%  
	    ArrayList<String> list 
	        = (ArrayList)session.getAttribute("p_list");
	    if(list == null){
	    	out.println("<h3>선택한 상품이 존재하지 않습니다.</h3>");
	    }else{
	    	out.println("<ul>");
	    	for(String k:list){
	    		out.println("<li>"+k+"</li>");
	    	}
	    	out.println("</ul>");
	    }
	%>
</body>
</html>









