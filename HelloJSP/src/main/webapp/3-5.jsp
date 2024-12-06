<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.Calendar" %>
<!--  page 지시어 속성 trimDirectiveWhitespaces 사용하여 앞 부분의 지시어로 인해 생기는 불필요한 줄바꿈 문자 제거 -->
<%@ page trimDirectiveWhitespaces="true" %>
<html>
<head>
  <body>
  	<!--  JSP 스크립트 요소 - 스크립트릿 영역(해당 영역안의 소스코드를 가지고 만들어진 결과 데이터가 웹브라우저(클라이언트)) 화면에서 출력  -->
	<!--  스크립트릿(Scriptlet) 영역 - JSP 페이지에 삽입되는 Java 코드 조각  -->
    <% 
    	Calendar today = Calendar.getInstance();
    	int year = today.get(Calendar.YEAR);
    	int month = today.get(Calendar.MONTH) + 1;
    	int date = today.get(Calendar.DATE);
    	out.println("오늘은 " + year + "년 " + month + "월 " + date + "일입니다.");
    %>
  </body>
</html>