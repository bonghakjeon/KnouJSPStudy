<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<body>
<%
	Cookie cookie = new Cookie("name", "jimmy");
	response.addCookie(cookie);
%>
<h3>현재 쿠키(<%=cookie.getName()%> : <%=cookie.getValue()%>)</h3>
<a href="8-4.jsp">쿠키 변경하기</a>
</body>
</html>