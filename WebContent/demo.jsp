<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.11.3.min.js" ></script>
<title>Insert title here</title>
<script type="text/javascript">
	$(function() {
		$("#username").blur(function() {
			// 获得文本框的值:
			var username = $(this).val();
			alert(username)
			// 使用jquery的ajax的操作异步发送请求.
		})
	})
</script>
</head>
<body>
	<input type="text" name="username" id="username" value="">
</body>
</html>