<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@page import="java.sql.*,java.util.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="managerGoods/css/css.css">
<title>�ֻ�����ϵͳ</title>
<style type="text/css">
<!--
body {
	background-color: #fafafa;
}

td {
	font-size: 9pt;	color: #000000;
}
.style1 {
	color: #FF9900;
	font-weight: bold;
}

-->
</style></head>

<body>
<form name="form" method="post" action="${pageContext.request.contextPath}/cart_add.action">
<input type="hidden" name="gid" value="${goods.goodsId}"/>
<div align="center">
  <p class="style1">�鿴��Ʒ�嵥</p>
</div>
<table width="500"  border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolorlight="#FFFFFF" bordercolordark="#819BBC">
  <tr>
    <td width="36%" rowspan="4" height="120"><div align="center">
        <input  type="image" src="goodsPicture/huawei/1492255388853.jpg" width="110" height="100">
    </div></td>
    <td width="64%" height="30"><div align="center">
      <table width="71%" height="20"  border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td>��Ʒ���ƣ�${goods.goodsName} </td>
          <td>����������<input type="text" name="count"></td>
        </tr>
      </table>
    </div></td>
  </tr>
  <tr>
    <td height="30"><div align="center">
        <table width="71%"  border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td>
��&nbsp;&nbsp;&nbsp;&nbsp;�ۣ�${goods.nowPrice}Ԫ

&nbsp;&nbsp;&nbsp;&nbsp;��&nbsp;&nbsp;&nbsp;&nbsp;�ۣ�${goods.freePrice}Ԫ
</td>
      </tr>
    </table>
</div></td>
  </tr>
  <tr>
    <td height="30"><div align="center">
      <table width="71%"  border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td>��&nbsp;&nbsp;&nbsp;&nbsp;�飺${goods.introduce} </td>
        </tr>
      </table>
    </div></td>
  </tr>
  <tr align="center">
    <td height="30">
	<img src="image/1.jpg" onClick="window.close()">
	&nbsp;&nbsp;<input type="image" src="image/2.jpg" name="Submit" value="���빺�ﳵ"></td>
  </tr>
</table>
</form>
</body>
</html>
