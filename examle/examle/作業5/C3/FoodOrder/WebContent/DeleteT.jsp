<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.ResultSet"
    import="DAO.TWorderDAO"
    %>
    
<!DOCTYPE HTML>
<!--
	Road Trip by TEMPLATED
	templated.co @templatedco
	Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
	<head>
		<title>Create Your Order</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="assets/css/main.css" />
	</head>

<% 
try
{
	int TableID=Integer.parseInt(request.getParameter("Tableid"));
	new TWorderDAO().delete(TableID);
}
catch(NumberFormatException e)
{
	e.printStackTrace();
}
%>
	
	<body class="subpage">

		<!-- Header -->
			<header id="header" class="alt">
				<div class="logo"><a href="indexT.jsp">Taiwan Specialties Restaurant</a></div>
				<a href="#menu"><span>Menu</span></a>
			</header>

		<!-- Nav -->
			<nav id="menu">
				<ul class="links">
					<li><a href="indexT.jsp">Home</a></li>
					<li><a href="genericT.jsp">About Your Order</a></li>
				</ul>
			</nav>

		<!-- Content -->
		<!--
			Note: To show a background image, set the "data-bg" attribute below
			to the full filename of your image. This is used in each section to set
			the background image.
		-->
			<section id="post" class="wrapper bg-img" data-bg="banner2.jpg">
				<div class="inner">
					<article class="box">
						<header>
							<h2>Delete Your Order</h2>
						</header>
						<div class="content">
							
	<table width="500px" align=center border=1>
	<form action="DeleteT.jsp" methods="post">	
		<tr>
				<td>Table Number
				<td colspan=3 align=center><input type="text" name="Tableid">
				<td colspan=3 align=center><input type="submit" value="submit">
				<br>
	</table>

	<table width="500px" align=center border=1>
		
		<tr>
				<td>Order ID
				<td>Table Number(1~10)
				<td>Pork
				<td>Chicken
				<td>Beer
				<td>Spirit
				<td>Sum

		
		<%
			ResultSet rs=new TWorderDAO().query();
			
			while(rs.next()){
			out.println("<tr>"+
			
							"<td>"+rs.getInt("id")+
							"<td>"+rs.getInt("TableID")+
							"<td>"+rs.getInt("Pork")+
							"<td>"+rs.getInt("Fish")+
							"<td>"+rs.getInt("Beer")+
							"<td>"+rs.getInt("Spirit")+
							"<td>"+rs.getInt("Sum"));
			}
		%>	
	</table>
							
						</div>
						<footer>
							<ul class="actions">
								<li><a href="#" class="button alt icon fa-chevron-left"><span class="label">Previous</span></a></li>
								<li><a href="#" class="button alt icon fa-chevron-right"><span class="label">Next</span></a></li>
							</ul>
						</footer>
					</article>
				</div>
			</section>

		<!-- Footer -->
			<footer id="footer">
				<div class="inner">

					<h2>Contact Me</h2>

					<form action="#" method="post">

						<div class="field half first">
							<label for="name">Name</label>
							<input name="name" id="name" type="text" placeholder="Name">
						</div>
						<div class="field half">
							<label for="email">Email</label>
							<input name="email" id="email" type="email" placeholder="Email">
						</div>
						<div class="field">
							<label for="message">Message</label>
							<textarea name="message" id="message" rows="6" placeholder="Message"></textarea>
						</div>
						<ul class="actions">
							<li><input value="Send Message" class="button alt" type="submit"></li>
						</ul>
					</form>

					<ul class="icons">
						<li><a href="#" class="icon round fa-twitter"><span class="label">Twitter</span></a></li>
						<li><a href="#" class="icon round fa-facebook"><span class="label">Facebook</span></a></li>
						<li><a href="#" class="icon round fa-instagram"><span class="label">Instagram</span></a></li>
					</ul>

					<div class="copyright">
						&copy; Untitled. Design: <a href="https://templated.co">TEMPLATED</a>. Images: <a href="https://unsplash.com">Unsplash</a>.
					</div>

				</div>
			</footer>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>