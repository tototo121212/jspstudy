<%@page import="com.hb.mybatis.DBService"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	SqlSession ss = DBService.getFactory().openSession(false);
	int result = ss.delete("delete", request.getParameter("idx"));
	ss.commit();
	ss.close();
	if(result>0){
		response.sendRedirect("list.jsp");
	}else{%>
		<script>
    		alert("삭제 실패");
    		history.go(-2);
    	</script>		
   <%}%>