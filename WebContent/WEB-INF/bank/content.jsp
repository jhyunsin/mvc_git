<%@ page language="java" contentType="text/html; charset=UTF-8"pageEncoding="UTF-8"%>
<jsp:include page="../global/top.jsp"/>
<jsp:include page="../global/header.jsp"/>
<style>
div.memberClass{font-size: 20px;}
  </style>
<div id="" class="memberClass box">
	<h1>계좌관리</h1><br />
	<div style="width: 300px; margin: 0 auto; text-align: left;">
	<ol>
		<li><a href="service/regist.jsp">개설</a></li>
		<li><a href="service/deposit.jsp">입금</a></li>
		<li><a href="service/withdraw.jsp">출금</a></li>
	  	<li><a href="service/update.jsp">비번수정</a></li>
		<li><a href="service/delete.jsp">해지</a></li>
		<li><a href="service/list.jsp">목록</a></li>
		<li><a href="service/serach.jsp">조회(이름)</a></li>
		<li><a href="service/count.jsp">통장수</a></li>
	</ol>
	</div>

	<a href="${context}/member/member_controller.jsp"><br />
	<br /> <img src="${context}/img/member.png" alt="member"
		style="width: 30px" /></a> <a href="${context}/index.jsp"> <img
		src="${context}/img/home.png" alt="member" style="width: 30px" />
	</a>

</div>
<jsp:include page="../global/footer.jsp"/>
<jsp:include page="../global/end.jsp"/>