<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="member.MemberServiceImpl" %>
    <%@ page import="member.MemberService" %>
    <%@ page import="member.MemberBean" %>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${css}/global.css" />
</head>
<body>


<div class="box">
<h3>회원수</h3>

<%
		MemberService service = MemberServiceImpl.getInstance();
		MemberBean member = new MemberBean();
		
		if(service.count() == 0){
			%>
			<h1>로그인을 해주세요.</h1>
			<%
		} else {
		%>		
			
			<h1><%= service.count()%> 명</h1> 
		
		
		<%
		}
		%>

<a href="${context}/member/member_controller.jsp">
<img src="${img}/member.png" alt="member" style="width:30px" /></a>
<a href="${context}/index.jsp">
		<img src="${img}/home.png" alt="member" style="width:30px" />
		</a>

</div>
</body>
</html>