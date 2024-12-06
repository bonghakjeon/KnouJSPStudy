<%@ page contentType="text/html; charset=euc-kr" %>
<html>
<body>
<%
    request.setAttribute("name", "Jimmy");
    request.setAttribute("phone", "010-1111-2222");
%>
<h2>여기는 7-8.jsp 페이지입니다.</h2>
<jsp:forward page="7-9.jsp" />
<jsp:forward page="to.jsp">
    <jsp:param name="name" value="Jimmy" />
    <jsp:param name="phone" value="010-1111-2222" />
</jsp:forward>
</body>
</html>