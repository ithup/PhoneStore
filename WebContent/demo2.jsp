<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.11.3.min.js"></script>
<title>Insert title here</title>
<script type="text/javascript">
	$(function(){
		//给username派发一个失去焦点事件 发送ajax请求
		$("input[name='username']").blur(function(){
			//获取输入的值
			var $value=$(this).val();
			//alert($value);
			
			$.get("/day15/checkUsername4Ajax","username="+$value,function(d){
				//alert(d);
				if(d==1){
					$("#usename_msg").html("<font color='green'>用户名可以使用</font>");
				}else{
					$("#usename_msg").html("<font color='red'>用户名已被使用</font>");
				}
			});
		});
	})
</script>
</head>
<body>
	<form method="post" action="#">
		<table>
			<tr>
				<td>用户名:</td>
				<td><input type="text" name="username"></td>
				<td><span id="usename_msg"></span></td>
			</tr>
			<tr>
				<td>密码:</td>
				<td><input type="text" name="password"></td>
				<td></td>
			</tr>
			<tr>
				<td colspan='3'><input type="submit" id="sub"></td>
			</tr>
		</table>
	</form>
</body>
<script type="text/javascript">
	//失去焦点 发送ajax
	
</script>
</html>