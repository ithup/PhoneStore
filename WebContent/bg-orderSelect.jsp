<%@ page contentType="text/html; charset=gb2312"%>
<%@page import="java.sql.*,java.util.*"%>
 <script Language="JavaScript">
 function deleteOrder(date) {
  if(confirm("确定要删除吗？")){
    window.location="orderAction.do?action=2&number="+date;
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
    <td width="618" align="center" valign="top" bgcolor="#FFFFFF">
	
	
	
<br>
	

	<table width="610" height="25" border="0" cellpadding="0" cellspacing="0" background="image/bg_02.jpg">
      <tr>
        <td><div align="center"><strong>订单的查询</strong></div></td>
      </tr>
    </table>	<br>
	    <table width="96%"  border="1" cellpadding="1" cellspacing="1" bordercolor="#FFFFFF" bgcolor="CCCCCC">

	    <tr bgcolor="#DCDCDC">
          <td width="15%" height="25"><div align="center">编号</div></td>
          <td width="14%"><div align="center">真实姓名</div></td>

         <td width="16%"><div align="center">是否出货</div></td>
        <td width="26%"><div align="center">订货时间</div></td>
   <td width="29%"><div align="center">操作</div></td>
        </tr>
    
        <tr align="center" bgcolor="#FFFFFF">
          <td height="25">232</td>
          <td>李四</td>

		  <td>
                    <a href="orderAction.do?action=0&sign=">否</a>
                  
                    <a href="orderAction.do?action=0&sign=">是</a>
         </td>
		  <td>2017-09-07 22:41:51</td>
        <td><a href="bg-orderContent.jsp">详细信息</a>
                             &nbsp;&nbsp;
	  
		 已出
		 
		  <a href="orderAction.do?action=1&number=">出货</a>
		
		  <a href="orderAction.do?action=1&sign=&number=">出货</a>
	
		 &nbsp;&nbsp;

		 <a href="javascript:deleteOrder('')">删除</a></td>
        </tr>
  
      </table><br>

  <table width="96%"  border="0" align="center" cellpadding="0" cellspacing="0">
    <tr align="center">
    <td width="17%">共为4页</td>
    <td width="22%">共有23条记录</td>
    <td width="26%">当前为第2页</td>
    <td width="19%">上一页<a href="orderAction.do?action=0&i=">上一页</a></td>
    <td width="16%">下一页<a href="orderAction.do?action=0&i=">下一页</a></td>
   </tr>
 </table>

 <table width="96%"  border="0" align="center" cellpadding="0" cellspacing="0">
    <tr align="center">
    <td width="14%">共为4页</td>
    <td width="18%">共有34条记录</td>
    <td width="22%">当前为第3页</td>
    <td width="16%">上一页<a href="orderAction.do?action=0&i=&sign=">上一页</a></td>
    <td width="12%">下一页<a href="orderAction.do?action=0&i=&sign=">下一页</a></td>
    <td width="18%"><a href="orderAction.do?action=0">返回</a></td>
   </tr>
 </table>

</td>
  </tr>
</table><jsp:include page="bg-down.jsp" flush="true" />

</body>
</html>
