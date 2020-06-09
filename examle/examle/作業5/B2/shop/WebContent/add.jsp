<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>English Afternoon Tea Shop/New</title>
<link rel="stylesheet" type="text/css" href="st1.css">
</head> 

<body background="pic/back2.jpg"bgProperties=fixed>

<div class="header">
<p class="title"> English Afternoon Tea Shop </p>
</div>
<div class="content">
		<form action="controller/addController.jsp" method="post">
			<table width=500 align=center border=1>
			<tr>
				<td colspan=2 align=center><font face="Verdana"><h1>New Order</h1></font>
			<tr>
				<td colspan=2 align=left><b>Table No.</b>
				<select name="TableNo">
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
				<td width=230><b>(A)Yeovil ($500/SET)</b>
				<select name="yeovil">
					<option value="1">1
					<option value="2">2
					<option value="3">3
					<option value="4">4
					<option value="5">5
				</select>
				<td width=270 align=center><img alt="Yeovil" src="pic/Yeovil.jpg">
			<tr>
				<td><b>(B)Kenilworth ($600/SET)</b>
				<select name="kenilworth">
					<option value="1">1
					<option value="2">2
					<option value="3">3
					<option value="4">4
					<option value="5">5
				</select>
				<td align=center><img alt="Kenilworth" src="pic/Kenilworth.jpg">
			<tr>
				<td><b>(C)Farnham ($700/SET)</b>
				<select name="farnham">
					<option value="1">1
					<option value="2">2
					<option value="3">3
					<option value="4">4
					<option value="5">5
				</select>
				<td align=center><img alt="Farnham" src="pic/Farnham.jpg">	
			<tr>
				<td colspan=3 align=center>
				<input type="submit" value="OK">
			</table>
		</form>

</div>

<div class="footer">
	<a href="index.jsp"><img alt="Home" src="pic/home.png"></a><br>
</div>

</body>
</html>