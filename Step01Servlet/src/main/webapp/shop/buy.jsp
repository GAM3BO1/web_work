<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/shop/buy.jsp</title>
</head>
<body>
<%
	//get 방식 전송은 한글이 깨지지 않기 때문에 아래의 줄은 필요없다
//	request.setCharacterEncoding("utf-8");

	//몇 번 상품 몇개인지를 HttpServletRequest 객체를 이용해서 얻어낸 후 아래의 html 요소에 출력
	/*
		전달되는 파라미터가 숫자인 경우, 실제 숫자로 바꿔야하는 경우가 많다
		그런 경우 Integer 클래스 혹은 Double 클래스의
		parseInt(), parseDouble()라는 static 메소드를 활용하면 된다
	*/
	int num = Integer.parseInt(request.getParameter("num"));
	int amount = Integer.parseInt(request.getParameter("amount"));
%>
	<p>
		<strong><%=num %></strong>번 상품 <strong><%=amount %></strong>개를 주문했습니다
	</p>
</body>
</html>