<%@ page contentType="text/html; charset=gb2312" %>
<%@page import="java.sql.*,java.util.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>�ֻ�����ϵͳ</title>
</head>
<link href="css/css.css" rel="stylesheet" type="text/css"> 
<script language="javascript">
function checkEmpty(memberForm){
for(i=0;i<memberForm.length;i++){
if(memberForm.elements[i].value==""){
alert("����Ϣ����Ϊ��");
return false;
}
}
if(document.memberForm.password.value!=document.memberForm.passwordOne.value){
window.alert("��������������벻һ�£�����������");
return false;
}
if(isNaN(document.memberForm.age.value)){
window.alert("����ֻ��Ϊ����");
return false;
}
}
</script>
<body>
<jsp:include page="fg-top.jsp" flush="true"/>
<table width="766" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#000000">
  <tr>
    <td bgcolor="#F5F5F5" align="center">
<img src="image/fg1.jpg" width="752" height="39">


<form action="memberAction.do?action=6"  onsubmit="return checkEmpty(memberForm)">
<table width="298"  border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="105" height="35">
          <div align="right">��Ա���ƣ�</div></td>
        <td width="187"><div align="center">
          <input type="hidden" name="name" value="lisi">lisi
        </div></td>
      </tr>
       <tr>
        <td height="35">
          <div align="right">ԭ�������룺</div></td>
        <td><div align="center">
           <input type="hidden" name="result" value="121212">
            <input type="hidden" name="question" value="��ļ�������?">
          <input type="hidden" name="passwordOld" value="121212">
          <input type="password" name="oldPassword">
        </div></td>
      </tr>
      <tr>
        <td height="35">
          <div align="right">��Ա���룺</div></td>
        <td><div align="center">
          <input type="password" name="password">
        </div></td>
      </tr>
      <tr>
        <td height="35">
          <div align="right">����ȷ�ϣ�</div></td>
        <td><div align="center">
          <input type="password" name="passwordOne">
        </div></td>
      </tr>
      <tr>
        <td height="35">
          <div align="right">��ʵ������</div></td>
        <td><div align="center">
          <input type="text" name="reallyName" value="lisi">
        </div></td>
      </tr>
      <tr>
        <td height="35">
          <div align="right">���䣺</div></td>
        <td><div align="center">
          <input type="text" name="age" value="23">
        </div></td>
      </tr>
      <tr>
        <td height="35">
          <div align="right">ְҵ��</div></td>
        <td><div align="center">
          <input type="text" name="profession" value="ѧ��">
        </div></td>
      </tr>
      <tr>
        <td height="35">
          <div align="right">Email��ַ��</div></td>
        <td><div align="center">
          <input name="email" type="text"  value="lisi23@126.com">
        </div></td>
      </tr>
    </table>
    <br>
<input type="image" class="input1"  src="image/save.jpg" width="51" height="20">
&nbsp;&nbsp;
<a href="#" onClick="javascript:memberForm.reset()"><img src="image/clear.gif"></a>
&nbsp;&nbsp;
<a href="#" onClick="javasrcipt:history.go(-1)"><img src="image/back.gif"></a>
</form>
  <p>&nbsp;  </p>   </td>
  </tr>
</table>
<jsp:include page="fg-down.jsp" flush="true"/>
</body>
</html>
