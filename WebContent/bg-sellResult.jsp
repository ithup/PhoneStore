<%@ page contentType="text/html; charset=gb2312" %>
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
    <td width="207" bgcolor="#F5F5F5">
    <!--���01-->
    <jsp:include page="fg-left.jsp" flush="true"/></td>
    <td width="559" valign="top" bgcolor="#FFFFFF" align="center">
    <!--�Ҳ�01-->	
	<jsp:include page="fg-goodSorts.jsp" flush="true"/>	
	
	��23��
	
	<br><br><br>
		<table width="99%"  border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolorlight="#FFFFFF" bordercolordark="#819BBC">
          <tr>
            <td width="36%" rowspan="5" height="120"><div align="center">
                <input name="pricture" type="image" src="#" width="140" height="126">
            </div></td>
            <td width="64%" height="30"><div align="center">��Ϊ��ҫ5C</div></td>
          </tr>

          <tr>
            <td height="30"><div align="center">
              �ؼۣ�1200Ԫ
             �ּۣ�77Ԫ
            </div></td>
          </tr>
          <tr>
            <td height="30"><div align="center">��Ϊ��ҫ5C�ֻ�...</div></td>
          </tr>
          <tr align="center">
            <td height="30">
              <div align="center"><a href="#" onClick="window.open('goodsAction.do?action=16&id=','','width=500,height=200');">�鿴��ϸ����</a>  
        ��¼����ܹ��� </div>
            </td>
          </tr>
        </table>
	</td>
  </tr>
</table>
<jsp:include page="fg-down.jsp" flush="true"/>
</body>
</html>