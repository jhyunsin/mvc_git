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
	
	String name = request.getParameter("name");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String ssn = request.getParameter("ssn");
	String email = request.getParameter("email");

		if(name.equals("")||id.equals("")||pw.equals("")||ssn.equals("")){
			%>
			<h2>회원가입 실패!!</h2>
			<a href="${context}/member/service/regist.jsp">다시 시도하기</a>
		
			<%
		}else {
			member.setName(name);
			member.setId(id);
			member.setPw(pw);
			member.setSsn(ssn);
			member.setRegDate();
			member.setEmail(email);
			
			String spec = service.regist(member);
			application.log("DB다녀온 이름:"+spec);
			if(spec.equals("")){
				%>
				<h2>로그인 실패!!</h2>
				<a href="${context}/member/service/resgist.jsp">다시 시도하기</a>
				<%
			}else {
%>
				<span class="meta">	이름 </span><%=request.getParameter("name") %> <br/>
				<span class="meta">	ID </span> <%=request.getParameter("id") %><br/>
				<span class="meta">	비밀번호 </span> <%=request.getParameter("pw") %><br/>
				<span class="meta">	SSN  </span><%= request.getParameter("ssn") %><br/>
				<span class="meta">전공	 </span> <%= request.getParameter("major") %><br/>
				<span class="meta">수강과목	 </span>
				<% 
				String[] subjects = request.getParameterValues("subject");
				if(subjects != null){
					for(int i=0; i<subjects.length; i++){
				%> <%= subjects[i]%> <%
					}
					}
				%>
				
				<br/><br /><br />
				회원가입을 축하드립니다. <%= request.getParameter("name") %> 님<br/>
<% 
			}
		}
		%>
			
			<br /><br /><br />
			<a href="${context}/member/main.jsp">
			<img src="${img}/member.png" alt="member" style="width:50px" /></a>
			<a href="${context}/index.jsp">
					<img src="${img}/home.png" alt="home" style="width:50px" /></a>
	</div>
<jsp:include page="../../global/footer.jsp"/>
<jsp:include page="../../global/end.jsp"/>