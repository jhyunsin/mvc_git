<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div id="nav">
		<div style = "text-align:right;color:white;width:100%;margin-right:100px;background-color: #333">${member.name}님 환영합니다</div>
		<ul>
			<li><a class="active" href="${context}/member.do">회원관리</a></li>
			<li><a href="${context}/grade/main.do">성적관리</a></li>
			<li><a href="${context}/bank/main.do">계좌관리</a></li>
			<li><a href="${context}/global.do?page=school_info">학교소개</a></li>
		</ul>
	</div>