<%@ page language="java" contentType="text/html; charset=UTF-8"pageEncoding="UTF-8"%>
<jsp:include page="../global/top.jsp"/>
<jsp:include page="../global/header.jsp"/>
<style>
div.memberClass{font-size: 20px;}
  </style>
<div id="" class="memberClass box">
	
	<h1>성적관리</h1><br />
	<div style="width: 300px; margin: 0 auto; text-align: left;">

	<ol>
		<li><a href="service/regist.jsp">등록</a></li>
		<li><a href="service/update.jsp">수정</a></li>
		<li><a href="service/delete.jsp">삭제</a></li>
	  	<li><a href="service/list.jsp">목록</a></li>
		<li><a href="service/count.jsp">카운트</a></li>
		<li><a href="service/serach.jsp">검색</a></li>
	</ol>
	</div>

	<a href="${context}/member/member_controller.jsp"><br />
	<br /> <img src="${img}/member.png" alt="member"
		style="width: 30px" /></a> <a href="${context}/index.jsp"> <img
		src="${img}/home.png" alt="home" style="width: 30px" />
	</a>

</div>
<jsp:include page="../global/footer.jsp"/>
<jsp:include page="../global/end.jsp"/>