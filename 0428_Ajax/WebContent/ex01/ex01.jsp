<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- XMLHttpRequest 객체 
	    : 자바스크립트에서 ajax를 실행할때 필요한 객체 --%>
	 <script type="text/javascript">
	 	// 1. 객체 생성 (XMLHttpRequest 객체 생성)
	 	var request = new XMLHttpRequest();
	 	// 2. open("전송방식","경로","비동기여부");
	 	request.open("GET","data.html",false);
	 	// 3. send() : 실행
	 	  request.send();
	 	// 4. 화면에 출력 : innerHTML
	 	//  document.body.append(request.responseText);
	 	  document.body.innerHTML += request.responseText ;
	 </script>   
</body>
</html>






