<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="model.cafe"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>新增餐點</title>
<link href="layout.css" rel="stylesheet" type="text/css">
</head>
<body>
<div id="header">
	<h1>Zion Cafe'</h1>
</div>

<div id="nav">	
	<ul>
		<li><a href="index.jsp">首頁</a></li>
		<li><a href="add.jsp">新增餐點</a></li>
		<li><a href="query.jsp">查詢餐點</a></li>
		<li><a href="update.jsp">修改餐點</a></li>
		<li><a href="delete.jsp">刪除餐點</a></li>
	</ul>
</div>


<div id="content">

	<form action="addDish.jsp" method="post">
	<table width=960 align=center border=0>
		<tr>
			<td colspan=3 align=center>桌號
				<select name="tableNum">
					<option value="1">1
					<option value="2">2
					<option value="3">3
					<option value="4">4
					<option value="5">5
					<option value="6">6
					<option value="7">7
					<option value="8">8
					<option value="9">9
					<option value="10">10
				</select>
		<tr>
			<td align=center><img alt="a" src="pic/a.jpg">
			<td align=center><img alt="b" src="pic/b.jpg">
			<td align=center><img alt="c" src="pic/c.jpg">
			
		<tr>
			<td align=center><h5>美式經典漢堡</h5>
			<select name="setA">
				<option value="0">0
				<option value="1">1
				<option value="2">2
				<option value="3">3
				<option value="4">4
				<option value="5">5
			</select>
		
			<td align=center><h5>營養早午餐</h5>
			<select name="setB">
				<option value="0">0
				<option value="1">1
				<option value="2">2
				<option value="3">3
				<option value="4">4
				<option value="5">5
			</select>
			
			<td align=center><h5>大大大漢堡</h5>
			<select name="setC">
				<option value="0">0
				<option value="1">1
				<option value="2">2
				<option value="3">3
				<option value="4">4
				<option value="5">5
			</select>
		
		<tr>
		<tr>
			<td colspan=3 align=center>
			<input type="submit" value="送出">	
		</table>
		</form>
</div>

	
<div id="footer">
	<h2>COPYRIGHT (C) ABC CO., LTD. ALL RIGHTS RESERVED.</h2>
</div>	
</body>
</html>