<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="st1.css">
</head>
<style>
a {
    text-decoration:none
	}
</style>
<body background="pic/star.jpg">
<div class=header align=center> <font face="�з���" size=5><h2>�s�W�q��</h2>
		<h4><a href="query.jsp" target=_self>�d��</a>
		<a href="update.jsp" target=_self>�ק�</a>
		<a href="delete.jsp" target=_self>�R��</h4></a></font>
</div>
<div class=content>
	<form action="Controller/addController.jsp" method="post" target="_self">
		<table width=200 align=center border=1>
		<tr>
			<td colspan=2 align=center><h1>�s�W�q��</h1></td></tr>
		<tr>
			<td width=100>����-100</td>
			<td><input type="text" name="rice" value=0 size=6></td></tr>
		<tr>
			<td>�q�j�Q��-120</td>
			<td><input type="text" name="pasta" value=0 size=6></td></tr>
		<tr>
			<td>�~��-80</td>
			<td><input type="text" name="hamburger" value=0 size=6></td></tr><%//value=0,�קKexception %>
		<tr>
			<td>����-150</td>
			<td><input type="text" name="steak" value=0 size=6>
		<tr>
			<td colspan=2 align=center>
			<input type="submit" value="�e�X"></td></tr>
		</table>
	</form>
</div>
<div class=footer>
	<h2  align=center><a href="index.jsp" ><font face="�з���" size=6>����</font></a></h2>
</div>
<%session.removeAttribute("pp");%>
</body>
</html>