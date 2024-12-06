<!--  JSP page 지시어 예시 -->
<!-- <%@ page contentType="text/html; charset=UTF-8" import="java.sql.*" %>
<%@ page session="false" %>
<%@ page import="packages.mypackage.*" errorPage="boof.jsp" %>
<%@ page buffer="20kb" %> -->

<!--  표준 액션 태그 예제  -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
  <body>
    <!--  표준 액션 태그 사용법 (동적인 include 지시어)  -->
    <jsp:include page="3-3.jsp" />
  </body>
</html>