<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   request.setCharacterEncoding("utf-8");
   String name = request.getParameter("name");
   session.setAttribute("name", name);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	div{text-align: center;}
</style>
<script type="text/javascript">
	function add_go(f) {
		f.action="ex09_3.jsp";
		f.submit();
	}
	function calc() {
		location.href="ex09_4.jsp";
	}
	function logout() {
		location.href="ex09_5.jsp";
	}
</script>
</head>
<body>
	<!-- DB 처리 -->
	<div>
		<h2>상품 선택</h2>
		<hr />
		<%=session.getAttribute("name") %>님 로그인 성공하셨습니다.
		<hr />
		<form>
			<select name="product">
				<option>::선택하세요::</option>
				<option value="망고">망고</option>
				<option value="키위">키위</option>
				<option value="참외">참외</option>
				<option value="수박">수박</option>
				<option value="딸기">딸기</option>
			</select>
			<input type="button"  value="추가" onclick="add_go(this.form)" />
		</form>
		<p><button onclick="calc()">계산</button><button onclick="logout()">로그아웃</button></p>
	</div>
</body>
</html>









