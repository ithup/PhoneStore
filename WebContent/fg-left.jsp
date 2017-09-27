<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.util.*"  errorPage="" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
<title>手机销售系统</title>
</head>
<script language="javascript">
function checkEmpty(form){
for(i=0;i<form.length;i++){
if(form.elements[i].value==""){
alert("表单信息不能为空");
return false;
}
}
}
function quit() {
  if(confirm("没有要买的东西了吗？")){
    window.location.href="loginOut.jsp";
	}
  }
</script>
<body>
<!--左侧01-->
	<c:if test="${empty member}">
	<table width="100%" height="138"  border="0" cellpadding="0" cellspacing="0" background="image/fg_left01.jpg">
      <tr>
        <td valign="top"><table width="100%"  border="0" cellpadding="0" cellspacing="0">
		 <tr>
            <td height="16">&nbsp;</td>
          </tr>
        </table>
        <form name="form" method="post" action="member_login.action" onSubmit="return checkEmpty(form)">
          <table width="185" border="0" align="center">
            <tr>
              <td width="60" height="25">用户名：</td>
              <td width="115"> <input name="memberName" type="text" size="17"></td>
            </tr>
            <tr>
              <td height="25">密&nbsp;&nbsp;码：</td>
              <td><input name="password" type="password" size="17"></td>
            </tr>
			 <tr>
              <td height="26"><input type="image" class="input1"  src="image/fg-land.gif" width="51" height="20"></td>
              <td height="26">  &nbsp;&nbsp;<a href="fg-memberRegister.jsp">注册</a>&nbsp;&nbsp;<a href="fg-One.jsp">找回密码？</a></td>
			 </tr>	  
          </table>
		  </form>
		  </td>
      </tr>
    </table>
    </c:if>
	<c:if test="${not empty member }">
		<table width="100%" height="138"  border="0" cellpadding="0" cellspacing="0" background="image/fg_left01.jpg">
	      <tr>
	        <td valign="top"><table width="100%"  border="0" cellpadding="0" cellspacing="0">
			 <tr>
	            <td height="30">&nbsp;</td>
	          </tr>
	        </table>
	       
	          <table width="167" border="0" align="center">
	            <tr>
	              <td width="161" height="25"><font color="#FB6801"><b>${member.memberName}</b>,</font>欢迎回来</td>
	              </tr>
	            <tr>
	              <td height="25"> <%=new Date().toLocaleString()%></td>
	              </tr>
				 <tr>
	              <td height="25" >会员姓名：${member.reallyName}</td>
	              </tr>	 
				  <tr>
	              <td height="20" align="right" valign="middle"><a href="javascript:quit()">安全退出</a></td>
	              </tr>	
	          </table>
		  </td>
	     </tr>
	    </table>
	</c:if>
	<!--左侧02-->		
        <table width="100%" height="194" border="0" background="image/fg_left02.jpg">
          <tr>
            <td valign="top"><table width="150" border="0">
              <tr>
                <td height="32">&nbsp;</td>
              </tr>
            </table>
              <table width="179" border="0" align="center">
                <tr>
                  <td width="171" height="143" ><font color="red">
				  <marquee direction="up" height="114" onmouseout="this.start()" 
             onmouseover="this.stop()" scrollAmount="1" scrollDelay="1">	  
		           
						<img src="image/sign.gif">&nbsp;<a href="#" onClick="window.open('fg-afficheSelect.jsp?id=','','width=700,height=360');">好消息！2017年国庆期间本商城所有的华为手机打8折。
</a><br><br>
<img src="image/sign.gif">&nbsp;<a href="#" onClick="window.open('fg-afficheSelect.jsp?id=','','width=700,height=360');">关于2017年国庆期间商场活动通知
</a><br><br>
					
            </marquee></font>			      </td>
                </tr>
              </table></td>
          </tr>
        </table>	
	    <table width="100%" height="193" border="0" cellpadding="0" cellspacing="0" background="image/fg_left03.jpg">
          <tr>
            <td valign="top"><table width="194" border="0">
              <tr>
                <td height="40">&nbsp;</td>
              </tr>
            </table>          
		
			  <table width="178" height="19" border="0" align="center" cellpadding="0" cellspacing="0" background="image/fg_left04.jpg">
			    <tr>
			    <td width="14"></td>
                <td width="164"><a href="bg-sellResult.jsp?id=%>&account=">1&nbsp;&nbsp;华为荣耀5X</a></td>
				</tr>   
            </table>				
			</td>
          </tr>
        </table>
	    <table width="207" height="181" border="0" cellpadding="0" cellspacing="0" background="image/fg_left05.jpg">
          <tr>
            <td valign="top"><table width="173">
              <tr>
                <td height="35">&nbsp;</td>
              </tr>
            </table>
              <table width="186" align="center">
                <tr>
	                  <td height="38">
					  <MARQUEE direction="up" height="114" onmouseout="this.start()" 
	             onmouseover="this.stop()" scrollAmount="1" scrollDelay="1">	  
			          <ul style="list-style-type: none" id="linkId">
				          <!-- <li><img src="image/sign1.gif">&nbsp; <a href="https://ai.taobao.com" target="_blank">淘宝网</a><br></li>
				          <li><img src="image/sign1.gif">&nbsp; <a href="https://www.jd.com" target="_blank">京东商城</a></li> -->
					  </ul>
	            </marquee>				 
	            	  </td>
                </tr>
              </table></td>
          </tr>
      </table>
</body>
<script type="text/javascript">
	$(function(){
		var content = "";
		$.post(
			"${pageContext.request.contextPath}/link_fgShow.action",
			function(data){
				for(var i=0;i<data.length;i++){
					content+="<li><img src='image/sign1.gif'>&nbsp; <a href='"+data[i].linkAddress+"'>"+data[i].linkName+"</a></li>";
				}
				
				//将拼接好的li放置到ul中
				$("#linkId").html(content);
			},
			"json"
		);
	})
</script>
</html>
