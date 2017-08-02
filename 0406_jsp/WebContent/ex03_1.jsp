<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기본내장객체 : request </title>
</head>
<body>
<%-- 
   기본객체 : jsp가 가지고 있는 기본적인 지원기능
        request, response,out,page,pageContext,session
	    application, config, exception 
	    
   1. request :         
	    HttpServletRequest는 웹 프로그래밍에서 가장 많이 사용되는
	    클래스로 웹 브라우즈의 요청과 관련이 있다. 
	    클라이언트가 요청한 정보를 담을 수 있는 데이터 타입이 
	    HttpServletRequest이다. 
	    HttpServletRequest 타입의 객체에 저장되는 정보는 다음과 같다.
         - 클라이언트 정보 및 서버 정보
         - html폼과 요청 파라미터의 정보
         - 요청 헤드의 정보
/////////////////////////////////////////////////////////////////	               
- 클라이언트 정보 및 서버 정보(p73)
 1) getRemoteAddr() 	   2) getContentLength() 
 3) getCharacterEncoding() 4) getContentType()
 5) getProtocol()		   6) getMethod()
 7) getRequestURI()        8) getContextPath()
 9) getServerName()       10) getServerPort()
//////////////////////////////////////////////////////////////// 
- 요청헤드의 정보 (p89)
 1) getHeader(String name) : 헤더값 구하기
 2) getHeaders(Enumeration) :  헤더 목록 구하기
 3) getNeaderNames() : Enumeration :모든 해더 이름 구하기
 4) getIntHeader(String name) : int : 헤더 값을 정수 값으로 읽어옴
 5) getDateHeader(String name) :long :  헤더 값을 시간 값을 읽어옴
	                        
/////////////////////////////////////////////
 ** - html폼과 요청 파라미터의 정보
 1) getParameter(String name) : String
 2) getParameterValues(String name) : String[]
 3) getParameterMap() : Map
 4) getParameterNames :  Enumeration(열거형) 
/////////////////////////////////////////////
** 다른 주요 메소드 
1. 포워딩 :  
   request.getRequestDispatcher("이동할곳").forward(request, response)
2. request.getSession() => 세션 호출할때 사용  
3. request.setAttribute("이름", 값) => 속성지정 
4. request.getAttribute("이름") => 속성 호출
 --%>
</body>
</html>







