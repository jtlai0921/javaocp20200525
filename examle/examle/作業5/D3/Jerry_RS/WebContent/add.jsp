<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
</style>

<link rel="stylesheet" type="text/css" href="st1.css"/>
<meta charset="UTF-8">
<title>新增</title>
</head>
<body>
<div class="header"><h1>JERRY_RESTAURANT</h1>

</div>
<div class="topnav">
  <a href="query.jsp" TARGET= blank"new"><img alt="query" src="pic/query.png" ></a>
  <a href="update.jsp" TARGET= blank"new"><img alt="update" src="pic/update.png" ></a>
  <a href="delete.jsp" TARGET= blank"new"><img alt="delete" src="pic/delete.png" ></a>
  <a href="index.jsp" TARGET= blank"new"><img alt="index" src="pic/index.png" ></a>
</div>
<div class="content">
<form action="addController.jsp" method="post">
	<table width="500" align=center border=1>
	<tr >
		<td>桌號
		<td>
		<select name="desk">
		<option value="null"selected>請選擇座位</option>
		<option value="1">1</option>
		<option value="2">2</option>
		<option value="3">3</option>
		<option value="4">4</option>
		<option value="5">5</option>
		<option value="6">6</option>
		<option value="7">7</option>
		<option value="8">8</option>
		<option value="9">9</option>
		<option value="10">10</option>

		</select>
	<tr>
		<td><img alt="fish" src="pic/fish.jpg">魚排$100
		<td>
		<select name="fish">
		<option value="0"selected>請選擇數量</option>
		<option value="1">1</option>
		<option value="2">2</option>
		<option value="3">3</option>
		<option value="4">4</option>
		<option value="5">5</option>
		</select>
	<tr >
		<td><img alt="pork" src="pic/pork.jpg" >豬排$85
		<td>
		<select name="pork">
		<option value="0"selected>請選擇數量</option>
		<option value="1">1</option>
		<option value="2">2</option>
		<option value="3">3</option>
		<option value="4">4</option>
		<option value="5">5</option>
		</select>
	<tr>
		<td><img alt="beef" src="pic/beef.jpg" >牛排$150
		<td>
		<select name="beef">
		<option value="0"selected>請選擇數量</option>
		<option value="1">1</option>
		<option value="2">2</option>
		<option value="3">3</option>
		<option value="4">4</option>
		<option value="5">5</option>
		</select>
	<tr >
		<td colspan=2 align=center>
		<input type="submit" value="送出訂單">		
	</table>

</form>
</div>
<div class=footer>

</div>

</body>
</html>