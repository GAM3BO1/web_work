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

@WebServlet("/friend/list")
public class FriendServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
		
		PrintWriter pw = resp.getWriter();
		pw.println("<!doctype html>");
		pw.println("<html>");
		pw.println("<head>");
		pw.println("<meta charset='utf-8'>");
		pw.println("<title>friend/list</title>");
		pw.println("</head>");
		pw.println("<body>");
		pw.println("<h1>친구목록 입니다</h1>");
		
		//클라이언트에게 문자열을 응답할 수 있는 객체의 참조값 얻어내기
		List<String> names = new ArrayList<>();
		names.add("홍길동");
		names.add("백호");
		names.add("호영");
		
		pw.println("<ul>");
		for(String n: names) {
			pw.println("<li>"+ n +"</li>");
		}
		pw.println("</ul>");
		
		pw.println("</body>");
		pw.println("</html>");
		pw.close();
	}
}
