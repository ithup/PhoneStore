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
    <div align="center">
        <br>
        <img src="image/fg_right02.jpg">
    </div>
    <table width="100%"  border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolorlight="#FFFFFF" bordercolordark="#819BBC">
        <tr> 
		 
            <td valign="top">
            <table width="257" height="136" border="1" align="center" cellpadding="1" cellspacing="1" bordercolor="#FFFFFF" bgcolor="#999999">
              <tr>
                <td width="33%" height="80" rowspan="5" bgcolor="#FFFFFF"><input name="pricture" type="image" src="goodsPicture/zte/1492257114334.jpg" width="140" height="126"></td>
                <td width="67%" height="20" bgcolor="#FFFFFF"><div align="center">���˺�ţ8</div></td>
              </tr>
              <tr>
                <td height="20" bgcolor="#FFFFFF"><div align="center" style="text-decoration:line-through;color:#910402">ԭ�ۣ�4333Ԫ</div></td>
              </tr>
              <tr>
                <td height="20" bgcolor="#FFFFFF"><div align="center"><font color="#F14D83">�ּۣ�3000Ԫ</font></div></td>
              </tr>
              <tr>
                <td height="20" bgcolor="#FFFFFF"><div align="center">���˺�ţ8��һ��ǳ��õ��ֻ������ܷǳ�ǿ��...</div></td>
              </tr>
              <tr>
                <td height="13" bgcolor="#FFFFFF"><div align="center" class="linkBlack"><a href="#" onClick="window.open('fg-goodSelectOne.jsp','','width=600,height=400');">�鿴��ϸ����</a></div></td>
              </tr>
            </table></td>
        </tr>
</table>
<div align="center">
    <img src="image/fg_right01.jpg">
</div>
<table width="100%"  border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td height="215" valign="top">
        <table width="100%"  border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td><table width="99%"  border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#CCCCCC"   >
                  <tr>
                    <td height="150" bordercolor="#666666" >
                      <table width="96%"  border="1" align="center" cellpadding="1" cellspacing="1" bordercolor="#FFFFFF" bgcolor="#CCCCCC" >
                        <tr>
                          <td width="36%" rowspan="4" bgcolor="#FFFFFF"><div align="center">
                              <input name="pricture" type="image" src="goodsPicture/huawei/1492255388853.jpg" width="110" height="100">
                          </div></td>
                          <td width="64%" bgcolor="#FFFFFF"><div align="center">��Ϊ��ҫ4C</div></td>
                        </tr>
                        <tr>
                          <td bgcolor="#FFFFFF"><div align="center"><font color="#F14D83">���ۣ�3455Ԫ</font></div></td>
                        </tr>
                        <tr>
                          <td bgcolor="#FFFFFF"><div align="center">��Ʒ����</div></td>
                        </tr>
                        <tr>
                          <td  bgcolor="#FFFFFF" class="linkBlack"  align="center">
                             
                              <a href="#" onClick="window.open('fg-goodSelectOne.jsp','','width=600,height=400');">�鿴��ϸ����</a>
                              
                           ��¼����ܹ���</td>
                      
                        </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table>
			</td>
			 
		       
          </tr>
</table>

</td>
  </tr>
</table>

	<jsp:include page="fg-down.jsp" flush="true"/>

</body>
</html>
