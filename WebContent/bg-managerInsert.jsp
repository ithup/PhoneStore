<%@ page contentType="text/html; charset=UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<script language="javascript">
function checkEmpty(form){
for(i=0;i<form.length;i++){
if(form.elements[i].value==""){
alert("表单信息不能为空");
return false;
}
}
}
</script>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>手机销售系统</title>
</head>
<link href="css/css.css" rel="stylesheet" type="text/css">
<body>

<jsp:include page="bg-up.jsp" flush="true"/>
<table width="788" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="170"  valign="top"><jsp:include page="bg-left.jsp" flush="true" /></td>
    <td width="618" align="center" valign="top" bgcolor="#FFFFFF"> <br>
	
        <table width="610" height="25" border="0" cellpadding="0" cellspacing="0" background="image/bg_02.jpg">
          <tr>
            <td><div align="center"><strong>添加管理员信息</strong></div></td>
          </tr>
        </table>
        <br>
				 
		 <form action="${pageContext.request.contextPath}/manager_add.action" onsubmit="return checkEmpty(managerForm)">
		 <table width="58%"  border="1" cellpadding="1" cellspacing="1" bordercolor="#FFFFFF" bgcolor="#CCCCCC">
          <tr>
            <td width="23%" height="30"><div align="center">用户名</div></td>
            <td width="77%" bgcolor="#FFFFFF">&nbsp;
            <input name="account" type="text" size="35"></td>
          </tr>
          <tr>
            <td height="30"><div align="center">密&nbsp;码</div></td>
            <td bgcolor="#FFFFFF">&nbsp;
            <input name="password" type="password" size="35"></td>
          </tr>
          <tr>
            <td height="30"><div align="center">姓&nbsp;名</div></td>
            <td bgcolor="#FFFFFF">&nbsp;
            <input name="name" type="text" size="35"> <input name="sigh" type="hidden" value="0"></td>
          </tr>
        </table>
		<br>  
      <input type="image" class="input1"  src="image/save.jpg" width="51" height="20">
&nbsp;&nbsp;
      <a href="#" onClick="javascript:managerForm.reset()"><img src="image/clear.gif"></a>
&nbsp;&nbsp;
      <a href="#" onClick="javasrcipt:history.go(-1)"><img src="image/back.gif"></a>	  
</form>
<%
if(request.getAttribute("reslut")!=null){
%>
<P align="center"><%=request.getAttribute("reslut")%></P>
<%}%>		
		</table>	
<jsp:include page="bg-down.jsp" flush="true" />


</body>
</html>
