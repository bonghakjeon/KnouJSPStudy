<%@ page contentType="text/html; charset=euc-kr" %>
<html>
<body>
  <h2>여기는 7-9.jsp 페이지입니다.</h2>
  <%= request.getAttribute("name") %><br>
  <%= request.getAttribute("phone") %><br>
</body>
</html>