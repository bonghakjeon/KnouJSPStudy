<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<body>
<%
	Cookie[] cookies = request.getCookies();
	for(Cookie c : cookies) {
		if(c.getName().equals("name")) {
			c.setMaxAge(0);  // 쿠키 객체 c 유효시간 0으로 설정(쿠키 삭제)
			response.addCookie(c);
		}
	}
%>
<a href="8-2.jsp">쿠키 확인하기</a>
</body>
</html>