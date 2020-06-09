<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="sty1.css">
</head>
<body>
	<div class="header">
		<jsp:include page="header.jsp" />
	</div>
	<div class="content">
		<table align=center cellspacing=15em border=0 width=400em>
			<tr align=center>
				<td><a href="addOrder.jsp" style="text-decoration: none"><font
						size=5em>去點餐</font></a>
			<tr align=center>
				<td><a href="query.jsp" style="text-decoration: none"><font
						size=5em>查詢餐點</font></a>
			<tr align=center>
				<td><a href="update.jsp" style="text-decoration: none"><font
						size=5em>修改餐點</font></a>
			<tr align=center>
				<td><a href="delete.jsp" style="text-decoration: none"><font
						size=5em>刪除</font></a>
		</table>
	</div>
</body>
</html>