<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../css/orderSystem.css">
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> -->
<!-- <link rel="stylesheet" type="text/css" href="../js/jquery-ui-1.12.1.custom/jquery-ui.custom.css" > -->
<script src="../js/jquery-ui-1.12.1.custom/external/jquery/jquery.js"></script>
<!-- <script src="../js/jquery-ui-1.12.1.custom/jquery-ui.min.js"></script> -->
<title>ToTsuZen Steak</title>
</head>
<body>
	<div class="div">
		<header>
			<img alt="ToTsuZen Steak" src="../pic/totsuzen.jpg" height="250px">
			<div class="title bgcolor">
				<h1>ToTsuZen Steak 現切現煎以克計價濕式熟成牛排</h1>
				<input type="button" value="查詢訂單" name="gotoQuery" id="gotoQuery" onclick="javascript:location.href = 'query.jsp';" >
				&emsp;&emsp;&emsp;&emsp;
				<input type="button" value="新增" name="gotoEdit" id="gotoEdit" onclick="javascript:location.href = 'edit.jsp';">
			</div>
		</header>