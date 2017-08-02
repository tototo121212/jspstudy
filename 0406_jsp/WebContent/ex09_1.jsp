<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
	div{text-align: center;}
</style>
<script type="text/javascript">
	function log_in(f) {
		f.action = "ex09_2.jsp";
		f.submit();
	}
</script>
</head>
<body>
	<div>
		<h2>로그인</h2>
		<form>
			<input type="text" name="name" />
			 <input type="button" value="login"	onclick="log_in(this.form)" />
		</form>
	</div>
</body>
</html>