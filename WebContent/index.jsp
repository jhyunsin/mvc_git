<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>Document</title>

</head>
<body>
	<a href="#" id="atag">홈으로</a>
	
</body>
<!-- 이 영역은 온니 자바스크립트.. 실행부 -->
<script src="resources/js/application.js"></script><!-- 자바의 import -->
<script type="text/javascript"> <!-- 메인메소드 개념 -->
		application.init("${context}");
		application.go_home();
		
</script>
</html>
