<!--  TODO : 아파치 톰캣 웹서버 실행싯 오류 메세지 "[톰캣오류]the selection cannot be run on any server" 출력시 아래 참고 자료 확인 (2024.11.22 jbh)  -->
<!--  참고 URL - https://kimsaemjava.tistory.com/166  -->
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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