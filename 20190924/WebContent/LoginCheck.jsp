<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>

<%
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html charset=UTF-8");
	response.setCharacterEncoding("utf-8");
	Date today = new Date();
	SimpleDateFormat date = new SimpleDateFormat("yyyy/MM/dd");
	SimpleDateFormat time = new SimpleDateFormat("hh:mm:ss");
	String id = request.getParameter("id");
%>

<html>
<head>
<title>application 내장객체의 로그</title>
</head>
<body>

	<h3>
		[<%=id%>]님 접속을 환영합니다.
	</h3>
	<h4>
		접속하신 날짜 및 시간은
		<%=date.format(today)%>
		<%=time.format(today)%>
		입니다.
	</h4>

	<%
		application.log(date.format(today) + " " + time.format(today) + " : [" + id + "] 로그인");
	%>
</body>
</html>
