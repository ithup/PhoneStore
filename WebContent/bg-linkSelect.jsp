<%@ page contentType="text/html; charset=UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <script Language="JavaScript">
 function deleteLink(data) {
  if(confirm("确定要删除吗？")){
    window.location="${pageContext.request.contextPath}/link_delete.action?linkId="+data;
	}
  }
 </script>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
            <td><div align="center"><strong>连接网站信息的查询</strong></div></td>
          </tr>
        </table>
        <br>
 <table width="90%"  border="1" cellpadding="1" cellspacing="1" bordercolor="#FFFFFF" bgcolor="CCCCCC">
        <tr>
          <td width="14%" height="25"><div align="center">数据编号</div></td>
          <td width="28%"><div align="center">网站名称</div></td>
          <td width="28%"><div align="center">网站连接地址</div></td>
          <td width="30%"><div align="center">操作</div></td>
        </tr>
		 <c:forEach items="${link.list}" var="link">
        <tr bgcolor="#FFFFFF">
          <td height="30"><div align="center">${link.linkId}</div></td>
          <td><div align="center">${link.linkName}</div></td>
          <td><div align="center">${link.linkAddress}</div></td>
          <td><div align="center"><a href="javascript:deleteLink(${link.linkId})">删除</a></div></td>
        </tr>
        </c:forEach>
      </table>
	  <br>
	  <table width="90%"  border="0" align="center" cellpadding="0" cellspacing="0">
        <tr align="right">
          <td width="20%">
            <img src="image/bg-add.gif" width="9" height="9">&nbsp;<a href="bg-linkInsert.jsp">添加网站信息</a>
          </td>
        </tr>
        <tr>
        		<center>
		<!-- 若是第一页 首页和上一页不展示 -->
		<c:if test="${link.currPage!=1 }">
			<a href='${pageContext.request.contextPath}/link_showPage.action?currPage=1'>[首页]  </a>
			<a href='${pageContext.request.contextPath}/link_showPage.action?currPage=${link.currPage-1}'>[上一页]</a>
		</c:if>
		
		<!-- 将所有的页码展示出来 -->
		<%-- <c:forEach begin="1" end="${link.totalPage }" var="n">
			<!-- 若是当前页 不可点 -->
			<c:if test="${link.currPage == n }">
				${n }
			</c:if>
			
			<!-- 若不是当前页 可点 -->
			<c:if test="${link.currPage != n }">
				<a href="${pageContext.request.contextPath}/link_showPage.action?currPage=${n}">${n }</a>
			</c:if>
		</c:forEach> --%>
		
		<!-- 若是最后一页 尾页和下一页不展示 -->
		<c:if test="${link.currPage!=link.totalPage }">
			<a href='${pageContext.request.contextPath}/link_showPage.action?currPage=${link.currPage+1}'>[下一页]</a>
			<a href='${pageContext.request.contextPath}/link_showPage.action?currPage=${link.totalPage}'>[尾页]  </a>
		</c:if>
		第${link.currPage }页/共${link.totalPage }页
	</center>
        </tr>
      </table>
    </td>
  </tr>
</table>




<jsp:include page="bg-down.jsp" flush="true" />

</body>
</html>
