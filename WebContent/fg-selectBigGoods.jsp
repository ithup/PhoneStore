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
    <td width="207" bgcolor="#F5F5F5">
    <!--���01-->
    <jsp:include page="fg-left.jsp" flush="true"/></td>
    <td width="559" valign="top" bgcolor="#FFFFFF">
    <!--�Ҳ�01-->	
	<jsp:include page="fg-goodSorts.jsp" flush="true"/>	

<br>
		<table width="67%"  border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolorlight="#FFFFFF" bordercolordark="#819BBC">
          <tr>
            <td width="36%" rowspan="4" height="120"><input name="pricture" type="image" src="goodsPicture/huawei/1492255388853.jpg" width="140" height="126"></td>
            <td width="64%" height="30"><div align="center">��Ϊ��ҫ5C</div></td>
          </tr>
          <tr>
            <td height="30"><div align="center">
          
              ���ۣ�2333Ԫ
           
             <font color="#FF0000"> �ؼۣ�1222Ԫ</font>
           
            </div></td>
          </tr>
          <tr>
            <td height="30"><div align="center">��Ϊ��ҫ5C...</div></td>
          </tr>
          <tr>
            <td height="30"> <div align="center">  
              <a href="#" onClick="window.open('fg-goodSelectOne.jsp','','width=600,height=400');">�鿴��ϸ����</a>

				   ��¼����ܹ���

			    </div></td>
          </tr>
        </table>
		<br>
        <table width="90%"  border="0" align="center" cellpadding="0" cellspacing="0">
          <tr align="center">
            <td width="13%">��Ϊ5ҳ</td>
            <td width="16%">����22����¼</td>
            <td width="14%">��ǰΪ��1ҳ</td>
            <td width="19%">
      ��һҳ
       
        <a href="goodsAction.do?action=12&big=&i=">��һҳ</a></td>
       
            <td width="18%">
      ��һҳ
       
        <a href="goodsAction.do?action=12&big=&i=">��һҳ</a></td>
          </tr>
        </table>
	</td>
  </tr>
</table>
<jsp:include page="fg-down.jsp" flush="true"/>
</body>
</html>
