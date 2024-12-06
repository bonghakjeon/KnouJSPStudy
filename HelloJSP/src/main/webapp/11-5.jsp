<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*" %>
<html>
<head>
	<meta charset="UTF-8">
	<title>Member 테이블 관리하기</title>
</head>
<body>
	<div align="center">
		<h3>Member 테이블 내용</h3>
		<table border = 1>
			<tr><th>아이디</th><th>비밀번호</th><th>이름</th><th>전화번호</th><th>주소</th><th>메뉴</th></tr>
			<%
				//TODO : 오류 메시지 "java.lang.ClassNotFoundException: org.mariadb.jdbc.Driver" 해결하기 위해서 
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
						out.print("<td>" + rs.getString("address") + "</td>");
						String update = String.format("<a href='11-6.jsp?id=%s'>수정</a>", rs.getInt("id"));
						out.print("<td>" + update);
						String delete = String.format("<a href='11-8.jsp?id=%s'>삭제</a>", rs.getInt("id"));
						out.print(delete + "</td></tr>");
					}
					
				} catch(Exception e) {
					e.printStackTrace();
				}
			%>
		</table>
		<h3><a href="11-3.html">레코드 입력하기</a></h3>
	</div>
</body>
</html>