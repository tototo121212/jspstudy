<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
    String product = request.getParameter("product");
    
    // 세션에 있는 p_list을 꺼내서 list에 저장
    ArrayList<String> list
        =(ArrayList<String>)session.getAttribute("p_list");
    
    // 처음 넘어오면 무조건 null 이다.
    if(list == null){
    	list = new ArrayList<String>();
    	session.setAttribute("p_list", list);
    }
    // 추가
    list.add(product);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript">
		alert("<%=product%>가 추가 되었습니다.");
		// ex09_2.jsp 다시 이동
		// null 님
		/* location.href="ex09_2.jsp"; */
		// 바로 직전 페이지로 이동
		history.go(-1);
	</script>	
</head>
<body>
	<%-- 리다이렉트 --%>
	     <%-- 자바스크립트 실행X, null 님 --%>
	  <%--  <%response.sendRedirect("ex09_2.jsp"); %> --%>
	<%-- 포워드 --%>
	  <%-- 자바스크립트 실행X, null 님 --%>
	<%-- <% request.getRequestDispatcher("ex09_2.jsp").forward(request, response); %> --%>  
</body>
</html>




