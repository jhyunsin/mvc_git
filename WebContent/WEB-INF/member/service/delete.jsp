<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="member.MemberServiceImpl"%>
<%@page import="member.MemberService" %>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${context}/css/member.css" />
</head>
<body>
<% MemberService service = MemberServiceImpl.getInstance(); %>
<div class="box">
<embed src="${context}/img/star.gif">
<h1>탈퇴 페이지</h1>

<form action="${context}/member/result/delete_result.jsp" method="post">  
	<input type="hidden" name="id" value = "<%=service.show().getId() %>"/>
	<span class="meta">	PW </span> <input type="text" name="pw"/><br/>
	<p></p><br />

<a href="${context}/member/member_controller.jsp">
<img src="${img}/member.png" alt="member" style="width:30px" /></a>
<a href="${context}/index.jsp">
		<img src="${img}/home.png" alt="member" style="width:30px" />
		</a>
</form>
</div>

</body>
</html>