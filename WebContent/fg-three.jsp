<%@ page contentType="text/html; charset=gb2312" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>�ֻ�����ϵͳ</title>
</head>
 <link href="css/css.css" rel="stylesheet" type="text/css"> 
<script language="javascript">
function checkEmpty(form){
for(i=0;i<form.length;i++){
if(form.elements[i].value==""){
alert("����Ϣ����Ϊ��");
return false;
}
}
if(document.form.password.value!=document.form.passwordOne.value){
window.alert("��������������벻һ�£�����������");
return false;
}
}
</script>
<body>
<jsp:include page="fg-top.jsp" flush="true"/>
<table width="766" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#000000">
  <tr>
    <td bgcolor="#FFFFFF" align="center">
<img src="image/fg2.jpg" width="752" height="45">

 <p><strong>�𰸲���ȷ,���������룡����</strong></p>
 <meta http-equiv="refresh" content="3;URL=fg-Two.jsp">
  <p><strong>����������</strong></p>
  <form name="form" method="post" action="fg-four.jsp?id=" onSubmit="return checkEmpty(form)">
    <table width="298"  border="0" cellspacing="0" cellpadding="0" bordercolor="#FFFFFF" bordercolordark="#819BBC" bordercolorlight="#FFFFFF">
      <tr>
        <td width="105" height="35">
          <div align="right">�������µ����룺</div></td>
        <td width="187"><div align="center">
          <input type="password" name="password">
        </div></td>
      </tr>
       <tr>
        <td width="105" height="35">
          <div align="right">ȷ�����룺</div></td>
        <td width="187"><div align="center">
                 <input type="password" name="passwordOne">
        </div></td>
      </tr>
    </table>
    <br>
     <input type="image" class="input1"  src="image/save.jpg" width="51" height="20">
&nbsp;&nbsp;
      <a href="#" onClick="javascript:form.reset()"><img src="image/clear.gif"></a>
&nbsp;&nbsp;
      <a href="#" onClick="javasrcipt:history.go(-1)"><img src="image/back.gif"></a>
  </form>
   </td>
  </tr>
</table>
<jsp:include page="fg-down.jsp" flush="true"/>
</body>
</html>
