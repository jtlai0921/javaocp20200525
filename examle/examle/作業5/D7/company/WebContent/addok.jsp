<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
  import="model.car"
  import="ComDAO.carDAO"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="BIG5">

<title>新增訂單資料明細</title>

<link rel="stylesheet" type="text/css" href="st1.css">

<div class="header" colspan=2 align=center><h1>訂購明細</h1></div>

</head>

<%
car c=(car)session.getAttribute("C");
%>

<body>



<div class="content">
<td>
<td>
<td>

	<table width="400" align=center border=2>

		<tr>

			<td colspan=2 align=center>訂單資料 購買人：
            <%=c.getName()%>
			<tr>

			<td width=100>Bmw寶馬

			<td><%=c.getBmw()%>輛<tr>

			<td>Benz賓士

			<td><%=c.getBenz()%>輛<tr>

			<td>Audi奧迪

			<td><%=c.getAudi() %>輛<tr>

			<td>Toyota豐田	

			<td><%=c.getToyota() %>輛<tr>

			<td>Honda本田

			<td><%=c.getHonda() %>輛<tr>

			<td>Mazada馬自達

			<td><%=c.getMazada() %>輛<tr>

			

			<td colspan=2>總共NTD.<%=c.getCal() %>元整

			

			

	</table>

	</div>

	<% session.removeAttribute("C"); %>

	

	<div class="footer"><h1><a href="index.jsp">返回訂單系統</h1></a><img src="pic/11.gif" width="200" height="200"></div>

</body>

</html>

