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
<title>/member/updateform.jsp</title>
</head>
<body>
<%
	//1. 수정할 회원의 번호 알아내기
	int num = Integer.parseInt(request.getParameter("num"));
	//2. 번호를 이용해서 DB에 저장된 수정할 회원의 정보 얻어내기
	MemberDto dto = MemberDao.getInstance().getData(num);
	//3. 수정할 양식을 클라이언트에게 응답
%>
	<div class="container">
		<h1 style="text-align: center">회원정보 수정</h1>
		<form action="update.jsp" method="post">
			<div class="mb-2">
				<label for="num" class="form-label">번호</label>
				<input type="text" class="form-control" id="num" name="num" value="<%=dto.getNum()%>" readonly/>
			</div>
			<div class="mb-2">
				<label for="name" class="form-label">이름</label>
				<input type="text" class="form-control" id="name" name="name" value="<%=dto.getName()%>" autocomplete="off"/>
			</div>
			<div class="mb-2">
				<label for="addr" class="form-label">주소</label>
				<input type="text" class="form-control" id="addr" name="addr" value="<%=dto.getAddr()%>" autocomplete="off"/>
			</div>
			<button type="submit" class="btn btn-outline-primary">수정</button>
			<button type="reset" class="btn btn-outline-danger">취소</button>
		</form>
	</div>
</body>
</html>