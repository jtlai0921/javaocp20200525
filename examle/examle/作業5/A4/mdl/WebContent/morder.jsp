<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Welcome MDL Restaurant</title>
<link rel="stylesheet" type="text/css" href="body.css">
</head>
<body>
	<div class="header">
		<jsp:include page="title.jsp"></jsp:include>
	</div>
	
	<div class="content">
		<table width=500 align=center>
			<tr>
				<td align=center>
					<h2><a href="add.jsp">(1)新增訂單</a><br>
					<a href="query.jsp">(2)查詢訂單</a><br>
					<a href="update.jsp">(3)修改訂單</a><br>
					<a href="delete.jsp">(4)刪除訂單</a><br></h2>
				<td align=right>
					<img src="pic/eat.png" width=300 hight=300>
		</table>
		
	</div>
	
	<div class="footer">
		<jsp:include page="home.jsp"></jsp:include>
	</div>
</body>
</html>