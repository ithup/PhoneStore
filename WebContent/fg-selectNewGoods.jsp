<%@ page contentType="text/html; charset=gb2312" %>
<%@page import="java.sql.*,java.util.*"%>
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
    <td width="559" valign="top" bgcolor="#FFFFFF">
    <!--�Ҳ�01-->	
	<jsp:include page="fg-goodSorts.jsp" flush="true"/>	
	
	<table width="546" height="42" border="0" align="center" cellpadding="0" cellspacing="0" background="image/fg_right01.jpg">
  <tr>
    <td>&nbsp;	</td>
    </tr>
</table>
			 <br> <table width="99%" height="100"  border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolorlight="#FFFFFF" bordercolordark="#819BBC">

              <tr>
                <td width="36%" rowspan="4" height="120"><div align="center">
                  <input name="pricture" type="image" src="goodsPicture/huawei/1492255388853.jpg" width="140" height="110">
                </div></td>
                <td width="64%" height="30"><div align="center">����23</div></td>
              </tr>
              <tr>
                <td height="30"><div align="center">���ۣ�3400Ԫ</div></td>
              </tr>
              <tr>
                <td height="30"><div align="center">����23�ܺ���....</div></td>
              </tr>
              <tr>
                <td height="30"><div align="center"> 
               <a href="#" onClick="window.open('fg-goodSelectOne.jsp','','width=600,height=400');">�鿴��ϸ����</a></div>
			    <div align="center">��¼����ܹ���</div></td>
              </tr>
            </table>
			<br>
            <table width="99%"  border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td><div align="right"><a href="#" onClick="javasrcipt:history.go(-1);">����</a></div></td>
              </tr>
            </table>
	</td>
  </tr>
</table>
<jsp:include page="fg-down.jsp" flush="true"/>
</body>
</html>
