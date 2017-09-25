<%@ page contentType="text/html; charset=UTF-8" import="java.util.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<table width="788" height="66" border="0" align="center" cellpadding="0" cellspacing="0" background="image/bg_01.jpg">
  <tr>
    <td valign="top"><table width="770" border="0" align="center">
      <tr >
        <td width="413" height="53" valign="bottom"><div align="right"></div></td>
        <td width="347" valign="bottom" align="right"><font color="#FFFFFF"><a href="bg-orderSelect.jsp" class="a2">商品查询</a> | 
        <a href="${pageContext.request.contextPath}/bigType_showPage.action?currPage=1" class="a2">大类别查询</a> | 
        <a href="${pageContext.request.contextPath}/smallType_showPage.action?currPage=1" class="a2">小类别查询</a> | 
        <a href="bg-orderSelect.jsp" class="a2">返回首页</a></font></td>
      </tr>
    </table></td>
  </tr>
</table>
<table width="788" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#000000">
  <tr>
    <td width="15" height="25">&nbsp;</td>
    <td width="579"><font color="#FFFFFF">当前登录：${manager.account}</font></td>
    <td width="194"><font color="#FFFFFF">今天是 <%=new Date().toLocaleString()%></font></td>
  </tr>
</table>