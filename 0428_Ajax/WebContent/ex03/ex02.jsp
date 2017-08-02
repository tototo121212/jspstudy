<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQuery.load</title>
<script type="text/javascript" src="../js/jquery-3.2.1.js"></script>
<script type="text/javascript">
	$(function() {
		$("#a").load("data2.jsp");
		$("#b").load("data2.jsp",{"result":$(this).val()});
		
		$.get("data2.jsp",function(data){
			$("#c").html(data);
		});
		$.get("data2.jsp",function(data){
			$("#d").append(data);
		});
		$.post("data2.jsp",function(data){
			$("#e").html(data);
		});
		$.post("data2.jsp",function(data){
			$("#f").append(data);
		});
	});
</script>
</head>
<body>
	<div id="a">sdf</div>
	<hr />
	<div id="b">sdf</div>
	<hr />
	<div id="c">asdfas</div>
	<hr />
	<div id="d">asdf</div>
	<hr />
	<div id="e">sdf</div>
	<hr />
	<div id="f">sdf</div>
	<hr />
</body>
</html>