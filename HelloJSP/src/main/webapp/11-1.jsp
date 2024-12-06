<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*" %>
<html>
<head>
   <meta charset="UTF-8">
   <title>MariaDB 연결 예제</title>
</head>
<body>
<%
    // TODO : 오류 메시지 "java.lang.ClassNotFoundException: org.mariadb.jdbc.Driver" 해결하기 위해서 
    //        jar 파일 "mariadb-java-client-2.7.3" 버전 삭제 후 "mariadb-java-client-3.2.0" 설치 진행함. (2024.12.06 jbh)
	Class.forName("org.mariadb.jdbc.Driver");
	String url = "jdbc:mariadb://localhost:3306/my_db";
	String user = "user";
	String pw = "user1234";
	try(Connection con = DriverManager.getConnection(url, user, pw)) {
		out.println("MariaDB 연결 성공");
	} catch(Exception e) {
		out.println("MariaDB 연결 실패");
		e.printStackTrace();
	}
%>
</body>
</html>