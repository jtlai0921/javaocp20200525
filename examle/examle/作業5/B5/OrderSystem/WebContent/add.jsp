<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5" 
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="o1.css">
<%!
	

  %>
</head>
<body>
	<div class="header"></div>
	<div ckass="content">
	<form align="center" action="addController/addController.jsp" method="post" >

	<table  align ="center" border="3" height="500" width="40%" bgcolor="#D8593F">
	<tr>
		<td colspan="2"><font size="35" >���</font><br>
	<tr>
		<td colspan="2"><a>�ู:
		<select name="tableNumber">
		<option value="0">1</option>
		<option value="1">2</option>
		<option value="2">3</option>
		<option value="3">4</option>
		</select>
		</a>
	<tr>
		<td><a size="25">A�\:150��<img alt="A�\" src="pic/A.png" width="100" height="100">
		<select name="A">
		<option value="0">0</option>
		<option value="1">1</option>
		<option value="2">2</option>
		<option value="3">3</option>
		</select>
		</a>
		
		<td><a size="25">B�\:200��<img alt="B�\" src="pic/B.gif"width="100" height="100">
		<select name="B">
		<option value="0">0</option>
		<option value="1">1</option>
		<option value="2">2</option>
		<option value="3">3</option>
		</select>
		
		
	<tr>
		<td colspan="2"><input type="submit" value="�T�{">
		
	</table>
	</form>
	</div>
	<div class="footer">
	<a href="index.jsp"/>����</a>
	</div>
</body>
</html>