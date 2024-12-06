package com.servlet.test;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HelloServlet
 */
@WebServlet("/HelloServlet")
public class HelloServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HelloServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 * 아파치 톰캣이 클라이언트의 요청 정보를 담고 있는 request 객체를 첫 번째 인자로 전달
	 * response 객체 이용해서 응답 결과 만들기 
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html;charset=UTF-8");   // 웹클라이언트로 보낼 응답 메시지에 담을 응답 문서 종류(MIME 타입) 정하기 
		request.setCharacterEncoding("UTF-8");                // 응답 문서를 만드는데 사용할 문자 인코딩("UTF-8") 정하기 
		java.io.PrintWriter out = response.getWriter();       // 출력 스트림 객체 out 생성 (.jsp 파일에서는 별도 선언 없이 내장 객체 out 바로 사용 가능)
		// 웹클라이언트 화면에 데이터 출력 
		out.println("<html><body>");
		out.println("<h1>doGet() 메서드</h1>");
		String name = request.getParameter("name");   // 웹클라이언트가 보낸 request 객체에 속한 요청 파라미터("name")에 사용자가 입력한 문자열 읽어오기 
		out.println(name);
		out.println("</body></html>");
		out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 * 아파치 톰캣이 클라이언트의 요청 정보를 담고 있는 request 객체를 첫 번째 인자로 전달
	 * response 객체 이용해서 응답 결과 만들기 
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		response.setContentType("text/html;charset=UTF-8");   // 웹클라이언트로 보낼 응답 메시지에 담을 응답 문서 종류(MIME 타입) 정하기 
		request.setCharacterEncoding("UTF-8");                // 응답 문서를 만드는데 사용할 문자 인코딩("UTF-8") 정하기 
		java.io.PrintWriter out = response.getWriter();       // 출력 스트림 객체 out 생성
		// 웹클라이언트 화면에 데이터 출력 
		out.println("<html><body>");
		out.println("<h1>doPost() 메서드</h1>");
		String name = request.getParameter("name");   // 웹클라이언트가 보낸 request 객체에 속한 요청 파라미터("name")에 사용자가 입력한 문자열 읽어오기 
		out.println(name);
		out.println("</body></html>");
		out.close();
	}

}
