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
<title>Insert title here</title>
</head>
<body>
<%
	//1. post 방식으로 전송되는 회원의 이름, 주소를 추출
	request.setCharacterEncoding("utf-8");
	int num = Integer.parseInt(request.getParameter("num"));
	String name = request.getParameter("name");
	String addr = request.getParameter("addr");
	
	//2. 추가할 회원 정보를 MemberDto 객체에 담기
	MemberDto dto = new MemberDto(num, name, addr);
		
	//3. DB에 저장
	MemberDao dao = MemberDao.getInstance();
	boolean isSuccess = dao.update(dto);
%>
	<div class="container mt-5">
		<h1>알림</h1>
		<%if(isSuccess){ %>
			<p class="alert alert-success">
				<strong><%=num %></strong>번 회원의 정보가 수정되었습니다
				<a class="alert-link" href="list.jsp">확인</a>
			</p>
		<%}else{ %>
			<p class="alert alert-danger">
				회원정보 수정 실패
				<a class="alert-link" href="updateform.jsp?num=<%=num%>">다시 수정</a>
			</p>
		<%} %>
	</div>
</body>
</html>