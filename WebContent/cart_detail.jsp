<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>手机销售系统</title>
</head>
 <link href="css/css.css" rel="stylesheet" type="text/css">
<body>

<jsp:include page="fg-top.jsp" flush="true"/>
<table width="766" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="207" bgcolor="#F5F5F5">
    <!--左侧01-->
    <jsp:include page="fg-left.jsp" flush="true"/></td>
    <td width="559" valign="top" bgcolor="#FFFFFF" align="center">
    <!--右侧01-->	
	<jsp:include page="fg-goodSorts.jsp" flush="true"/>	
	
	<br><br>
	<strong>订单查看</strong>
	 <br>	 <br>	 <br>
            
    
 

	<table width="95%"  border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolorlight="#FFFFFF" bordercolordark="#819BBC">

         <tr align="center">
            <td width="" height="21">编号</td>
            <td width="15%" height="21">收货人</td>
            <td width="15%">电话</td>
            <td width="21%">地址</td>
            <td width="19%">订货时间</td>
            <td width="18%">是否付款</td> 
            <td width="12%">操作</td>
          </tr>
    	<c:forEach items="${pb.list}" var="order">
          <tr align="center">
            <td height="24">${order.orderNumber}</td>
            <td height="24">${order.contacterName}</td>
            <td>${order.tel}</td>
            <td>${order.address}</td>
            <td>${order.createTime}</td>
            <td>
                ${order.sign}
            </td>
             <td><a href="#">查看明细</a></td>
          </tr>
		</c:forEach>
		<tr>
        		<center>
		<!-- 若是第一页 首页和上一页不展示 -->
		<c:if test="${pb.currPage!=1 }">
			<a href='${pageContext.request.contextPath}/order_findAllByPage.action?currPage=1'>[首页]  </a>
			<a href='${pageContext.request.contextPath}/order_findAllByPage.action?currPage=${pb.currPage-1}'>[上一页]</a>
		</c:if>
		<!-- 若是最后一页 尾页和下一页不展示 -->
		<c:if test="${pb.currPage!=pb.totalPage }">
			<a href='${pageContext.request.contextPath}/order_findAllByPage.action?currPage=${pb.currPage+1}'>[下一页]</a>
			<a href='${pageContext.request.contextPath}/order_findAllByPage.action?currPage=${pb.totalPage}'>[尾页]  </a>
		</c:if>
		第${pb.currPage }页/共${pb.totalPage }页
	</center>
        </tr>
     </table>
      <!-- <div align="center">
		   <br>
	      <br>
	      订货明细查询
	      <br>
<br>

      <table width="89%"  border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolorlight="#FFFFFF" bordercolordark="#819BBC">

	        <tr align="center">
	          <td width="25%" height="21">编号</td>
	          <td width="24%">商品名称</td>
	          <td width="28%">商品价格</td>
	          <td width="23%">商品数量</td>
	        </tr>  
	        <tr  align="center" >
	          <td height="21">1111</td>
	          <td>华为荣耀5C></td>
	          <td>2334元</td>
	          <td>23</td>
	        </tr>
      </table>

      <table width="89%"  border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="24"><div align="right">总金额：2333元</div></td>
        </tr>
      </table> 
      </div>-->
 </td>
 </tr>
</table>

<jsp:include page="fg-down.jsp" flush="true"/>

</body>
</html>
