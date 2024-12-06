<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<body>
<!--  JSP 스크립트 요소 - 스크립트릿 영역(해당 영역안의 소스코드를 가지고 만들어진 결과 데이터가 웹브라우저(클라이언트)) 화면에서 출력  -->
<!--  스크립트릿(Scriptlet) 영역 - JSP 페이지에 삽입되는 Java 코드 조각  -->
<%
	String str = "Hello, JSP!";
%>
<!--  JSP 스크립트 요소 - 표현식(Expression) 영역  -->
<!--  변수나 수식의 값을 출력할 때, JSP 페이지에 삽입하는 식 -->
<h3><%= str %></h3>
</body>
</html>