<%@ page contentType="text/html; charset=gb2312"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>手机销售系统</title>
<script type="text/javascript">
	function deleteCartGoods(data){
		if(confirm("确定要删除吗？")){
			window.location="${pageContext.request.contextPath}/cart_remove.action?gid="+data;
		}
	}
</script>
</head>
<link href="css/css.css" rel="stylesheet" type="text/css">
<body>

	<jsp:include page="fg-top.jsp" flush="true" />
	<table width="766" border="0" align="center" cellpadding="0"
		cellspacing="0">
		<tr>
			<td width="207" bgcolor="#F5F5F5">
				<!--左侧01--> <jsp:include page="fg-left.jsp" flush="true" />
			</td>
			<td width="559" valign="top" bgcolor="#FFFFFF" align="center">
				<!--右侧01--> <jsp:include page="fg-goodSorts.jsp" flush="true" /> <br>
			    <br> <strong>我的购物车</strong>
				<div align="center">
					<br> 
					<c:if test="${empty cart.map}">购物车空空！！！<br><br><br><br><br>
						<a href="index.jsp" style="color:red"><strong>去购物</strong></a> 
					</c:if>
				</div>
				<c:if test="${not empty cart.map }">
				 <form method="post" action="cart_modify.jsp" name="form">
						<table width="92%" border="1" align="center" cellpadding="0"
							cellspacing="0" bordercolor="#FFFFFF" bordercolordark="#819BBC"
							bordercolorlight="#FFFFFF">
							<tr>
								<td width="16%" height="28"><div align="center">序号</div></td>
								<td width="23%"><div align="center">商品的名称</div></td>
								<td width="22%"><div align="center">商品价格</div></td>
								<td width="22%"><div align="center">购买数量</div></td>
								<td width="17%"><div align="center">总金额</div></td>
								<td width="17%"><div align="center">操作</div></td>
							</tr>
						   <c:forEach items="${cart.cartGoods}" var="goods">
								<tr>
									<td height="28"><div align="center">${goods.goods.goodsId}</div></td>
									<td><div align="center">${goods.goods.goodsName}</div></td>
									<td><div align="center">${goods.goods.freePrice}元</div></td>
									<td><div align="center">
											<input name="num" size="7" type="text" value="${goods.count}"
												onBlur="check(this.form)">
										</div></td>
									<td><div align="center">${goods.subtotal}元</div></td>
									<td><div align="center"><a href="javascript:deleteCartGoods(${goods.goods.goodsId})">删除</a></div></td>
								</tr>
							</c:forEach>
						</table>
					</form> 
	
						<table width="100%" height="52" border="0" align="center"
							cellpadding="0" cellspacing="0">
							<tr align="center" valign="middle">
								<td height="10">&nbsp;</td>
								<td width="24%" height="10" colspan="-3" align="left">&nbsp;</td>
							</tr>
							<tr align="center" valign="middle">
								<td height="21" class="tableBorder_B1">&nbsp;</td>
								<td height="21" colspan="-3" align="left">合计总金额：￥${cart.total}</td>
							</tr>
							<tr align="center" valign="middle">
								<td height="21" colspan="2"><a href="index.jsp">继续购物</a> | <a
									href="${pageContext.request.contextPath}/order_add.action">去收银台结账</a> | <a href="cart_clear.jsp">清空购物车</a>
									| <a href="#">修改数量</a></td>
							</tr>
						</table>
				</c:if>
				
			</td>
		</tr>
	</table>
	<jsp:include page="fg-down.jsp" flush="true" />

</body>
</html>
