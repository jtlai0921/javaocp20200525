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
	<font face="標楷體" size=7><h1>阿傑快餐店</h1></font>
	
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
	<font face="標楷體" size=100>
		<a href="add.jsp"  style=text-decoration:none target=_self><h1>新增</a>
		<a href="query.jsp" target=_self>查詢</a>
		<a href="update.jsp" target=_self>修改</a>
		<a href="delete.jsp" target=_self>刪除</h1></a></font>

	<img src="pic/pasta.jpg" align=left> <img src="pic/ham.jpg" align=right>
	</p>
</div>
	
<div class=footer></div>
</body>
<%session.removeAttribute("pp");%>
</html>