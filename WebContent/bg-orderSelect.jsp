<%@ page contentType="text/html; charset=gb2312"%>
<%@page import="java.sql.*,java.util.*"%>
 <script Language="JavaScript">
 function deleteOrder(date) {
  if(confirm("ȷ��Ҫɾ����")){
    window.location="orderAction.do?action=2&number="+date;
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
    <td width="618" align="center" valign="top" bgcolor="#FFFFFF">
	
	
	
<br>
	

	<table width="610" height="25" border="0" cellpadding="0" cellspacing="0" background="image/bg_02.jpg">
      <tr>
        <td><div align="center"><strong>�����Ĳ�ѯ</strong></div></td>
      </tr>
    </table>	<br>
	    <table width="96%"  border="1" cellpadding="1" cellspacing="1" bordercolor="#FFFFFF" bgcolor="CCCCCC">

	    <tr bgcolor="#DCDCDC">
          <td width="15%" height="25"><div align="center">���</div></td>
          <td width="14%"><div align="center">��ʵ����</div></td>

         <td width="16%"><div align="center">�Ƿ����</div></td>
        <td width="26%"><div align="center">����ʱ��</div></td>
   <td width="29%"><div align="center">����</div></td>
        </tr>
    
        <tr align="center" bgcolor="#FFFFFF">
          <td height="25">232</td>
          <td>����</td>

		  <td>
                    <a href="orderAction.do?action=0&sign=">��</a>
                  
                    <a href="orderAction.do?action=0&sign=">��</a>
         </td>
		  <td>2017-09-07 22:41:51</td>
        <td><a href="bg-orderContent.jsp">��ϸ��Ϣ</a>
                             &nbsp;&nbsp;
	  
		 �ѳ�
		 
		  <a href="orderAction.do?action=1&number=">����</a>
		
		  <a href="orderAction.do?action=1&sign=&number=">����</a>
	
		 &nbsp;&nbsp;

		 <a href="javascript:deleteOrder('')">ɾ��</a></td>
        </tr>
  
      </table><br>

  <table width="96%"  border="0" align="center" cellpadding="0" cellspacing="0">
    <tr align="center">
    <td width="17%">��Ϊ4ҳ</td>
    <td width="22%">����23����¼</td>
    <td width="26%">��ǰΪ��2ҳ</td>
    <td width="19%">��һҳ<a href="orderAction.do?action=0&i=">��һҳ</a></td>
    <td width="16%">��һҳ<a href="orderAction.do?action=0&i=">��һҳ</a></td>
   </tr>
 </table>

 <table width="96%"  border="0" align="center" cellpadding="0" cellspacing="0">
    <tr align="center">
    <td width="14%">��Ϊ4ҳ</td>
    <td width="18%">����34����¼</td>
    <td width="22%">��ǰΪ��3ҳ</td>
    <td width="16%">��һҳ<a href="orderAction.do?action=0&i=&sign=">��һҳ</a></td>
    <td width="12%">��һҳ<a href="orderAction.do?action=0&i=&sign=">��һҳ</a></td>
    <td width="18%"><a href="orderAction.do?action=0">����</a></td>
   </tr>
 </table>

</td>
  </tr>
</table><jsp:include page="bg-down.jsp" flush="true" />

</body>
</html>
