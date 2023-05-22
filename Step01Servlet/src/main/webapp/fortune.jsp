<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/fortune.jsp</title>
</head>
<body>
<% 
	//오늘의 운세 5개를 미리 준비
	String[] fortunes= {"동쪽으로 가면 귀인을 만나요",
			"오늘은 집에만 계세요",
			"너무 멀리 가지 마세요",
			"오늘은 뭘해도 되는 날이에요",
			"로또가 당첨돼요"};

	Random ran = new Random();
	int n = ran.nextInt(5);
%>
	<p> <%out.print(fortunes[n]);%> </p>
	<p> <%=fortunes[0] %> </p>
</body>
</html>