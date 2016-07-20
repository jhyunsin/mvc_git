<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
    <%@ page import="member.MemberServiceImpl" %>
    <%@ page import="member.MemberService" %>
    <%@ page import="member.MemberBean" %>
<jsp:include page="../../global/top.jsp"/>
<jsp:include page="../../global/header.jsp"/>
<div class="box">
<%
	MemberService service = MemberServiceImpl.getInstance();
	MemberBean member = new MemberBean();
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	application.log("넘어온ID"+id);
	application.log("넘어온PW"+pw);
	if(id.equals("") || pw.equals("")){
		%>
		<h2>로그인 실패!!</h2>
		<a href="${context}/member/service/login.jsp">다시 시도하기</a>
	
		<%
	}else{
		member.setId(id);
		member.setPw(pw);
		String name = service.login(member);
		application.log("DB다녀온 이름:"+name);
		if(name.equals("")){
			%>
			<h2>로그인 실패!!</h2>
			<a href="${context}/member/service/login.jsp">다시 시도하기</a>
			<%
	
		
		}else{
			response.sendRedirect("");
		}
	}
%>
</div>	
<jsp:include page="${context}/global/footer.jsp"/>
<jsp:include page="${context}/global/end.jsp"/>