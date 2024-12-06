<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="boardData" class="com.board.BoardData" scope="request" />
<jsp:setProperty name="boardData" property="*" />
<jsp:forward page="view.jsp" />

<!-- 아래 주석친 코드는 위의 코드 <jsp:setProperty name="boardData" property="*" />와 동일함.   -->
<!-- <jsp:setProperty name="boardData" property="title" param="title" />  -->
<!-- <jsp:setProperty name="boardData" property="writer" param="writer" />  -->
<!-- <jsp:setProperty name="boardData" property="text" param="text" />  -->
<!-- <jsp:setProperty name="boardData" property="pass" param="pass" />  -->
<%
	// boardData.setTitle(request.getParameter("title"));
	// boardData.setWriter(request.getParameter("writer"));
	// boardData.setText(request.getParameter("text"));
	// boardData.setPass(request.getParameter("pass"));
%>