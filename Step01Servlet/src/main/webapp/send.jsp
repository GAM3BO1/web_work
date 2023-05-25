<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/send.jsp</title>
</head>
<body>
<%
	//요청 인코딩 설정(한글 깨짐 방지)
	request.setCharacterEncoding("utf-8");
	//요청 파라미터 추출
	String msg = request.getParameter("msg");
	//콘솔창에 출력 (이클립스 버그로 인해 jsp 페이지에서 콘솔창에 문자열 출력 불가)
	//System.out.println("msg: " + msg);
%>

	<p>메세지 수신 완료</p>
	<p>전달받은 메세지: <strong><%=msg %></strong></p>
</body>
</html>