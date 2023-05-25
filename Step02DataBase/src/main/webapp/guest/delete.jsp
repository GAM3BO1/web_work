<%@page import="test.guest.dto.GuestDto"%>
<%@page import="test.guest.dao.GuestDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" />
<title>/guest/delete.jsp</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	int num = Integer.parseInt(request.getParameter("num"));
	String pwd = request.getParameter("pwd");
	
	GuestDto dto = new GuestDto();		
	GuestDao dao = GuestDao.getInstance();

	boolean isSuccess = dao.delete(num, pwd);
%>
	<div class="container mt-5">
		<h1>알림</h1>
		<%if(isSuccess){ %>
			<p class="alert alert-success">
				<symbol id="check-circle-fill" viewBox="0 0 16 16">
				    <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-3.97-3.03a.75.75 0 0 0-1.08.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-.01-1.05z"/>
				</symbol>
				<strong><%=num %></strong>번 방명록이 삭제되었습니다
				<a class="alert-link" href="list.jsp">확인</a>
			</p>
		<%}else{ %>
			<p class="alert alert-danger">
				<svg xmlns="http://www.w3.org/2000/svg" class="bi bi-exclamation-triangle-fill flex-shrink-0 me-2" viewBox="0 0 16 16" role="img" aria-label="Warning:">
			    	<path d="M8.982 1.566a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566zM8 5c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 5.995A.905.905 0 0 1 8 5zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
			  	</svg>
				방명록 삭제 실패
				<a class="alert-link" href="deleteform.jsp?num=<%=num%>">다시 입력</a>
			</p>
		<%} %>
	</div>
		
</body>
</html>