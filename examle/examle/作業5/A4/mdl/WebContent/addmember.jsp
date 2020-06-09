<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Please Add Your Member</title>
<link rel="stylesheet" type="text/css" href="body.css">
</head>
<body>
	<div class="header">
		<jsp:include page="title.jsp"></jsp:include>
	</div>

	<div class="content">
		<form action="Controller/addmemberController.jsp" method="post">
			<table width=500 align=center border=0>
				<tr>
					<td width=200 align=right>姓名：
					<td><input type="text" name="name"><br>
				<tr>
					<td width=200 align=right>地址：
					<td><input type="text" name="address"><br>
				<tr>
					<td width=200 align=right>手機號碼：
					<td><input type="text" name="cellphone"><br>
				<tr>
					<td colspan=2 align=center><input type="submit" value="Ok">
			</table>
		</form>
	</div>
	
	<div class="footer">
		<table width=640 align=center>
			<tr>
				<td align=center>
					<font><h3><b>~~ HELLO!! ~~</b></font>
		</table>
	</div>
</body>
</html>