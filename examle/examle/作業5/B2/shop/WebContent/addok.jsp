<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="Model.torder"
    import="Dao.torderDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>English Afternoon Tea Shop/Order</title>
<link rel="stylesheet" type="text/css" href="st1.css">
</head>
<%
torder t=(torder)session.getAttribute("T");//先轉型,使用session叫出T轉成t
%>

<body background="pic/back2.jpg">
<div class="header">
<p class="title"> English Afternoon Tea Shop </p>
</div>
	<div class="content">
		<table width="300" align=center border=1>
		<tr>
			<td colspan=2 align=center>Table <%=t.getTableNo() %>'s Order Details:
		<tr>
			<td width=100 align=center>Yeovil
			<td><%=t.getYeovil() %>
		<tr>
			<td align=center>Kenilworth
			<td><%=t.getKenilworth() %>
		<tr>
			<td align=center>Farnham
			<td><%=t.getFarnham() %>
		<tr>
			<td colspan=2>Total:$<%=t.getSum() %>
			<h3>~Thank you for your order~</h3>
		</table>
	</div>
	<div  class="footer">
	<a href="index.jsp"><img alt="Home" src="pic/home.png"></a><br>
	</div>

</body>
</html>