<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>

<html>
<head>
 <link href="../css/css.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>��¼���</title>
</head>

<body>
<%if(request.getAttribute("result")==null){%>
  <%
    session.setAttribute("manager",request.getAttribute("manager"));
  %>
	<script language=javascript>window.location.href='bg-orderSelect.jsp';</script>
	<%}else{%>
	<script language='javascript'>alert('<%=request.getAttribute("result")%>');history.go(-1);</script>
	<%}%>
</body>
</html>
