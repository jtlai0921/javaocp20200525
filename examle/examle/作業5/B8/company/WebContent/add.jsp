<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="model.cafe"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>�s�W�\�I</title>
<link href="layout.css" rel="stylesheet" type="text/css">
</head>
<body>
<div id="header">
	<h1>Zion Cafe'</h1>
</div>

<div id="nav">	
	<ul>
		<li><a href="index.jsp">����</a></li>
		<li><a href="add.jsp">�s�W�\�I</a></li>
		<li><a href="query.jsp">�d���\�I</a></li>
		<li><a href="update.jsp">�ק��\�I</a></li>
		<li><a href="delete.jsp">�R���\�I</a></li>
	</ul>
</div>


<div id="content">

	<form action="addDish.jsp" method="post">
	<table width=960 align=center border=0>
		<tr>
			<td colspan=3 align=center>�ู
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
			<td align=center><h5>�����g��~��</h5>
			<select name="setA">
				<option value="0">0
				<option value="1">1
				<option value="2">2
				<option value="3">3
				<option value="4">4
				<option value="5">5
			</select>
		
			<td align=center><h5>��i�����\</h5>
			<select name="setB">
				<option value="0">0
				<option value="1">1
				<option value="2">2
				<option value="3">3
				<option value="4">4
				<option value="5">5
			</select>
			
			<td align=center><h5>�j�j�j�~��</h5>
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
			<input type="submit" value="�e�X">	
		</table>
		</form>
</div>

	
<div id="footer">
	<h2>COPYRIGHT (C) ABC CO., LTD. ALL RIGHTS RESERVED.</h2>
</div>	
</body>
</html>