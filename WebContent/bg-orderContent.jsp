<%@ page contentType="text/html; charset=gb2312"%>
<%@page import="java.sql.*,java.util.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>手机销售系统</title>
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
            <td align="center"><strong>订单号为：20170823033的详细信息</strong></td>
          </tr>
        </table>
        <br>

<table width="76%"  border="1" cellpadding="1" cellspacing="1" bordercolor="#FFFFFF" bgcolor="#DCDCDC">
      <tr align="center" >
        <td width="26%" height="25">会员账号</td>
        <td width="22%" bgcolor="#FFFFFF">yf0001</td>
        <td width="26%">会员姓名</td>
        <td width="22%" bgcolor="#FFFFFF">张三</td>
      </tr>
      <tr  align="center">
        <td height="25">送货电话</td>
        <td bgcolor="#FFFFFF">13454656</td>
        <td>送货地址</td>
        <td bgcolor="#FFFFFF">江西南昌XXXXX</td>
      </tr>
      <tr  align="center">
        <td height="25">付款方式</td>
        <td bgcolor="#FFFFFF">微信</td>
        <td>运送方式</td>
        <td bgcolor="#FFFFFF">EMS</td>
      </tr>
      <tr align="center">
        <td height="25" >备注信息</td>
        <td bgcolor="#FFFFFF">注意保存好物品。</td>
        <td>订货时间</td>
        <td bgcolor="#FFFFFF">2017.8.33</td>
      </tr>
    </table>
	<br>
	    <strong>商品详细信息</strong>	  <br><br>
	    <table width="74%"  border="1" cellpadding="1" cellspacing="1" bordercolor="#FFFFFF" bgcolor="#DCDCDC">
          <tr>
            <td><div align="center">商品名称</div></td>
            <td><div align="center">商品数量</div></td>
            <td><div align="center">商品价格</div></td>
          </tr>

          <tr bgcolor="#FFFFFF">
            <td><div align="center">手机</div></td>
            <td><div align="center">33</div></td>
            <td><div align="center">2332元</div></td>
          </tr> 
      </table>
	    <br>
    总金额:3213213<br>
    <table width="76%" height="19"  border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="72%">
              <div align="left">
              
                已经出货
             
                没有出货
              
              </div></td><td width="28%"><div align="right"><a href="javascript:history.go(-1)">返回</a></div></td>
      </tr>
    </table>



    </td>
  </tr>
</table>

<jsp:include page="bg-down.jsp" flush="true" />

</body>
</html>
