<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="Dao.porderDAO"%>
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
		<%

String ID=request.getParameter("id");

if( ID!=null)
{
	try{
		int I=Integer.parseInt(ID);	
		new porderDAO().delete(I);
	} catch (NullPointerException e){
		
	}

}

%>
</head>

<body  class="no-sidebar">

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
						<li><a href="right-sidebar.jsp">�ק�q��</a></li>
						<li class="active"><a href="no-sidebar.jsp">�R���q��</a></li>
					</ul>
				</nav>
			</div>
		</div>

		<!-- Main -->
		<div id="main">
			<div class="container">
				<div class="row"> 
					
					<!-- Content -->
					<div id="content" class="12u skel-cell-important">
						<section>
							<header>
								<img src="images/6.jpg" alt="" /><h2>�ڳ��@�� / �R���q��</h2>
							</header>

						</section>
					</div>

	<form action="no-sidebar.jsp" method="post">
		<table width=500 align=center border=0>
			<tr>
			<td >
			
			�п�J���R�����U�Ƚs��:<input type="text" name="id" size=4>
			<input type="submit" value="ok">
			
		</table>
		<br>
		<br>
	</form>
	<hr>
	<jsp:include page="Q.jsp"></jsp:include>
	
	</div>

		
		<!-- Copyright -->
		<div id="copyright">
			<div class="container">
				Design: <a href="http://templated.co">Daniel Huang</a>
			</div>
		</div>

</body>
</html>