<%@ page contentType="text/html;charset=UTF-8"%>

<html>
<head>
<title>Simple Shopping Mall Demo</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#996600" topmargin="100">

	<%@ include file="Top.jsp" %>

	<table width="75%" align="center" bgcolor="#FFFF99">
	<tr bordercolor="#FFFF99">  
	<td height="190">
	
		<form method="post" action="LoginProc.jsp">
		<table width="50%" border="1" align="center">
		<tr bordercolor="#FFFF66"> 
		<td colspan="2" align="center">로그인</td>
		</tr>
		<tr > 
		<td width="47%" align="center">ID</td>
		<td width="53%" align="center"><input type="text" name="mem_id"></div></td>
		</tr>
		<tr> 
		<td align="center">Password</td>
		<td align="center"><input type="text" name="mem_passwd"></td>
		</tr>
		<tr> 
		<td colspan="2" align="center"><input type="submit" value="login">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
		<input type="reset" value="reset">
		</td>
		</tr>
		</table>
		</form>
		
	</td>
	</tr>
	</table>

	<%@ include file="Bottom.jsp" %>
	
</body>
</html>