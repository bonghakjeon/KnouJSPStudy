<%@ page contentType="text/html; charset=UTF-8" %>

<!--  JSP 스크립트 요소 - 선언(Declaration) 영역  -->
<!--  JSP 코드에서 사용될 변수 또는 메서드의 선언문 -->
<%!
  public int sum(int a) {
	 int s = 0;
	 for(int i =1; i <= a; i++) s+= i;
	 	return s;
  }
%>
<html>
<body>
1부터 100까지 숫자의 합은 <%=sum(100)%>입니다.
</body>
</html>