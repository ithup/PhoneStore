<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>手机销售系统</title>
</head>
<body>
<table width="766" height="26" border="0" align="center" cellpadding="0" cellspacing="0" background="image/fg_top01.jpg">
  <tr>
    <td width="627">&nbsp;</td>
    <td width="139" valign="top">
    <table width="125" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="70" height="23" valign="bottom"></td>
        <td width="55" valign="bottom"></td>
      </tr>
    </table></td>
  </tr>
</table>
<table width="766" height="56" border="0" align="center" cellpadding="0" cellspacing="0" background="image/fg_top02.jpg">
  <tr>
    <td>&nbsp;</td>
  </tr>
</table>
<table width="766" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolorlight="#FFFFFF" bordercolordark="#819BBC" background="image/fg_top03.jpg">
      <tr align="center">
        <td width="117" height="31" onMouseOver="this.style.backgroundImage='url(image/fg_top04.jpg)'" onMouseOut="this.style.backgroundImage=''"><a href="index.jsp" class="a4">首页</a></td>
        <td width="117" onMouseOver="this.style.backgroundImage='url(image/fg_top04.jpg)'" onMouseOut="this.style.backgroundImage=''"><a href="bg-resultTen.jsp" class="a4">销售排行</a></td>
        <td width="117" onMouseOver="this.style.backgroundImage='url(image/fg_top04.jpg)'" onMouseOut="this.style.backgroundImage=''"><a href="fg-selectNewGoods.jsp" class="a4">新品上架</a></td>
        <td width="117" onMouseOver="this.style.backgroundImage='url(image/fg_top04.jpg)'" onMouseOut="this.style.backgroundImage=''"><a href="${pageContext.request.contextPath}/goods_selectFreePage.action?currPage=1" class="a4">特价商品</a></td>
        <c:if test="${not empty member}">
	        <td width="117" onMouseOver="this.style.backgroundImage='url(image/fg_top04.jpg)'" onMouseOut="this.style.backgroundImage=''"><a href="${pageContext.request.contextPath}/order_findAllByPage.action?currPage=1" class="a4">查看订单</a></td>
	        <td width="117" onMouseOver="this.style.backgroundImage='url(image/fg_top04.jpg)'" onMouseOut="this.style.backgroundImage=''"><a href="cart_see.jsp" class="a4">购物车</a></td>
        	<td width="117" onMouseOver="this.style.backgroundImage='url(image/fg_top04.jpg)'" onMouseOut="this.style.backgroundImage=''"><a href="fg-updateMember.jsp" class="a4">会员修改</a></td>
        </c:if>
        <td width="117" onMouseOver="this.style.backgroundImage='url(image/fg_top04.jpg)'" onMouseOut="this.style.backgroundImage=''"><a href="#" onclick="this.style.behavior='url(#default#homepage)';this.sethomepage('http://www.mobilesale.com')" class="a4">设为首页</a></td>
      </tr>	
</table>
<table width="766" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><img src="image/fg_top05.jpg" width="766" height="117"></td>
  </tr>
</table>































</body>
</html>
