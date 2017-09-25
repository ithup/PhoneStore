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
            <td><div align="center"><strong>商品大类别查询</strong></div></td>
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
          <td><div align="center"><a href="#" target="_blank">华为</a></div></td>

          <td><div align="center"><a href="bg-goodSelectBig.jsp">华为手机</a></div></td>

          <td><div align="center"><a href="bg-goodSelectSmall.jsp">荣耀5X序列</a></div></td>
          <td><div align="center"><a href="goodsAction.do?action=7&mark=">否是</a></div></td>
          <td><div align="center"><a href="bg-goodSelectContent.jsp">详细信息</a>&nbsp;&nbsp;
		 
		 <a href="goodsAction.do?action=6&id=">删除</a>
		 
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
		<a href="goodsAction.do?action=0&i=">
		  上一页</a></td>
          <td width="18%">
            下一页
          
		<a href="goodsAction.do?action=0&i=">下一页</a>
          <td width="20%">
            <div align="right"><img src="image/bg-add.gif" width="9" height="9">&nbsp;<a href="bg-goodInsert.jsp">添加商品</a>&nbsp;</div></td>
        </tr>
      </table>
	
    </td>
  </tr>
</table>
<jsp:include page="bg-down.jsp" flush="true" />
</body>
</html>
