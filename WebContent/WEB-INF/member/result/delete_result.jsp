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
<link rel="stylesheet" href="${css}/member.css" />
</head>
<body>

<div class="box">
<embed src="${context}/img/star.gif">
<h1>탈퇴 페이지</h1>
<% 
MemberService service = MemberServiceImpl.getInstance();
MemberBean member = new MemberBean();


String id = request.getParameter("id");
String pw = request.getParameter("pw");

if(id.equals(service.findById(id).getId()) && pw.equals(service.findById(id).getPw())){
	service.delete(service.findById(id));
			%>
			<h3> <br/><br /><br />
				그렇게.. 꼭 탈퇴를 했어야 했냐?? <%= request.getParameter("id") %> 님<br/></h3>
			
		
			<%
		}else {
			%>
		<h3>정보를 정확히 입력해주세요</h3>
	<a href="${context}/member/service/delete.jsp">다시 시도하기</a><br />
	<% 
	}
%>
	

</div>
</body>
</html>