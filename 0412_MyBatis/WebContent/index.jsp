<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MyBatis</title>
<style type="text/css">
	table { width: 50%;  margin: auto; text-align: center; }
	table,th,td {border: 1px solid black; height: 30px}
</style>
<script type="text/javascript">
	function select_all(f) {
		f.action="list.jsp";
		f.submit();
	}
	function select_go(f) {
		f.action="onelist.jsp";
		f.submit();
	}
	function insert_go(f) {
		f.action="insert.jsp";
		f.submit();
	}
	function delete_go(f) {
		f.action="delete.jsp";
		f.submit();
	}
	function update_go(f) {
		f.action="update.jsp";
		f.submit();
	}
</script>
</head>
<body>
	<div class="mydiv">
		<form>
			<table>
				<thead>
					<tr><th colspan="2">회원 정보</th></tr>
				</thead>
				<tbody>
				   <tr>
				   		<td> 아이디 </td>
				   		<td> <input type="text" name="id" /> </td>
				   </tr>
				   <tr>
				   		<td> 패스워드 </td>
				   		<td> <input type="password" name="pwd" /> </td>
				   </tr>
				   <tr>
				   		<td> 이름 </td>
				   		<td> <input type="text" name="name" /> </td>
				   </tr>
				   <tr>
				   		<td> 나이 </td>
				   		<td> <input type="text" name="age" /> </td>
				   </tr>
				   <tr>
				   		<td> 주소 </td>
				   		<td> <input type="text" name="addr" /> </td>
				   </tr>
				</tbody>
				<tfoot>
					<tr align="center">
						<td colspan="2">
								<input type="button" value="전체검색" onclick="select_all(this.form)" />&nbsp; &nbsp;
								<input type="button" value="검색" onclick="select_go(this.form)" />&nbsp; &nbsp;
								<input type="button" value="삽입" onclick="insert_go(this.form)" />&nbsp; &nbsp;
								<input type="button" value="삭제" onclick="delete_go(this.form)" />&nbsp; &nbsp;
								<input type="button" value="불러오기" onclick="update_go(this.form)" />&nbsp; &nbsp;
								<input type="reset" value="취소" " />&nbsp; &nbsp;
								
					</tr>	
				</tfoot>
			</table>
		</form>
	</div>	
</body>
</html>