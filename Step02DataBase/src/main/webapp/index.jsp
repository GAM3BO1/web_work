<%@page import="test.util.DbcpBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index.jsp</title>
</head>
<body>
<%
	//DB 연동 가능한지 테스트
	new DbcpBean();	//객체 생성했을 때 예외가 발생하지 않고 콘솔에 성공 문구가 출력되면 성공
%>
	<div class="container">
		<h1>인덱스 페이지</h1>
		<ul>
			<li><a href="member/list.jsp">회원 목록 보기</a></li>
			<li><a href="guest/list.jsp">방명록 목록 보기</a></li>
		</ul>
	</div>
</body>
</html>