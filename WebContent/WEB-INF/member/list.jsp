<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="member.MemberServiceImpl" %>
    <%@ page import="member.MemberService" %>
    <%@ page import="member.MemberBean" %>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>회원목록</title>
<link rel="stylesheet" href="${css}/global.css" />
<style>
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #dddddd;
}


</style>
</head>
<body>
<div class="box">
<h1 >목록보기</h1><br/>
	

<table>
  <tr>
    <th>ID</th>
    <th>이름</th>
    <th>등록일</th>
    <th>생년월일</th>
  </tr>
  <tr>
    <td>hong</td>
    <td><a href="detail.jsp">홍길동</a></td>
    <td>2016-07-03</td>
    <td>901001</td>
  </tr>
  <tr>
    <td>park</td>
    <td><a href="detail.jsp">박지성</a></td>
    <td>2016-07-03</td>
    <td>901001</td>
  </tr>
  <tr>
    <td>jang</td>
    <td><a href="detail.jsp">장종익</a></td>
    <td>2016-07-03</td>
    <td>901001</td>
  </tr>
  <tr>
    <td>whan</td>
    <td><a href="detail.jsp">황성호</a></td>
    <td>2016-07-03</td>
    <td>901001</td>
  </tr>
  <tr>
    <td>choi</td>
    <td><a href="detail.html">최경욱</a></td>
    <td>2016-07-03</td>
    <td>901001</td>
  </tr>
  
</table>
<a href="${context}/member/member_controller.jsp"><br /><br />
<img src="${context}/img/member.png" alt="member" style="width:30px" /></a>
<a href="${context}/index.jsp">
		<img src="${context}/img/home.png" alt="member" style="width:30px" />
		</a>
</div>
</body>
</html>