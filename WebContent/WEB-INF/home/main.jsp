<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="../global/top.jsp"/>
<jsp:include page="../global/header.jsp"/> 

	<!doctype html>
	<html lang="en">
	<head>
		<meta charset="UTF-8" />
	<title>한빛아카데미</title>
<link rel="stylesheet" href="${css}/global.css" />	
	
	
	</head>
	<body>
		<div class="box">
		<h2>서비스를 이용하시려면 회원가입을 하세요</h2>
  		<a href="${context}/member.do?page=regist">회원가입 하러 가기 </a> <br /><br />
		<a href="${context}/member.do?page=login">로긴하러 가기 </a>	<br/> <br />
		<a href="${context}/global.do">[임시]글로벌메인바로가기</a><br /> <br /> <br />
	</div>
<jsp:include page="../global/footer.jsp"/>
<jsp:include page="../global/end.jsp"/> 
	</body>
	</html>
