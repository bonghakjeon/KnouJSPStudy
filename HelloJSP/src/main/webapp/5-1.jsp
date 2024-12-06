<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<body>
  <ul>
    <li>클라이언트 주소 : <%=request.getRemoteAddr() %> <!--  IPv6 버전 형식으로 출력 (0:0:0:0:0:0:0:1) -->
    <li>요청 정보 길이 : <%=request.getContentLength() %>
    <li>인코딩 : <%=request.getCharacterEncoding() %>
    <li>문서 타입 : <%=request.getContentType() %>
    <li>프로토콜 : <%=request.getProtocol() %>
    <li>전송방식 : <%=request.getMethod() %>
    <li>요청 URI : <%=request.getRequestURI() %>
  </ul>
</body>
</html>