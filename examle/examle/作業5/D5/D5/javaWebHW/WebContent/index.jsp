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

<div class=header align=center>
	<font face="�з���" size=7><h1>���ǧ��\��</h1></font>
	
</div>
<div class=content align=center>

<p>	<br>
	<br>
	<img src="pic/steak.jpg" align=left> <img src="pic/rice.jpg" align=right><br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<font face="�з���" size=100>
		<a href="add.jsp"  style=text-decoration:none target=_self><h1>�s�W</a>
		<a href="query.jsp" target=_self>�d��</a>
		<a href="update.jsp" target=_self>�ק�</a>
		<a href="delete.jsp" target=_self>�R��</h1></a></font>

	<img src="pic/pasta.jpg" align=left> <img src="pic/ham.jpg" align=right>
	</p>
</div>
	
<div class=footer></div>
</body>
<%session.removeAttribute("pp");%>
</html>