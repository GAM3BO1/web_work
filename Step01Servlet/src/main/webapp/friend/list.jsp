<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/friend/list.jsp</title>
</head>
<body>
<%
	List<String> names = new ArrayList<>();
	names.add("홍길동");
	names.add("백호");
	names.add("호영");
	
		
%>
	<h1>친구목록 입니다</h1>
	<ul>
		<%for(String n: names) {%>
			<li><%=n %></li>
		<%}%>
	</ul>
	
	<ul>
		<%
			for(String n: names) {
				out.println("<li>"+ n + "</li>");
			}
		%>
	</ul>
</body>
</html>