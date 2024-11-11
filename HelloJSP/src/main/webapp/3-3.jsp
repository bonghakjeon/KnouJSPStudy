<!--  JSP 파일(3-3.jsp)의 코드를 웹브라우저(클라이언트)에 출력하는 순서  -->
<!--  1. 웹브라우저(클라이언트)가 웹서버 쪽으로 JSP 파일(3-3.jsp) 요청 (URL 주소 - http://localhost:8080/HelloJSP/3-3.jsp)   -->
<!--  2. 웹브라우저(클라이언트)로 부터 요청 받은 후 웹서버가 동적으로 웹페이지(JSP 파일 - 응답 메시지 HTML 문서) 생성 -> 웹브라우저(클라이언트) 쪽으로 전달  -->
<!--  3. 웹브라우저(클라이언트)가 웹서버로 부터 전달받은 웹페이지(JSP 파일 - 응답 메시지 HTML 문서) 결과 확인 -> 해당 결과 웹브라우저(클라이언트) 화면 출력  -->
<!--   -->
<!--   -->
<!--   -->
<!--  JSP 요소 - 페이지 지시어 영역 (JSP 컨테이너에게 어떤 정보를 제공하는 기능)  -->
<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ page import="java.util.Date" %>
<!--  템플릿 데이터 또는 템플릿 텍스트 - 처리가 필요없이 그대로 자바 프로그램으로 자바 서블릿 코드로 번역될 때, 해당 템플릿 데이터를 그대로 string(문자열) 그대로 출력하는 그런 자바 코드로 번역  -->
<html> <!--  템플릿 데이터 또는 템플릿 텍스트 -->
<body> <!--  템플릿 데이터 또는 템플릿 텍스트 -->
<!--  JSP 스크립트 요소 - 스크립트릿 영역(해당 영역안의 소스코드를 가지고 만들어진 결과 데이터가 웹브라우저(클라이언트)) 화면에서 출력  -->
<!--  스크립트릿(Scriptlet) 영역 - JSP 페이지에 삽입되는 Java 코드 조각  -->
<% 
	Date today = new Date();
	out.println(today);
%>
<% 
	String a = "Hello, Java";
%>
<!--  JSP 스크립트 요소 - 표현식(Expression) 영역  -->
<!--  변수나 수식의 값을 출력할 때, JSP 페이지에 삽입하는 식 -->
<h1><%= a %></h1>

<!--  JSP 스크립트 요소 - 선언(Declaration) 영역  -->
<!--  JSP 코드에서 사용될 변수 또는 메서드의 선언문 -->
<%!
	public int add(int a, int b) 
	{
		return a + b;
	}
%>

</body> <!--  템플릿 데이터 또는 템플릿 텍스트 -->
</html> <!--  템플릿 데이터 또는 템플릿 텍스트 -->