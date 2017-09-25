<%@ page contentType="text/html; charset=gb2312"%>
<%@page import="java.sql.*,java.util.*"%>
 <script Language="JavaScript">
 function deleteManager(date) {
  if(confirm("确定要删除吗？")){
    window.location="managerAction.do?action=4&id="+date;
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
            <td><div align="center"><strong>管理员信息的查询</strong></div></td>
          </tr>
        </table>
        <br>
	 <table width="90%"  border="0" cellspacing="0" cellpadding="0">
            <tr>
          <td width="20%" height="20" colspan="4"><div align="right"><a href="bg-managerUpdatePassword.jsp">修改您的密码</a>&nbsp;&nbsp;&nbsp;</div></td>
        <tr>
      </table>
	    <table width="90%"  border="1" cellpadding="1" cellspacing="1" bordercolor="#FFFFFF" bgcolor="#CCCCCC">    
	    <tr>
          <td width="20%" height="25"><div align="center">数据编号</div></td>
          <td width="20%"><div align="center">管理员用户名</div></td>
          <td width="20%"><div align="center">管理员姓名</div></td>
          <td width="44%"><div align="center">操作</div></td>
        </tr>

        <tr bgcolor="#FFFFFF">
          <td height="30"><div align="center">3</div></td>
          <td><div align="center">admin</div></td>
          <td><div align="center">李四</div></td>
          <td><div align="center">

         <a href="javascript:deleteManager(' ')">删除</a> 
删除
          </div></td>
        </tr>
	
      </table><br>
	   <table width="90%"  border="0" align="center" cellpadding="0" cellspacing="0">
   <tr align="center">
    <td width="13%">共为4页</td>
			<td width="16%">共有33条记录</td>
            <td width="14%">当前为第2页</td>
    <td width="19%">上一页<a href="managerAction.do?action=1&i=">上一页</a></td>
            <td width="18%">下一页<a href="managerAction.do?action=1&i=">下一页</a></td>

			<td width="20%">	<div align="right"><a href="bg-managerInsert.jsp">添加管理员</a>&nbsp;&nbsp;&nbsp;&nbsp;</div>
	</td>

   </tr>
 </table>  
 
 <%
if(request.getAttribute("reslut")!=null){
%>
<P align="center"><%=request.getAttribute("reslut")%></P>
<%}%>	

 		
</table>		
<jsp:include page="bg-down.jsp" flush="true" />
</body>
</html>
