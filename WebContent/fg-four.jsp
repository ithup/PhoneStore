<%@ page contentType="text/html; charset=gb2312" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>手机销售系统</title>
</head>
 <link href="css/css.css" rel="stylesheet" type="text/css"> 
<body>
<jsp:include page="fg-top.jsp" flush="true"/>
<table width="766" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#000000">
  <tr>
    <td bgcolor="#FFFFFF" align="center">
<img src="image/fg2.jpg" width="752" height="45">
   <p><strong>
    密码修改成功！！！
    密码修改失败！！！
  </strong></p>
  <!-- 提示：此时要对修改的密码是否成功进行判断，密码修改失败则跳到fg-three.jsp页面，修改成功则跳回到首页index.jsp -->
<meta http-equiv="refresh" content="3;URL=index.jsp">
   </td>
  </tr>
</table>
<jsp:include page="fg-down.jsp" flush="true"/>
</body>
</html>
