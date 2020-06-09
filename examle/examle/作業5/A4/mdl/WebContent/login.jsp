<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Please Login</title>
<link rel="stylesheet" type="text/css" href="body.css">
</head>
<body>
	<div class="header">
		<jsp:include page="title.jsp"></jsp:include>
	</div>

	<div class="content">
		<form action="Controller/loginController.jsp" method="post">
			<table width=300 align=center border=0>
				<tr>
					<td align=center>
						姓名：<input type="text" name="name" size=6>
				<tr>
					<td align=center>
						<input type="submit" value="Login">
			</table>
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