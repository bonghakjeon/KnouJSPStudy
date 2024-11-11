<%@ page contentType="text/html; charset=UTF-8"%>
<html>
<head>
	<title>Output Form</title>
</head>
<body>
	<!--  TODO :  스크립트릿(Scriptlet) 영역 안에서 작성된 request 객체를 이용하여 name.jsp 파일에서 입력 받은 username, studentID 문자열을 웹브라우저(클라이언트)) 화면에서 출력 되도록 구현 (2024.11.11 jbh)  -->
	<!--  참고 URL - https://januarysecurity.tistory.com/36  -->
	<!--  JSP 스크립트 요소 - 스크립트릿 영역(해당 영역안의 소스코드를 가지고 만들어진 결과 데이터가 웹브라우저(클라이언트)) 화면에서 출력  -->
	<!--  스크립트릿(Scriptlet) 영역 - JSP 페이지에 삽입되는 Java 코드 조각  -->
	<% 
		request.setCharacterEncoding("utf-8");
		String username = request.getParameter("username");
		String studentID = request.getParameter("studentID");
	%>
	
	<!--  TODO : HTML 코드 <p>, <br> 태그 이용하여 웹브라우저(클라이언트) 화면에서 텍스트 출력 구현 (2024.11.11 jbh)  -->
	<!--  참고 URL - https://pururing-log.tistory.com/72  -->
	<!--  JSP 스크립트 요소 - 표현식(Expression) 영역  -->
	<!--  변수나 수식의 값을 출력할 때, JSP 페이지에 삽입하는 식 -->
	<p>Welcome, <%= username %>!<br>
	Your Student ID is: <%= studentID %></p>
	
</body>
</html>