<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="model.cafe"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>������٭n</title>
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

	<form action="controller/addController.jsp" method="post">
	<table width=960 aligh=center border=0>
		<tr>
			<td align=center><img alt="add1" src="pic/add1.jpg">
			<td align=center><img alt="add2" src="pic/add2.jpg">
			<td align=center><img alt="add3" src="pic/add3.jpg">
			
			
		<tr>
			<td align=center><h5>�ӥ�����</h5>	
			<select name="add1">
				<option value="0">0
				<option value="1">1
				<option value="2">2
				<option value="3">3
				<option value="4">4
				<option value="5">5
			</select>
			
			<td align=center><h5>�n�n�Y����</h5>
			<select name="add2">
					<option value="0">0
					<option value="1">1
					<option value="2">2
					<option value="3">3
					<option value="4">4
					<option value="5">5
				</select>
			
			<td align=center><h5>QQ�v����</h5>
			<select name="add3">
				<option value="0">0
				<option value="1">1
				<option value="2">2
				<option value="3">3
				<option value="4">4
				<option value="5">5
			</select>
		<tr>
			<td colspan=3 align=center>
			<input type="submit" value="�e�X">	
		</table>
<%  
cafe c=new cafe();
int tableNum=Integer.parseInt(request.getParameter("tableNum"));
int setA=Integer.parseInt(request.getParameter("setA"));
int setB=Integer.parseInt(request.getParameter("setB"));
int setC=Integer.parseInt(request.getParameter("setC"));
c.setTableNum(tableNum);
c.setSetA(setA);
c.setSetB(setB);
c.setSetC(setC);
session.setAttribute("C", c);

%>	
</div>		
<div id="footer">
	<h2>COPYRIGHT (C) ABC CO., LTD. ALL RIGHTS RESERVED.</h2>
</div>	
</body>
</html>