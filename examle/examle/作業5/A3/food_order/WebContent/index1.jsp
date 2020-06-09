<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>點餐系統</title>
<link rel="stylesheet" href="https://apps.bdimg.com/libs/jquerymobile/1.4.5/jquery.mobile-1.4.5.min.css">
<script src="https://apps.bdimg.com/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="https://apps.bdimg.com/libs/jquerymobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
</head>
<body>
	<div data-role="header">
    <h1>點餐系統</h1>
  	</div>
  	
	<table  align ="center">
	
	<tr>
		<td width=200><form method="post" action="add1.jsp"><input type="submit" value="新增"></form></td>
		<td width=200><form method="post" action="update2.jsp"><input type="submit" value="修改"></form></td>
	<tr>
		<td width=200><form method="post" action="query2.jsp"><input type="submit" value="查詢"></form></td>
		<td width=200><form method="post" action="delete1.jsp"><input type="submit" value="刪除"></form></td>
	</table>

	<div data-role="footer" width = 200>
    <h1>線上美食</h1>
  	</div>   
</body>
</html>