<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
  import="model.car"
  import="ComDAO.carDAO"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="BIG5">

<title>�s�W�q���Ʃ���</title>

<link rel="stylesheet" type="text/css" href="st1.css">

<div class="header" colspan=2 align=center><h1>�q�ʩ���</h1></div>

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

			<td colspan=2 align=center>�q���� �ʶR�H�G
            <%=c.getName()%>
			<tr>

			<td width=100>Bmw�_��

			<td><%=c.getBmw()%>��<tr>

			<td>Benz���h

			<td><%=c.getBenz()%>��<tr>

			<td>Audi���}

			<td><%=c.getAudi() %>��<tr>

			<td>Toyota�ץ�	

			<td><%=c.getToyota() %>��<tr>

			<td>Honda����

			<td><%=c.getHonda() %>��<tr>

			<td>Mazada���۹F

			<td><%=c.getMazada() %>��<tr>

			

			<td colspan=2>�`�@NTD.<%=c.getCal() %>����

			

			

	</table>

	</div>

	<% session.removeAttribute("C"); %>

	

	<div class="footer"><h1><a href="index.jsp">��^�q��t��</h1></a><img src="pic/11.gif" width="200" height="200"></div>

</body>

</html>

