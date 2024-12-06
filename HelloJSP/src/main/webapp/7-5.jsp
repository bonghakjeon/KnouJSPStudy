<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<body>
  <!--  Http URL 주소 입력 예시 - http://localhost:8080/HelloJSP/7-4.jsp?name=James  -->
  <h3>------ 7-5.jsp ------</h3>
  <% String[] values = request.getParameterValues("name"); %>
  이름1 : <%= values[0] %><br>
  이름2 : <%= values[1] %><br>
  전화 : <%= request.getParameter("phone") %><br>
  <!--  이름 : <%= request.getParameter("name") %><br>  -->
  <!--  전화 : <%= request.getParameter("phone") %>  -->
  <h3>------ 7-5.jsp ------</h3>
</body>
</html>