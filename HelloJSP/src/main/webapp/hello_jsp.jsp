<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Hello JSP</title>
</head>
<body>
<h2>첫 번째 JSP 페이지입니다.</h2>
<%
    int a = 10, b = 20;
	out.print(a + b);
	out.print("<br>");
%>
</body>
</html>