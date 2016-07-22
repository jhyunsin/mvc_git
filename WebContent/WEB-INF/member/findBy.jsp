<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${css}/global.css" />
<style>
iframe.ifrm{border:none;width: 400px; height:400px}
</style>

</head>
<body>
<div class="box">


<h1>정보검색</h1>
<iframe src="${context}/member.do?page=image" class="ifrm" style="border:none;"></iframe>
<a href="${context}/member/content.do"><br /><br />
<img src="${img}/member.png" alt="member" style="width:30px" /></a>

<a href="${context}/index.do">
		<img src="${img}/home.png" alt="member" style="width:30px" />
		</a>

</div>
</body>
</html>