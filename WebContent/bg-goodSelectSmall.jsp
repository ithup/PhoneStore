<%@ page contentType="text/html; charset=gb2312"%>
<%@page import="java.sql.*,java.util.*"%>
 <script Language="JavaScript">
 function deleteType(date) {
  if(confirm("确定要删除吗？")){
    window.location="bigTypeAction.do?action=3&id="+date;
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
            <td><div align="center"><strong>按小类别商品信息查询</strong></div></td>
          </tr>
        </table>
        <br>
				  <table width="90%"  border="1" cellpadding="1" cellspacing="1" bordercolor="#FFFFFF" bgcolor="#CCCCCC">
        <tr>
          <td width="14%" height="25"><div align="center">数据编号</div></td>
          <td width="19%"><div align="center">商品名称</div></td>
          <td width="14%"><div align="center">大类别</div></td>
          <td width="14%"><div align="center">小类别</div></td>
          <td width="14%"><div align="center">是否特价</div></td>
          <td width="25%"><div align="center">操作</div></td>
        </tr>

        <tr bgcolor="#FFFFFF">
          <td height="30"><div align="center">11</div></td>
          <td><div align="center"><a href="#" target="_blank">手机</a></div></td>

          <td><div align="center">华为</div></td>

          <td><div align="center">华为荣耀5C</div></td>
          <td><div align="center">否是</div></td>
          <td><div align="center"><a href="goodsAction.do?action=5&id=">详细信息</a>

		  </div></td>
           </tr>
      </table>
	  <br>
	  <table width="90%"  border="0" align="center" cellpadding="0" cellspacing="0">
        <tr align="center">
          <td width="13%">共为4页</td>
          <td width="16%">共有22条记录</td>
          <td width="14%">当前为第3页</td>
          <td width="19%">  
	  上一页  
   
		<a href="goodsAction.do?action=8&i=%>&small=">
		  上一页</a></td>
          <td width="18%">
            下一页
		<a href="goodsAction.do?action=8&i=&small=">下一页</a>

        </tr>
      </table>
    </td>
  </tr>
</table>
<jsp:include page="bg-down.jsp" flush="true" />

</body>
</html>
