<%@ page contentType="text/html; charset=gb2312"%>
<%@page import="java.sql.*,java.util.*"%>
 <script Language="JavaScript">
 function deleteManager(date) {
  if(confirm("ȷ��Ҫɾ����")){
    window.location="managerAction.do?action=4&id="+date;
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
            <td><div align="center"><strong>����Ա��Ϣ�Ĳ�ѯ</strong></div></td>
          </tr>
        </table>
        <br>
	 <table width="90%"  border="0" cellspacing="0" cellpadding="0">
            <tr>
          <td width="20%" height="20" colspan="4"><div align="right"><a href="bg-managerUpdatePassword.jsp">�޸���������</a>&nbsp;&nbsp;&nbsp;</div></td>
        <tr>
      </table>
	    <table width="90%"  border="1" cellpadding="1" cellspacing="1" bordercolor="#FFFFFF" bgcolor="#CCCCCC">    
	    <tr>
          <td width="20%" height="25"><div align="center">���ݱ��</div></td>
          <td width="20%"><div align="center">����Ա�û���</div></td>
          <td width="20%"><div align="center">����Ա����</div></td>
          <td width="44%"><div align="center">����</div></td>
        </tr>

        <tr bgcolor="#FFFFFF">
          <td height="30"><div align="center">3</div></td>
          <td><div align="center">admin</div></td>
          <td><div align="center">����</div></td>
          <td><div align="center">

         <a href="javascript:deleteManager(' ')">ɾ��</a> 
ɾ��
          </div></td>
        </tr>
	
      </table><br>
	   <table width="90%"  border="0" align="center" cellpadding="0" cellspacing="0">
   <tr align="center">
    <td width="13%">��Ϊ4ҳ</td>
			<td width="16%">����33����¼</td>
            <td width="14%">��ǰΪ��2ҳ</td>
    <td width="19%">��һҳ<a href="managerAction.do?action=1&i=">��һҳ</a></td>
            <td width="18%">��һҳ<a href="managerAction.do?action=1&i=">��һҳ</a></td>

			<td width="20%">	<div align="right"><a href="bg-managerInsert.jsp">��ӹ���Ա</a>&nbsp;&nbsp;&nbsp;&nbsp;</div>
	</td>

   </tr>
 </table>  
 
 <%
if(request.getAttribute("reslut")!=null){
%>
<P align="center"><%=request.getAttribute("reslut")%></P>
<%}%>	

 		
</table>		
<jsp:include page="bg-down.jsp" flush="true" />
</body>
</html>
