<%@ page contentType="text/html; charset=gb2312" %>
<%@page import="java.util.*"%>
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
    <!--�Ҳ�01-->	
	<jsp:include page="fg-goodSorts.jsp" flush="true"/>	
	��Ʒ�������� TOP5
	<br><br>
        ��1��
		<table width="99%"  border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolorlight="#FFFFFF" bordercolordark="#819BBC">
          <tr>
            <td width="36%" rowspan="4" height="84"><div align="center">
                <input name="pricture" type="image" src="goodsPicture/huawei/1492255388853.jpg" width="110" height="100">
            </div></td>
            <td width="64%" height="21"><div align="center">��Ϊ��ҫ5C</div></td>
          </tr>
          <tr>
            <td height="21"><div align="center">���ۣ�1984Ԫ</div></td>
          </tr>
          <tr>
            <td height="21"><div align="center">�˿��ֻ����ܷǳ��࣬����...</div></td>
          </tr>
          <tr>
          
            <td height="21" align="center"> 
			<a href="#" onClick="window.open('goodsAction.do?action=16&id=','','width=500,height=200');">�鿴��ϸ����</a>
           ��¼����ܹ���</td>
          </tr>
        </table><br>
	</td>
  </tr>
</table>
<jsp:include page="fg-down.jsp" flush="true"/>
</body>
</html>
