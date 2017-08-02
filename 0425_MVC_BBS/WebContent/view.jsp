<%@page import="com.hb.mybatis.CVO"%>
<%@page import="java.util.List"%>
<%@page import="com.hb.mybatis.DAO"%>
<%@page import="com.hb.mybatis.BVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
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
	function modify_go(f) {
		f.action="/0425_MVC_BBS/MyController?type=modify";
		f.submit()
	}
	function delete_go(f) {
		f.action="/0425_MVC_BBS/MyController?type=delete";
		f.submit()
	}
	function list_go(f) {
		f.action="/0425_MVC_BBS/MyController?type=list";
		f.submit()
	}
</script>
</head>
<body>
	<div id="bbs" align="center" style="margin-bottom: 20px">
	<form method="post" >
		<table summary="게시판">
			<caption>게시판</caption>
			<tbody>
				<tr>
					<th>제목 : </th>
					<td>${bvo.subject}</td>
				</tr>

				<tr>
					<th>첨부파일 : </th>
					<td>
					   <c:choose>
					   	 <c:when test="${! empty bvo.file_name }">
					   		<a href="download.jsp?file_name=${bvo.file_name}" >${bvo.file_name}</a>
					   	 </c:when>
					     <c:otherwise>
					          <b> 첨부파일없음 </b>
					     </c:otherwise>
					   </c:choose>
					</td>
				</tr>
				
				<tr>
					<th>이름 : </th>
					<td>${bvo.writer}</td>
				</tr>
				<tr>
					<th>내용 : </th>
					<td><pre>${bvo.content}</pre></td>
				</tr>
				
				<tr>
					<td colspan="2">
						<input type="button" value="수정" onclick="modify_go(this.form)"/>
						<input type="button" value="삭제" onclick="delete_go(this.form)"/>
						<input type="button" value="목록" onclick="list_go(this.form)"/>
						<input type="hidden" value="${cPage}" name="cPage" />
					</td>
				</tr>
			</tbody>
		</table>
	</form>
	</div>
	<br /><br />
	<div style="border: 1px solid black; width: 70%; margin-left: 20px;">
	<form method="post" action="ans_write.jsp">
		<p style="margin-left: 10px;"> 이름 : <input type="text" name="writer"/></p>
		<p style="margin-left: 10px;"> 내용 : <br />
		  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		  <textarea rows="4" cols="55" name="content"></textarea></p>
		<p style="margin-left: 10px;"> 비밀번호 : <input type="password" name="pwd"/></p>
		<p style="margin-left: 10px;">
		<input type="hidden" name="b_idx" value="${bvo.b_idx}">
		<input type="submit" value="저장하기"/>
		</p> 
	</form>
	</div>
	<hr/>
	<div>
	<hr/>
		<c:forEach var="k" items="${c_list}">	
	      <form action="/0425_MVC_BBS/MyController?type=ans_del" method="post">
		    <div>
				<p> 이름 : ${k.getWriter()}</p> 
				<p> 날짜 : ${k.getWrite_date().substring(0,10)}</p> 
				<p> 내용 : ${k.getContent()}</p>
				<input type="hidden" name="c_idx" value="${k.getC_idx()}" />
				<input type="hidden" name="b_idx" value="${k.getB_idx()}" />
				<input type="submit" value="댓글 삭제" /> 
	 	    </div>
	 	    <hr />
	 	    </form>
	</c:forEach>
	</div>
</body>
</html>
