<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*" %>
<html>
<head>
	<meta charset="UTF-8">
	<title>Member 레코드 수정하기</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");

	// TODO : 오류 메시지 "java.lang.ClassNotFoundException: org.mariadb.jdbc.Driver" 해결하기 위해서 
	//        jar 파일 "mariadb-java-client-2.7.3" 버전 삭제 후 "mariadb-java-client-3.2.0" 설치 진행함. (2024.12.06 jbh)
	// mariadb.jdbc.Driver 버전 3.2.0 다운로드 참고 URL - https://downloads.mariadb.com/Connectors/java/connector-java-3.2.0/
	Class.forName("org.mariadb.jdbc.Driver");
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	String name = request.getParameter("name");
	String phone = request.getParameter("phone");
	String address = request.getParameter("address");
	String url = "jdbc:mariadb://localhost:3306/my_db";
	String user = "user";
	String pw = "user1234";
	
	try(Connection con = DriverManager.getConnection(url, user, pw);
	    Statement stmt = con.createStatement();) {
		String sql = String.format("update member set id = %s, pass = '%s', name = '%s', phone = '%s', address = '%s' where id = %s", id, pass, name, phone, address, id);
		int res = stmt.executeUpdate(sql);
		if(res == 1) out.print("레코드 update 성공");
		else out.print("레코드 update 실패");
	} catch(Exception e) {
		e.printStackTrace();
	}
%>
<h3><a href="11-5.jsp">초기 화면</a></h3>
</body>
</html>