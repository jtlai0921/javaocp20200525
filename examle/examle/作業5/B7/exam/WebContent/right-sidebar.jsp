<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="Dao.porderDAO"
    import="model.porder"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
		<title>�ڳ��@�� by tame moose</title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<link href='http://fonts.googleapis.com/css?family=Arimo:400,700' rel='stylesheet' type='text/css'>
		<!--[if lte IE 8]><script src="js/html5shiv.js"></script><![endif]-->
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
		<script src="js/skel.min.js"></script>
		<script src="js/skel-panels.min.js"></script>
		<script src="js/init.js"></script>
		<noscript>
			<link rel="stylesheet" href="css/skel-noscript.css" />
			<link rel="stylesheet" href="css/style.css" />
			<link rel="stylesheet" href="css/style-desktop.css" />
		</noscript>
</head>
<%
String Name=request.getParameter("name");
String Table_number=request.getParameter("table_number");
String Apple=request.getParameter("apple");
String Bread=request.getParameter("bread");
String Cake=request.getParameter("cake");
String ID=request.getParameter("id");

if(Name!=null && Table_number!=null && Apple!=null && Bread!=null && Cake!=null && ID!=null)
{
	int T=Integer.parseInt(Table_number);
	int A=Integer.parseInt(Apple);
	int B=Integer.parseInt(Bread);
	int C=Integer.parseInt(Cake);
	int I=Integer.parseInt(ID);
	
	porder p=new porder();
	p.setName(Name);
	p.setTable_number(T);
	p.setApple(A);
	p.setBread(B);
	p.setCake(C);
	new porderDAO().update(I, p);	
}
//trye{} catch()
%>
<body>

		<!-- Header -->
		<div id="header">
			<div class="container"> 
				
				<!-- Logo -->
				<div id="logo">
					<h1><a href="#">�ڳ��@��</a></h1>
					<span>By Tame Moose</span>
				</div>
				
				<!-- Nav -->
				<nav id="nav">
					<ul>
						<li><a href="index.html">�ӫ~����</a></li>
						<li><a href="left-sidebar.jsp">�d�߭q��</a></li>
						<li class="active"><a href="right-sidebar.jsp">�ק�q��</a></li>
						<li><a href="no-sidebar.jsp">�R���q��</a></li>
					</ul>
				</nav>
			</div>
		</div>

		<!-- Main -->
		<div id="main">
			<div class="container">
				<div class="row"> 

					<!-- Content -->
					<div id="content" class="8u skel-cell-important">
						<section>
							<header>
								<img src="images/6.jpg" alt="" /><h2>�ڳ��@�� / �ק�q��</h2>
							</header>
						</section>
				
					
			<form action="right-sidebar.jsp" method="post">
			<tr>
				<td><b>�m�W</b>
				<td><input type="text" name="name" size=10>
				<td><b>&nbsp; &nbsp; &nbsp; �ู</b>
				<td><select name="table_number">
						<option value="0">0
						<option value="1">1
						<option value="2">2
						<option value="3">3
						<option value="4">4
						<option value="5">5
						<option value="6">6
						<option value="7">7
						<option value="8">8
						<option value="9">9
					</select>
			<tr>
			<br>
			<br>
				<td><b>���o��������׺~��&nbsp; &nbsp; &nbsp; </b>
				<td><select name="apple">
						<option value="0">0
						<option value="1">1
						<option value="2">2
						<option value="3">3
						<option value="4">4
						<option value="5">5
						<option value="6">6
						<option value="7">7
						<option value="8">8
						<option value="9">9
					</select>
				<td>���95��
			<tr>
			<br>
			<br>
				<td><b>3 layers ��������&nbsp; &nbsp; &nbsp; </b> 
				<td><select name="bread">
						<option value="0">0
						<option value="1">1
						<option value="2">2
						<option value="3">3
						<option value="4">4
						<option value="5">5
						<option value="6">6
						<option value="7">7
						<option value="8">8
						<option value="9">9
					</select>
				<td>���65��
			<tr>
			<br>
			<br>
				<td><b>�ն��B�F����&nbsp; &nbsp; &nbsp; </b> 
				<td><select name="cake">
						<option value="0">0
						<option value="1">1
						<option value="2">2
						<option value="3">3
						<option value="4">4
						<option value="5">5
						<option value="6">6
						<option value="7">7
						<option value="8">8
						<option value="9">9
					</select>
				<td>���120��
			<tr>
			<br>
			<br>
				<td><b>�U�Ƚs��:</b>
				<td><input type="text" name="id" size=10 value=0>
				<td><input type="submit" value="ok">
			<br>
			<br>
	</form>
		</div>
	<hr>
	<jsp:include page="Q.jsp"/>


		<!-- Copyright -->
		<div id="copyright">
			<div class="container">
				Design: <a href="http://templated.co">Daniel Huang</a>
			</div>
		</div>
		
</body>
</html>