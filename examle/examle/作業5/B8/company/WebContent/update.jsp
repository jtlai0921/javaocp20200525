<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="model.cafe"
    import="Dao.cafeDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>�ק�q��</title>
<link href="layout.css" rel="stylesheet" type="text/css">
</head>
<%
		String Id=request.getParameter("id");
		String TableNum=request.getParameter("tableNum");
		String SetA=request.getParameter("setA");
		String SetB=request.getParameter("setB");
		String SetC=request.getParameter("setC");
		String Add1=request.getParameter("add1");
		String Add2=request.getParameter("add2");
		String Add3=request.getParameter("add3");
		int ID=0;
		int TABLENUM=0;
		int SETA=0;
		int SETB=0;
		int SETC=0;
		int ADD1=0;
		int ADD2=0;
		int ADD3=0;
		if(Id!=null) ID=Integer.parseInt(Id);
		if(TableNum!=null) TABLENUM=Integer.parseInt(TableNum);
		if(SetA!=null) SETA=Integer.parseInt(SetA);
		if(SetB!=null) SETB=Integer.parseInt(SetB);
		if(SetC!=null) SETC=Integer.parseInt(SetC);
		if(Add1!=null) ADD1=Integer.parseInt(Add1);
		if(Add2!=null) ADD2=Integer.parseInt(Add2);
		if(Add3!=null) ADD3=Integer.parseInt(Add3);
		
		cafe c=new cafe();
		c.setTableNum(TABLENUM);
		c.setSetA(SETA);
		c.setSetB(SETB);
		c.setSetC(SETC);
		c.setAdd1(ADD1);
		c.setAdd2(ADD2);
		c.setAdd3(ADD3);
		
		new cafeDAO().update(ID, c);
			
	
	%>


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
			<form action="update.jsp" method="post">
				<table width=960 align=center border=0>
					<tr>
					<td  width=200 align=center>
					�渹:<input type="text" name="id" size=1>
					<td  width=200 align=center>
					<td  width=200 align=center>
					�ู:
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
						<td colspan=3 align=center>
					<tr>
						<td width=200 align=center>�M�\A:
						<select name="setA">
							<option value="0">0
							<option value="1">1
							<option value="2">2
							<option value="3">3
							<option value="4">4
							<option value="5">5
						</select>
						<td width=200 align=center>�M�\B:
						<select name="setB">
							<option value="0">0
							<option value="1">1
							<option value="2">2
							<option value="3">3
							<option value="4">4
							<option value="5">5
						</select>
						<td width=200 align=center>�M�\C:
						<select name="setC">
							<option value="0">0
							<option value="1">1
							<option value="2">2
							<option value="3">3
							<option value="4">4
							<option value="5">5
						</select>
						<tr>
							<td colspan=3 align=center height=20>
						<tr>
						<td width=200 align=center>�[�I1:
						<select name="add1">
							<option value="0">0
							<option value="1">1
							<option value="2">2
							<option value="3">3
							<option value="4">4
							<option value="5">5
						</select>
						<td width=200 align=center>
						�[�I2:
						<select name="add2">
							<option value="0">0
							<option value="1">1
							<option value="2">2
							<option value="3">3
							<option value="4">4
							<option value="5">5
						</select>
						<td width=200 align=center>
						�[�I3:
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
				<tr>
					<td colspan=3 align=center>
					<input type="submit" value="ok">
			</table>
		</form>
		<hr>
		<jsp:include page="Q.jsp"/>
</div>
<div id="footer">
	<h2>COPYRIGHT (C) ABC CO., LTD. ALL RIGHTS RESERVED.</h2>
</div>
</body>
</html>