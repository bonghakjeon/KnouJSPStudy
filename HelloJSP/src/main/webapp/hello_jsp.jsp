<!--  TODO : 아파치 톰캣 웹서버 실행시 오류 메시지 "the selection cannot be run on any server" 출력시 
             eclipse 화면 상단 탭 "Project" 클릭 -> "Properties" 클릭 -> "Properties" 팝업화면 출력 되면 화면 좌측 "Server" 클릭
             -> "Tomcat v9.0 Server at localhost" 클릭 -> 팝업화면 우측 하단 버튼 "Apply and Close" 클릭해서 오류 해결 가능  (2024.10.22 jbh)  -->
<!--  참고 URL - https://kimsaemjava.tistory.com/166  -->
<%@ page contentType="text/html; charset=UTF-8" %>
<HTML>
<HEAD>
<TITLE>Hello JSP</TITLE>
</HEAD>
<BODY>
<h2>첫 번째 JSP 페이지입니다.</h2>
<%
	int a = 10, b = 20;
	out.print(a + b);
	out.print("<br>");
%>
</BODY>
</HTML>