package test.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import test.dto.MemberDto;

@WebServlet("/member/list")
public class MemberListServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
		
		PrintWriter pw = resp.getWriter();
		pw.println("<!doctype html>");
		pw.println("<html>");
		pw.println("<head>");
		pw.println("<meta charset='utf-8'>");
		pw.println("<title>/member/list</title>");
		pw.println("</head>");
		pw.println("<body>");
		
		pw.println("<h1>회원목록 입니다</h1>");
		
		//회원 목록을 담을 ArrayList 객체 
		List<MemberDto> list=new ArrayList<>();
		list.add(new MemberDto(1, "홍길동", "수원시"));
		list.add(new MemberDto(2, "한량", "보령시"));
		list.add(new MemberDto(3, "백수", "독산동"));
		
		pw.println("<table border=\"1\" class=\"my-table\">");
		pw.println("<thead>");
		pw.println("<tr>");
		pw.println("<th>번호</th>");
		pw.println("<th>이름</th>");
		pw.println("<th>주소</th>");
		pw.println("</tr>");
		pw.println("</thead>");
		
		pw.println("<tbody>");
		for(MemberDto m: list) {
			pw.println("<tr>");
			pw.println("<td>"+ m.getNum() +"</td>");
			pw.println("<td>"+ m.getName() +"</td>");
			pw.println("<td>"+ m.getAddr() +"</td>");
			pw.println("</tr>");
		}
		pw.println("</tbody>");
		pw.println("</table>");
		
		pw.println("</body>");
		pw.println("</html>");
		pw.close();
	}
}
