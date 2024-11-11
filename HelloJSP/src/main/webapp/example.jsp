<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head> <title>JSP Scripting Example</title> </head>
<body>
	<h3>JSP Scripting Example</h3>
	<!--  JSP 스크립트 요소 - 선언(Declaration) 영역  -->
	<!--  JSP 코드에서 사용될 변수 또는 메서드의 선언문 -->
	<%!
		double power(double base, int exponent) 
		{
			return Math.pow(base, exponent);
		}
	%>
	<!--  JSP 스크립트 요소 - 스크립트릿 영역(해당 영역안의 소스코드를 가지고 만들어진 결과 데이터가 웹브라우저(클라이언트)) 화면에서 출력  -->
	<!--  스크립트릿(Scriptlet) 영역 - JSP 페이지에 삽입되는 Java 코드 조각  -->
	<% 
		double result = power(2, 3); // 2^3 = 8
		out.println("2의 3승 = " + result);
	%> <br>
	<!--  JSP 스크립트 요소 - 표현식(Expression) 영역  -->
	<!--  변수나 수식의 값을 출력할 때, JSP 페이지에 삽입하는 식 -->
	<%= "5의 4승 = " + power(5, 4) %>
	<!-- 5^4 = 625  -->
	
</body>
</html>