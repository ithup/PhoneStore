<%@ page contentType="text/html; charset=gb2312" %>
<%@page import="java.util.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>�ֻ�����ϵͳ</title>
</head>
<link href="css/css.css" rel="stylesheet" type="text/css"> 

<body>
<jsp:include page="fg-top.jsp" flush="true"/>
<table width="766" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="207" valign="top" bgcolor="#F5F5F5">
    <!--���01-->
    <jsp:include page="fg-left.jsp" flush="true"/></td>
    <td width="559" valign="top" bgcolor="#FFFFFF" align="center">
    	<jsp:include page="fg-goodSorts.jsp" flush="true"/>	
    <table width="546" height="42" border="0" align="center" cellpadding="0" cellspacing="0" background="image/fg_right02.jpg">
      <tr>
        <td>&nbsp;</td>
      </tr>
    </table>
 <br> 
 <table width="99%"  border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolorlight="#FFFFFF" bordercolordark="#819BBC">
		    <c:forEach items="${freeGoodsList.list}" var="goods">
		              <tr>
		                <td width="36%" rowspan="5" height="120"><div align="center">
		                  <input name="pricture" type="image" src="${goods.pirture}" width="140" height="126">
		                </div></td>
		                <td width="64%" height="30"><div align="center">${goods.goodsName}</div></td>
		              </tr>
		              <tr>
		                <td height="30"><div align="center" style="text-decoration:line-through;color:#FF0000">ԭ�ۣ�${goods.nowPrice}</div></td>
		              </tr>
					     <tr>
		                <td height="30"><div align="center">�ؼۣ�${goods.freePrice}</div></td>
		              </tr>
		              <tr>
		                <td height="30"><div align="center">${goods.introduce}</div></td>
		              </tr>
		              <tr>
		               <td height="30" align="center"> 
		               <a href="#" onClick="window.open('goods_selectOne.action?goodsId=${goods.goodsId}','','width=600,height=400');">�鿴��ϸ����</a>				
			                <c:if test="${empty member}">
			                	 <a href="${pageContext.request.contextPath}/index.jsp" style="color:green">��¼����ܹ���</a>
			                 </c:if>
					  </td>
		              </tr>
              </c:forEach>
           </table>
			<br>
        
		    <div align="center">
		      <table width="90%"  border="0" align="center" cellpadding="0" cellspacing="0">
                <tr align="center">
           		<td>
           			<center>
						<!-- ���ǵ�һҳ ��ҳ����һҳ��չʾ -->
						<c:if test="${freeGoodsList.currPage!=1 }">
							<a href='${pageContext.request.contextPath}/goods_selectFreePage.action?currPage=1'>[��ҳ]  </a>
							<a href='${pageContext.request.contextPath}/goods_selectFreePage.action?currPage=${freeGoodsList.currPage-1}'>[��һҳ]</a>
						</c:if>
						<!-- �������һҳ βҳ����һҳ��չʾ -->
						<c:if test="${freeGoodsList.currPage!=freeGoodsList.totalPage }">
							<a href='${pageContext.request.contextPath}/goods_selectFreePage.action?currPage=${freeGoodsList.currPage+1}'>[��һҳ]</a>
							<a href='${pageContext.request.contextPath}/goods_selectFreePage.action?currPage=${freeGoodsList.totalPage}'>[βҳ]  </a>
						</c:if>
						��${freeGoodsList.currPage }ҳ/��${freeGoodsList.totalPage }ҳ
					</center>
           		</td>
                <td width="14%"><div align="center"><a href="#" onClick="javasrcipt:history.go(-1);">����</a></div></td>
                </tr>
				
              </table>	
              </td>
  </tr>
</table>
<jsp:include page="fg-down.jsp" flush="true"/>
</body>
</html>
