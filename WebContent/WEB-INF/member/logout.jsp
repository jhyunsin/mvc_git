<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="member.MemberServiceImpl" %>
    <%@ page import="member.MemberService" %>
    <%@ page import="member.MemberBean" %>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link rel="stylesheet" href="${css}/global.css" />
</head>
<body>
<div class="box">
	<%MemberService service =  MemberServiceImpl.getInstance(); 
	MemberBean member = new MemberBean();
	%>
	
	<form action="${context}/member/result/logout_result.jsp" method="post">
			<br/><br/><br/>
		<input type="hidden" name="id" value="<%=service.show().getId() %>"/>
		<input type="hidden" name="pw" value="<%=service.show().getPw() %>"/>
		<input type="submit"  value="로그아웃"/>


	</form>

	</div>




</body>
</html>