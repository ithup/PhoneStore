<%@ page contentType="text/html; charset=gb2312" %>
<%@page import="java.sql.*,java.util.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>�ֻ�����ϵͳ</title>
</head>
<link href="css/css.css" rel="stylesheet" type="text/css"> 
<script type="text/javascript" src="js/jquery-1.11.0.js" ></script>
	<script type="text/javascript" src="js/jquery.validate.js" ></script>
	<script type="text/javascript" src="js/messages_zh.js" ></script>
	<script>
		$(function(){
			$("#formid").validate({
				rules:{
					memberName:"required",
					password:{
						rangelength:[3,6],
						required:true
					},
					repassword:{
						equalTo:"#password"
					},
					email:"email",
					sex:"required"
				},
				messages:{
					memberName:"�û�������Ϊ��",
					password:{
						rangelength:"���볤����{0}~{1}֮��",
						required:"���벻��Ϊ��"
					}
				}
			});
		})
	</script>
<body>
<jsp:include page="fg-top.jsp" flush="true"/>
<table width="766" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#000000">
  <tr>
    <td bgcolor="#F5F5F5" align="center">
<img src="image/fg1.jpg" width="752" height="39">
<form action="member_register.action" method="post" id="formid">
<table width="270"  border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="107" height="35">
          <div align="right">��Ա���ƣ�</div></td>
        <td width="163">
            <div align="left">
             <input type="text"  name="memberName"/>
          </div></td></tr>
      <tr>
        <td height="35">          
          <div align="right">��Ա���룺</div></td>
        <td>
            <div align="left">
            <input type="password"  name="password" id="password"/>
          </div></td></tr>
      <tr>
        <td height="35">
          <div align="right">����ȷ�ϣ�</div></td>
        <td>
            <div align="left">
              <input type="password" name="repassword">
          </div></td></tr>
      <tr>
        <td height="35">
          <div align="right">��ʵ������</div></td>
        <td>
            <div align="left">
            <input type="text"  name="reallyName"/>
          </div></td></tr>
      <tr>
        <td height="35">
          <div align="right">���䣺</div></td>
        <td>
            <div align="left">
              <input type="text"  name="age"/>          
          </div></td></tr>
      <tr>
        <td height="35">
          <div align="right">ְҵ��</div></td>
        <td>
            <div align="left">
            <input type="text"  name="profession"/>
          </div></td></tr>
      <tr>
        <td height="35">
          <div align="right">Email��ַ��</div></td>
        <td>
            <div align="left">
             <input type="text"  name="email"/>
          </div></td></tr>
      <tr>
        <td height="35">
          <div align="right">�һ��������⣺</div></td>
        <td>
            <div align="left">
               <input type="text"  name="question"/>
          </div></td></tr>
      <tr>
        <td height="35">
          <div align="right">�𰸣�</div></td>
        <td>
            <div align="left">
               <input type="text"  name="result"/>
          </div></td></tr>
    </table>
    <br>
<input type="image" class="input1"  src="image/save.jpg" width="51" height="20">
&nbsp;&nbsp;
<a href="#" onClick="javascript:memberForm.reset()"><img src="image/clear.gif"></a>
&nbsp;&nbsp;
<a href="#" onClick="javasrcipt:history.go(-1)"><img src="image/back.gif"></a>
</form>
  <p>&nbsp;  </p>    </td>
  </tr>
</table>
<jsp:include page="fg-down.jsp" flush="true"/>
</body>
</html>
