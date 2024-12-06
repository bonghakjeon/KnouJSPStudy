<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*" %>
<html>
<head>
   <meta charset="UTF-8">
   <title>select 구문 실행 예제</title>
</head>
<body>
<table border=1>
<tr>
  <th>아이디</th>
  <th>비밀번호</th>
  <th>이름</th>
  <th>전화번호</th>
  <th>주소</th>
</tr>
<%
	// TODO : 오류 메시지 "java.lang.ClassNotFoundException: org.mariadb.jdbc.Driver" 해결하기 위해서 
	//        jar 파일 "mariadb-java-client-2.7.3" 버전 삭제 후 "mariadb-java-client-3.2.0" 설치 진행함. (2024.12.06 jbh)
	// mariadb.jdbc.Driver 버전 3.2.0 다운로드 참고 URL - https://downloads.mariadb.com/Connectors/java/connector-java-3.2.0/
	Class.forName("org.mariadb.jdbc.Driver");
	String url = "jdbc:mariadb://localhost:3306/my_db";
	String user = "user";
	String pw = "user1234";
	try(Connection con = DriverManager.getConnection(url, user, pw);
	    Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery("select * from member");) {
		
		while(rs.next()) {
			out.print("<tr><td>" + rs.getInt("id") + "</td>");
			out.print("<td>" + rs.getString("pass") + "</td>");
			out.print("<td>" + rs.getString("name") + "</td>");
			out.print("<td>" + rs.getString("phone") + "</td>");
			out.print("<td>" + rs.getString("address") + "</td></tr>");
		}
		out.println("MariaDB 연결 성공");
	} catch(Exception e) {
		out.println("MariaDB 연결 실패");
		e.printStackTrace();
	}
%>
</table>
</body>
</html>