<%@ page contentType="text/html; charset=gb2312"%>
<%@page import="java.util.*"%>
<%@taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>�ֻ�����ϵͳ</title>
</head>
<link href="css/css.css" rel="stylesheet" type="text/css">
<body>
	<jsp:include page="fg-top.jsp" flush="true" />
	<table width="766" border="0" align="center" cellpadding="0"
		cellspacing="0">
		<tr>
			<td width="207" valign="top" bgcolor="#F5F5F5">
				<!--���01--> <jsp:include page="fg-left.jsp" flush="true" /></td>
			<td width="559" valign="top" bgcolor="#FFFFFF" align="center">
				<!--�Ҳ�01--> <jsp:include page="fg-goodSorts.jsp" flush="true" />
				��Ʒ�������� TOP5 <br> <br> 
				
				<C:forEach
					items="${SalesRankGoods}" var="goods" varStatus="vs">
					��${vs.count}�� 
					<table width="99%" border="1" align="center" cellpadding="0"
						cellspacing="0" bordercolor="#FFFFFF" bordercolorlight="#FFFFFF"
						bordercolordark="#819BBC">
						<tr>
							<td width="36%" rowspan="4" height="84"><div align="center">
									<input name="pricture" type="image" src="${goods.pirture}"
										width="110" height="100">
								</div></td>
							<td width="64%" height="21"><div align="center">${goods.goodsName}</div></td>
						</tr>
						<tr>
							<td height="21"><div align="center">���ۣ�${goods.nowPrice}Ԫ</div></td>
						</tr>
						<tr>
							<td height="21"><div align="center">${goods.introduce}</div></td>
						</tr>
						<tr>

							<td height="21" align="center"><a href="#"
								onClick="window.open('goods_selectOne.action?goodsId=${goods.goodsId}','','width=600,height=400');">�鿴��ϸ����</a>
								<c:if test="${empty member}">
									<a href="${pageContext.request.contextPath}/index.jsp"
										style="color: green">��¼����ܹ���</a>
								</c:if></td>
						</tr>
					</table>
				</C:forEach>
				 <br>
			</td>
		</tr>
	</table>
	<jsp:include page="fg-down.jsp" flush="true" />
</body>
</html>
