<%@page import="test.guest.dao.GuestDao"%>
<%@page import="test.guest.dto.GuestDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" />
<title>/guest/updateform.jsp</title>
</head>
<body>
<%
	int num = Integer.parseInt(request.getParameter("num"));
%>
	<div class="container">
		<h1 style="text-align: center">방명록 삭제</h1>
		<form action="delete.jsp" method="post">
			<div class="mb-2" style="display:none">
				<label for="num" class="form-label">번호</label>
				<input type="text" class="form-control" id="num" name="num" value="<%=num%>" readonly/>
			</div>
			<div class="mb-2">
				<label for="pwd" class="form-label">비밀번호</label>
				<input type="password" class="form-control" id="pwd" name="pwd" autocomplete="off"/>
			</div>
			<button type="submit" class="btn btn-outline-primary">확인</button>
		</form>
	</div>	
</body>
</html>