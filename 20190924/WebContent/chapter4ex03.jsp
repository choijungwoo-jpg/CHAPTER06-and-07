<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function doSubmit(){
		var name = document.getElementById('name').value;
		if( name == ''  ){
			alert("이름 입력하세요.");
		}else{
			document.getElementById('myform').submit();
		}
	}
</script>
<style type="text/css">
.mytable{
	border: 1px solid black;
	border-radius: 10px;
	padding: 20px;
}
hr{
	height: 10px;
	background-color: blue;
}
input[type=submit]{
	padding: 30px;
	font-size: 30px;
}
</style>
</head>
<body>
<form action="Chap4ex03submit" id="myform">
<div>
	<table class="mytable">
		<tr><td>이름</td><td><input type="text" id="name" name="name"/></td></tr>
		<tr><td>성별</td><td><input type="text" name="gender"/></td></tr>
		<tr><td>아이디</td><td><input type="text" name="id"/></td></tr>
		<tr><td>비밀번호</td><td><input type="text" name="pw"/></td></tr>
		<tr><td>비밀번호확인</td><td><input type="text" name="pwcon"/></td></tr>
		<tr><td>주소</td><td><input type="text" name="addr"/></td></tr>
		<tr><td>전화번호</td><td><input type="text" name="phone"/></td></tr>
		<tr><td>이메일주소</td><td><input type="text" name="email"/></td></tr>
		<tr>
			<td>취미</td>
			<td>
				<input type="checkbox" name="interest" value="축구"/>축구
				<input type="checkbox" name="interest" value="야구"/>야구
				<input type="checkbox" name="interest" value="농구"/>농구<br/>
				<input type="checkbox" name="interest" value="수영"/>수영
				<input type="checkbox" name="interest" value="등산"/>등산
				<input type="checkbox" name="interest" value="게임"/>게임<br/>
				<input type="checkbox" name="interest" value="연극"/>연극
				<input type="checkbox" name="interest" value="뮤지컬"/>뮤지컬
			</td>
		</tr>
	</table>
	<hr>
	<input type="button" onclick="doSubmit();" value="회원가입"/>
</div>
</form>
</body>
</html>