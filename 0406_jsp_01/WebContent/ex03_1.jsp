<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>기본내장객체 : request</title>
</head>
<body>
<%--
	기본객체 : jsp가 가지고 있는 기본적인 지원기능
		request, response, out, page, pageContext,session,
		application, config, exception
		
	1. request
		HttpServletRequest는 웹 프로그래밍에서 가장 많이 사용되는
		클래스로 웹 브라우저의 요청과 관련이 있다.
		클라이언트가 요청한 정보를 담을 수 있는 데이터 타입이	
		 HttpServeltRequest이다.
		 HttpServeltRequest 타입의 객체에 저장되는 정보는 다음과 같다.
		 - 클라이언트 정보 및 서버 정보
		 - html폼과 요청 파라미터의 정보
		 - 요청 헤드의 정보
//////////////////////////////////////////////////////////////////
-클라이언트 정보 및 서버 정보(P73)
 1) getRemoteAddr()			
 X-Forwarded-For(XFF) HTTP 헤더 영역은 HTTP 프록시 서버나 로드 밸런서를 통과해 들어오는 클라이언트의 본래 IP주소를 알아내는데 사용되는 영역이다
request.getRemoteAddr() 은 로드 밸러서 기기를 걸치지 않고 클라이언트가 톰캣 을 통해 접근 한 IP를 추출 해 준다. 
 2) 요청 정보 길이 = request.getContentLength() 
 3) 요청정보 인코딩 = request.getCharacterEncoding() 
 4) 요청정보 컨텐트 타입= request.getContentType() 
 5) 요청정보 프로토콜 = request.getProtocol() 
 6) 요청정보 전송방식 = request.getMethod() 
 7) 요청 URI = request.getRequestURI() 
 8) 요청 URL = request.getRequestURL() 
 9) 컨텍스트 경로 = request.getContextPath()
 10) 서버 이름 = request.getServerName()
 11) 서버 포트 = request.getServerPort()
 //////////////////////////////////////////////////////////////////
-요청헤드의 정보 (P89)
 1) getHeader(String name): 해더값 구하기
 2) getHeaders(Enumeration) : 헤더 목록 구하기
 3) getNeaderNames() : Enumeration :모든 헤더 이름 구하기
 4) getIntHeader(String name) : int : 헤더 값을 정수 값으로 읽어옴
 5) getDateHeader(String name) :long : 헤더 값을 시간 값을 읽어옴
 ////////////////////////////////////////////////////////
** - html 폼과 요청 파라미터 정보
 1) getParameter(String name) : String
 2) getParameterValues(String name) : String[]
 3) getParameterMap() : Map
 4) getParameterName : Enumeration(열거형) 
/////////////////////////////////////////////////////////////////
** 다른 주요 메소드
1. 포워딩 :
	request.getRequestDispatcher("이동할곳").forward(request, response)
2. request.getSession() => 세션 호출할때 사용
3. request.setAttribute("이름", 값) => 속성 지정
4. request.getAttribute("이름")=>  속성 호출	 	 
 --%>
</body>
</html>