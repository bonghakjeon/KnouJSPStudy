<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<jsp:useBean id="meminfo" class="com.member.MemberInfo" scope="page" />
<html>
<body>
<%
	meminfo.setAge(10);
	meminfo.setName("Jimmy");
%>
<jsp:forward page="10-3.jsp" />
</body>
</html>