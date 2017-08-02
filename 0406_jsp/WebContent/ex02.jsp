<%@ page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>스크립트 요소 : 선언부, 스크립트릿, 표현식</title>
</head>
<body>
	<%--
		스크립트 요소 : 
		1. 선언부 : <%! %> : 전역변수, 메소드를 만들때 사용
		2. 스크립트릿 : <% %> : 순수 자바코드를 작성할때 사용
		3. 표현식 : <%= %> 	:  결과를 출력할때 사용 
		                       (변수값 출력, 메소드 값 출력) 
		* 위 3개는 속해서 사용할 수 없다.
	 --%>
	<h2>
		0 - 10 까지 출력 <br />
		<% for (int i = 0; i < 11; i++) {%>
		      i	<%-- 변수 취급 안함 --%>
		<%}%>
		<hr />
		<%for (int i = 0; i < 11; i++) {%>
		<%=i%>
		<%}	%>
		<hr />
		<%for (int i = 0; i < 11; i++) {
			out.println(i); //  화면 출력 내장 객체 (out)
			}%>
		<hr />
		0-10 까지 짝수의 합을 구하자 <br />
		<%-- 전역변수 사용한 경우 --%>
		<%!int sum;%>
		<%
			for (int i = 0; i < 11; i++) {
				if (i % 2 == 0) {
					sum = sum + i;
				}
			}
			out.println("결과 : " + sum + "<br />");
		%>
		결과 :
		<%=sum%><br />
		<hr />
		<%
			int sum2=0;
			for (int i = 0; i < 11; i++) {
				if (i % 2 == 0) {
					sum2 = sum2 + i;
				}
			}
			out.println("결과 : " + sum2 + "<br />");
		%>
		<hr />
		<%-- 메소드를 사용한 경우 --%>
		<%! 
		    public int add(int a, int b){
		       return a+b;
		    }
		    int res ;
		    public void sub(int a, int b){
			   res = a - b ;
		    }
		%>
	      7 + 5 = <%= add(7,5) %> <br />
	      
	      <% sub(7,5); %>  
	      7 - 5 =   <%= res %> <br />
	     <hr />
	     오늘날짜 구하기 <br />
	     <%
	    	Calendar cal = Calendar.getInstance();
	        int year = cal.get(Calendar.YEAR);
	        int month = cal.get(Calendar.MONTH)+1;
	        int day = cal.get(Calendar.DAY_OF_MONTH);
	     
	       out.println(year+". "+month+". "+ day+"." +"<br />"); 
	     %> 
	</h2>
</body>
</html>












