<%@page import="java.nio.channels.SeekableByteChannel"%>
<%@page import="com.hb.mybatis.BVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#bbs table {
	    width:580px;
	    margin-left:10px;
	    border:1px solid black;
	    border-collapse:collapse;
	    font-size:14px;
	    
	}
	
	#bbs table caption {
	    font-size:20px;
	    font-weight:bold;
	    margin-bottom:10px;
	}
	
	#bbs table th {
	    text-align:center;
	    border:1px solid black;
	    padding:4px 10px;
	}
	
	#bbs table td {
	    text-align:left;
	    border:1px solid black;
	    padding:4px 10px;
	}
	
	.no {width:15%}
	.subject {width:30%}
	.writer {width:20%}
	.reg {width:20%}
	.hit {width:15%}
	.title{background:lightsteelblue}
	
	.odd {background:silver}
</style>
<script type="text/javascript">
	function modify_go(f){
		for(var i=0 ; i< f.elements.length ; i++){
			if(f.elements[i].value == ""){
				if(i==3) continue;
				alert(f.elements[i].name+"를 입력하세요");
				f.elements[i].focus();
				return;//수행 중단
			}
		}
		// 비번 검사
		var pwd1 = f.pwd.value;
		var pwd2 = '${bvo.pwd}';
		if(pwd1 != pwd2){
			alert("비번 틀림");
			f.pwd.value="";
			f.pwd.focus();
			return;
		}else{
			f.submit();
		}
	}
	
	function list_go(f) {
		f.action="list.jsp";
		f.submit();
	}
</script>
</head>
<body>
	<div id="bbs" align="center">
	<form action="modify_ok.jsp" method="post" 
		encType="multipart/form-data" name="myform">
		<table summary="게시판 수정">
			<caption>게시판 수정</caption>
			<tbody>
				<tr>
					<th>제목:</th>
					<td><input type="text" name="subject" size="45" value="${bvo.subject}"  /></td>
				</tr>
				<tr>
					<th>이름:</th>
					<td><input type="text" name="writer" size="12" value="${bvo.writer}"/></td>
				</tr>
				<tr>
					<th>내용:</th>
					<td><textarea name="content" cols="50" 
							rows="8">${bvo.content}</textarea></td>
				</tr>
				<tr>
					<th>첨부파일:</th>
					<td><input type="file" name="file_name"/>(${bvo.file_name})</td>
				</tr>
				<tr>
					<th>비밀번호:</th>
					<td><input type="password" name="pwd" size="12"/></td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="button" value="수정" onclick="modify_go(this.form)"/>
						<input type="reset" value="다시"/>
						<input type="button" value="목록" onclick="list_go(this.form)"/>
						<input type="hidden" name="b_idx" value="${bvo.b_idx}" />
						<input type="hidden" name="cPage" value="${cPage}" />
					</td>
				</tr>
			</tbody>
		</table>
	</form>
	</div>
</body>
</html>

