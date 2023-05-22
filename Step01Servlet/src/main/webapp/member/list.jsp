<%@page import="java.util.ArrayList"%>
<%@page import="test.dto.MemberDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/member/list.jsp</title>
</head>
<body>
<%
	//회원 목록을 담을 ArrayList 객체 
	List<MemberDto> list=new ArrayList<>();
	list.add(new MemberDto(1, "홍길동", "수원시"));
	list.add(new MemberDto(2, "백호", "화성시"));
	list.add(new MemberDto(3, "호영", "시흥시"));
%>
	<h1>회원목록 입니다</h1>
	<table border="1" class="my-table">
		<thead>
            <tr>
                <th>번호</th>
                <th>이름</th>
                <th>주소</th>
            </tr>
        </thead>
        <tbody>
        	<%for(MemberDto m: list){ %>
	            <tr>
	                <td><%=m.getNum() %></td>
	                <td><%=m.getName() %></td>
	                <td><%=m.getAddr() %></td>
	            </tr>
            <%} %>
        </tbody>
	</table>
</body>
</html>