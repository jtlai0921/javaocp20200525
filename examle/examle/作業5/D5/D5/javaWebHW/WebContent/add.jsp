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
<div class=header align=center> <font face="標楷體" size=5><h2>新增訂單</h2>
		<h4><a href="query.jsp" target=_self>查詢</a>
		<a href="update.jsp" target=_self>修改</a>
		<a href="delete.jsp" target=_self>刪除</h4></a></font>
</div>
<div class=content>
	<form action="Controller/addController.jsp" method="post" target="_self">
		<table width=200 align=center border=1>
		<tr>
			<td colspan=2 align=center><h1>新增訂單</h1></td></tr>
		<tr>
			<td width=100>炒飯-100</td>
			<td><input type="text" name="rice" value=0 size=6></td></tr>
		<tr>
			<td>義大利麵-120</td>
			<td><input type="text" name="pasta" value=0 size=6></td></tr>
		<tr>
			<td>漢堡-80</td>
			<td><input type="text" name="hamburger" value=0 size=6></td></tr><%//value=0,避免exception %>
		<tr>
			<td>牛排-150</td>
			<td><input type="text" name="steak" value=0 size=6>
		<tr>
			<td colspan=2 align=center>
			<input type="submit" value="送出"></td></tr>
		</table>
	</form>
</div>
<div class=footer>
	<h2  align=center><a href="index.jsp" ><font face="標楷體" size=6>首頁</font></a></h2>
</div>
<%session.removeAttribute("pp");%>
</body>
</html>