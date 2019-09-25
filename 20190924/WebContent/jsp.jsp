<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
</head>
<body>
<h2>작성하신 내용은 다음과 같습니다.</h2>
<%
	String name = request.getParameter("name");
	out.println("이름 : "+name);
	out.println("<br/><hr>");
	String gender = request.getParameter("gender");
	out.println("성별 : "+gender);
	out.println("<br/><hr>");
	String id = request.getParameter("id");
	out.println("아이디 : "+id);
	out.println("<br/><hr>");
	String addr = request.getParameter("addr");
	out.println("주소 : "+addr);
	out.println("<br/><hr>");
	String phone = request.getParameter("phone");
	out.println("전화번호 : "+phone);
	out.println("<br/><hr>");
	String email = request.getParameter("email");
	out.println("이메일주소 : "+email);
	out.println("<br/><hr>");
%>
<%-- ${Param.name} --%>
취미 : 
<%
	String[] inter= request.getParameterValues("interest");
	if ( inter != null){
%>
	<table border="1">
<% 
		for(String temp : inter){
			out.println("<tr>");
			out.println("<th width=\"100\">"+ temp+"</th>");
			out.println("</tr>");
		}
%>
	</table>
<%	
	}
	else{
		out.println("<br/>");
		out.println("[선택한 취미가 없습니다]");
	}
%>
</body>
</html>