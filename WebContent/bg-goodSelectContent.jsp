<%@ page contentType="text/html; charset=gb2312"%>
<%@page import="java.sql.*,java.util.*"%>
<script language="javascript">
function checkEmpty(form){
for(i=0;i<form.length;i++){
if(form.elements[i].value==""){
alert("����Ϣ����Ϊ��");
return false;
}
}
}
</script>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>�ֻ�����ϵͳ</title>
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
            <td><div align="center"><strong>�鿴��Ʒ����ϸ���</strong></div></td>
          </tr>
        </table>
        <br>
		      <table width="90%" height="209"  border="1" cellpadding="1" cellspacing="1" bordercolor="#FFFFFF" bgcolor="#CCCCCC">
          <tr>
            <td width="20%" height="26">&nbsp;&nbsp;���������</td>
            <td width="31%" bgcolor="#FFFFFF">&nbsp;&nbsp;��Ϊ</td>
            <td width="20%">&nbsp;&nbsp;������С���</td>
            <td width="31%" bgcolor="#FFFFFF">&nbsp;&nbsp;��Ϊ�ֻ�</td>
          </tr>
          <tr>
            <td height="26">&nbsp;&nbsp;��Ʒ����</td>
            <td bgcolor="#FFFFFF">&nbsp;&nbsp;��Ϊ��ҫ5C</td>
            <td>&nbsp;&nbsp;��������</td>
            <td bgcolor="#FFFFFF">&nbsp;&nbsp;��Ϊ</td>
          </tr>
          <tr>
            <td height="26">&nbsp;&nbsp;��Ʒ����</td>
            <td bgcolor="#FFFFFF">&nbsp;&nbsp;2233Ԫ</td>
            <td>&nbsp;&nbsp;�ؼ�</td>
            <td bgcolor="#FFFFFF">&nbsp;&nbsp;1233Ԫ</td>
          </tr>
          <tr>
            <td height="26">&nbsp;&nbsp;��Ʒ���</td>
            <td colspan="3" bgcolor="#FFFFFF">&nbsp;&nbsp;��Ϊ��ҫ5C�ֻ��ܺ�...</td>
          </tr>
          <tr>
            <td height="79">&nbsp;&nbsp;��ƷͼƬ</td>
            <td colspan="3" bgcolor="#FFFFFF">&nbsp;&nbsp;
            <input name="imageField" type="image" src="goodsPicture/huawei/1492255388853.jpg" width="140" height="126"></td>
          </tr>
      </table>
        <table width="90%"  border="0" cellspacing="0" cellpadding="0">
          <tr> 
            <td width="65%" height="29" align="right">			
			  
			<a href="goodsAction.do?action=11&id= &mark=0">ɾ���ؼ���Ϣ</a>
 
			&nbsp;&nbsp;</td>
           
		    <td width="22%" align="right">
                        
              <a href="bg-goodsFreePirce.jsp">�����ؼ���Ʒ</a>
 
              <a href="bg-goodsFreePirce.jsp">�����ؼ���Ʒ</a>
           
&nbsp;&nbsp;</td>
            <td width="13%"> <a href="javascript:history.back();">����</a></td>
          </tr>
        </table>
    </td>
  </tr>
</table>
<jsp:include page="bg-down.jsp" flush="true" />
</body>
</html>
