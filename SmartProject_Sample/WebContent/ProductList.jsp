<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.*, smartProject.*"%>
<jsp:useBean id="proMgr" class="smartProject.ProductMgr" />

<html>
<head>
<title>Simple Shopping Mall</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="script.js"></script>
<style>
	.wrap{
		width:75%;
		margin-left:180;
		}
	.product {
		width:150;
		height:250;
		background-color:yellow;
		margin-left:20;
		float:left;
		
	}

</style>
</head>
 
<body bgcolor="#BCA9F5" topmargin="100">

	<%@ include file="Top.jsp" %>
	<%Vector vResult= proMgr.getProductList();%>
	
	<div class="wrap">
	
			<% 
		for(int i=0; i<vResult.size(); i++){
		ProductBean product = (ProductBean)vResult.get(i);
		%>
		<div class="product" >
			<img src="data/<%=product.getImage()%>" height="150" width="150">
			 <%=product.getName()%><br>
			<%=product.getPrice()%>원 <br>
			<%=product.getDate()%><br>

			<a href="javascript:productDetail('<%=product.getNo()%>')"> [ 상세보기 ] </a>
		</div>

		<%}%>
	
	
	
	

</div>


	<%@ include file="Bottom.jsp" %>
	
	<form name="detail" method="post" action="ProductDetail.jsp" >
	<input type="hidden" name="no">
	</form>

</body>
</html>

