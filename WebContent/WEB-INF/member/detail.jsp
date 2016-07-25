<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../global/top.jsp"/>
<jsp:include page="../global/header.jsp"/>
<jsp:include page="../global/navi.jsp"/>
<div class="box">
		<h1>회원상세정보</h1>
	
		
		<table id="member_detail">
				<tr>
				<td rowspan="4" style="width:30%">
				<img src="${img}/${detail.id}.jpg" alt="proImg" width="104"
			height="142"></td>
				<td style="width:20%" class="font_bold bg_color_yellow">ID</td>
				<td style="width:40%">${detail.id}</td>
			</tr>
			<tr>
				
				<td class="font_bold bg_color_yellow">이 름</td>
				<td>${detail.name}</td>
			</tr>
			
			<tr>
				
				<td class="font_bold bg_color_yellow">성 별</td>
				<td>${detail.gender}</td>
			</tr>
			<tr>
				<td class="font_bold bg_color_yellow">이메일</td>
				<td colspan="2">${detail.email}</td>
				
			</tr>
			<tr>
				<td class="font_bold bg_color_yellow">생년월일</td>
				<td colspan="2">${detail.birth}</td>
			</tr>
			<tr>
				<td class="font_bold bg_color_yellow">등록일</td>
				<td colspan="2">${detail.regDate}</td>
				
			</tr>
		</table>
		
		
		<br /> 
		<p>
			
		</p>
<a href="${context}/member.do">
<img src="${img}/member.png" alt="member" style="width:30px" /></a>
<a href="${context}/index.jsp">
		<img src="${img}/home.png" alt="member" style="width:30px" />
		</a>

	</div>
<jsp:include page="../global/footer.jsp"/>
<jsp:include page="../global/end.jsp"/>
