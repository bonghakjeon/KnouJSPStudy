<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page buffer="16kb" autoFlush="true" %>
<html>
<body>
	<ul>
	  <li>버퍼 크기 : <%= out.getBufferSize() %><BR>
	  <li>남은 버퍼 크기 : <%= out.getRemaining() %><BR>
	  <li>autoFlush 속성값 : <%= out.isAutoFlush() %>
	</ul>
</body>
</html>