<%@ page contentType="text/html;charset=UTF-8" %>
<%
	String mem_id = (String)session.getAttribute("idKey");
	
	String log="";
	if(mem_id == null) log ="<a href=Login.jsp> 로그인 </a>";
	else log = "<a href=Logout.jsp> 로그아웃 </a>";

	String mem="";
	if(mem_id == null) mem ="<a href=Register.jsp> 회원 등록 </a>";
	else mem = "<a href=MemberUpdate.jsp> 회원 수정 </a>";
%>
<a href="Index.jsp"><img src="img/logo.png" style="margin-left:50px;"></a>
<table width="75%" align="center" bgcolor="#FFFF99">
  <tr bgcolor="#FFCC00"> 
    <td align="center"><b><%=log%></b></td>
    <td align="center"><b><%=mem%></b></td>
    <td align="center"><b><a href="ProductList.jsp"%> 상품 </a></b></td>
    <td align="center"><b><a href="CartList.jsp"> 장바구니 </a></b></td>
    <td align="center"><b><a href="OrderList.jsp"> 주문내역</a></b></td>
  </tr>
</table>
