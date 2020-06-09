<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" type="text/css" href="CssModel.css">

<body>
	<div class="header"><h1>Choose your meal</h1></div>


	<div class="content">
	
	<table width="300px" align=center border=1>	
		<form action="addok.jsp" methods="post">
			<tr>
				<td>Table Number(1~10)
				<td><input type="text" name="id"><br>
			<tr>
				<td>Pork Meal
				<td><input type="text" name="pork" value=0><br>
			<tr>
				<td>Fish Meal
				<td><input type="text" name="fish" value=0><br>
			<tr>
				<td>Beer
				<td><input type="text" name="beer" value=0><br>
			<tr>
				<td>Spirit
				<td><input type="text" name="spirit" value=0><br>
			<tr>
				<td colspan=2 align=center><input type="submit" value="submit">

		</form>
	</table>
	</div>
<div class="footer">
<h3><a href="index.jsp">HOME</a></h3>
</div>

</body>
</html>