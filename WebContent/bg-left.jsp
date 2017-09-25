<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*" errorPage="" %>
  <script Language="JavaScript">
 function quit() {
  if(confirm("确定要退出后台吗？")){
    window.location.href="loginOut.jsp";
	}
  }
 </script>

<table width="35" height="22" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td><img src="image/bg_left01.jpg" width="170" height="45"></td>
      </tr>
    </table>
      <table width="170" height="46" border="0" cellpadding="0" cellspacing="0" background="image/bg_left02.jpg">
        <tr>
          <td><table width="118" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
              <td width="118" height="17" align="center" valign="bottom"><div align="left"><a href="bg-goodSelect.jsp" class="a3">商品设置</a></div></td>
            </tr>
            <tr>
              <td height="17" align="center"><div align="left"><font color="#FFFFFF">Goods Manage</font></div></td>
            </tr>
          </table></td>
        </tr>
      </table>
      <table width="170" height="46" border="0" cellpadding="0" cellspacing="0" background="image/bg_left02.jpg">
        <tr>
          <td><table width="118" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td width="109" height="17" align="center" valign="bottom"><div align="left"><a href="bg-selectMember.jsp" class="a3">会员设置</a></div></td>
              </tr>
              <tr>
                <td height="17" align="center"><div align="left"><font color="#FFFFFF">Member Manage</font></div></td>
              </tr>
          </table></td>
        </tr>
      </table>
      
      
      <table width="170" height="46" border="0" cellpadding="0" cellspacing="0" background="image/bg_left02.jpg">
        <tr>
          <td><div align="left">
            <table width="118" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="127" height="17" align="center" valign="bottom"><div align="left"><a href="bg-managerSelect.jsp" class="a3">后台管理员设置</a></div></td>
                </tr>
                <tr>
                  <td height="17" align="center"><div align="left"><font color="#FFFFFF">Admin Manage</font></div></td>
                </tr>
             </table>
          </div></td>
        </tr>
      </table>

       <table width="170" height="46" border="0" cellpadding="0" cellspacing="0" background="image/bg_left02.jpg">
        <tr>
          <td><div align="left">
            <table width="118" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="127" height="17" align="center" valign="bottom"><div align="left"><a href="bg-managerUpdatePassword.jsp" class="a3">修改密码</a></div></td>
                </tr>
                <tr>
                  <td height="17" align="center"><div align="left"><font color="#FFFFFF">Amend Password</font></div></td>
                </tr>
             </table>
          </div></td>
        </tr>
      </table>      

      
      <table width="170" height="46" border="0" cellpadding="0" cellspacing="0" background="image/bg_left02.jpg">
        <tr>
          <td><table width="118" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td width="127" height="17" align="center" valign="bottom"><div align="left"><a href="bg-orderSelect.jsp" class="a3">订单设置</a></div></td>
              </tr>
              <tr>
                <td height="17" align="center"><div align="left"><font color="#FFFFFF">Order Manage</font></div></td>
              </tr>
          </table></td>
        </tr>
      </table>
      <table width="170" height="46" border="0" cellpadding="0" cellspacing="0" background="image/bg_left02.jpg">
        <tr>
          <td><table width="118" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td width="127" height="17" align="center" valign="bottom"><div align="left"><a href="${pageContext.request.contextPath}/affiche_findAll.action" class="a3">公告设置</a></div></td>
              </tr>
              <tr>
                <td height="17" align="center"><div align="left"><font color="#FFFFFF">Placard Manage</font></div></td>
              </tr>
          </table></td>
        </tr>
      </table>
      <table width="170" height="46" border="0" cellpadding="0" cellspacing="0" background="image/bg_left02.jpg">
        <tr>
          <td><table width="118" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td width="127" height="17" align="center" valign="bottom"><div align="left"><a href="${pageContext.request.contextPath}/link_showPage.action?currPage=1" class="a3">友情设置</a></div></td>
              </tr>
              <tr>
                <td height="17" align="center"><div align="left"><font color="#FFFFFF">Link Manage</font></div></td>
              </tr>
          </table></td>
        </tr>
      </table>
      <table width="170" height="47" border="0" cellpadding="0" cellspacing="0" background="image/bg_left03.jpg">
        <tr>
          <td><table width="118" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td width="127" height="17" align="center" valign="bottom"><div align="left"><a href="javascript:quit()" class="a3">安全退出</a></div></td>
              </tr>
              <tr>
                <td height="17" align="center"><div align="left"><font color="#FFFFFF">Exit Background</font></div></td>
              </tr>
          </table></td>
        </tr>
      </table>
      <table width="37" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td><img src="image/bg_left04.jpg" width="170" height="68"></td>
        </tr>
      </table>