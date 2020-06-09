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
		<td colspan="2"><font size="35" >菜單</font><br>
	<tr>
		<td colspan="2"><a>桌號:
		<select name="tableNumber">
		<option value="0">1</option>
		<option value="1">2</option>
		<option value="2">3</option>
		<option value="3">4</option>
		</select>
		</a>
	<tr>
		<td><a size="25">A餐:150元<img alt="A餐" src="pic/A.png" width="100" height="100">
		<select name="A">
		<option value="0">0</option>
		<option value="1">1</option>
		<option value="2">2</option>
		<option value="3">3</option>
		</select>
		</a>
		
		<td><a size="25">B餐:200元<img alt="B餐" src="pic/B.gif"width="100" height="100">
		<select name="B">
		<option value="0">0</option>
		<option value="1">1</option>
		<option value="2">2</option>
		<option value="3">3</option>
		</select>
		
		
	<tr>
		<td colspan="2"><input type="submit" value="確認">
		
	</table>
	</form>
	</div>
	<div class="footer">
	<a href="index.jsp"/>首頁</a>
	</div>
</body>
</html>