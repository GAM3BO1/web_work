<%@page import="test.member.dao.MemberDao"%>
<%@page import="test.member.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" />
<title>/member/insert.jsp</title>
</head>
<body>
<%
	//1. post 방식으로 전송되는 회원의 이름, 주소를 추출
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String addr = request.getParameter("addr");
	
	//2. 추가할 회원 정보를 MemberDto 객체에 담기
	MemberDto dto = new MemberDto();
	dto.setName(name);
	dto.setAddr(addr);
	
	//3. DB에 저장
	MemberDao dao = MemberDao.getInstance();
	boolean isSuccess = dao.insert(dto);
	
	//4. 응답
%>
	<div class="container mt-5">
		<h1>알림</h1>
		<%if(isSuccess){ %>
			<p class="alert alert-success">
				<strong><%=name %></strong>님의 정보가 저장되었습니다
				<a class="alert-link" href="list.jsp">확인</a>
			</p>
		<%}else{ %>
			<p class="alert alert-danger">
				회원정보 저장 실패
				<a class="alert-link" href="insertform.jsp">다시 작성</a>
			</p>
		<%} %>
	</div>
</body>
</html>