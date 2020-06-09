<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">

<title>ʕ•͡ᴥ•ʔ 新增訂單 ʕ•͡ᴥ•ʔ</title>
</head>
<body>
	<div id="container" style="width: 100%">
		<div class="banner">
			<div class="banner-wrap" align=center
				style="height: 100%; width: 100%">
				<a href="index2.jsp"> <img src="pic/banner.png" height="300px" width="1360px";></a> <span></span>
			</div>
		</div>
		<div id="header" style="background-color: #4392F1;">
			<h2 style="margin-bottom: 0;">
				<div align=center>
					<marquee>
						<b>ʕ•͡ᴥ•ʔ 訂單系統 ʕ•͡ᴥ•ʔ</b>
					</marquee>
			</h2>
		</div>
	</div>
	<!-- menu分界線 -->
	<div align=center id="menu"
		style="background-color: #ECE8EF; height: 900px; width: 9%; float: left;">

		<b>ʕ•͡ᴥ•ʔ </b><br> <a href="add.jsp"><button type="button"
				class="btn btn-outline-primary">
				<b>新增</b>
			</button></a><br> <a href="query.jsp"><button type="button"
				class="btn btn-outline-secondary">
				<b>查詢</b>
			</button></a><br> <a href="update.jsp"><button type="button"
				class="btn btn-outline-success">
				<b>更新</b>
			</button></a><br> <a href="delete.jsp"><button type="button"
				class="btn btn-outline-danger">
				<b>刪除</b>
			</button></a><br> <a href="index4.jsp"><button type="button"
				class="btn btn-outline-warning">
				<b>菜色1</b>
			</button></a><br> <a href="index5.jsp"><button type="button"
				class="btn btn-outline-info">
				<b>菜色2 
			</button></a><br> <a href="index6.jsp"><button type="button"
				class="btn btn-outline-dark">
				<b>菜色3 
			</button></a><br> <a href="index3.jsp"><button type="button"
				class="btn btn-outline-light">
				<b>測試 
			</button></a><br> <b> ʕ•͡ᴥ•ʔ </b><br>
	</div>
	<!-- content分界線 -->
	<div id="content" align=center>
		<!-- 空心圓分界線 -->
		<div class="spinner-border text-primary" role="status">
			<span class="sr-only">Loading...</span>
		</div>
		<div class="spinner-border text-secondary" role="status">
			<span class="sr-only">Loading...</span>
		</div>
		<div class="spinner-border text-success" role="status">
			<span class="sr-only">Loading...</span>
		</div>
		<div class="spinner-border text-danger" role="status">
			<span class="sr-only">Loading...</span>
		</div>
		<div class="spinner-border text-warning" role="status">
			<span class="sr-only">Loading...</span>
		</div>
		<div class="spinner-border text-info" role="status">
			<span class="sr-only">Loading...</span>
		</div>
		<div class="spinner-border text-light" role="status">
			<span class="sr-only">Loading...</span>
		</div>
		<div class="spinner-border text-dark" role="status">
			<span class="sr-only">Loading...</span>
		</div>
		<!-- 實心圓分界線 -->
		<div class="spinner-grow text-primary" role="status">
			<span class="sr-only">Loading...</span>
		</div>
		<div class="spinner-grow text-secondary" role="status">
			<span class="sr-only">Loading...</span>
		</div>
		<div class="spinner-grow text-success" role="status">
			<span class="sr-only">Loading...</span>
		</div>
		<div class="spinner-grow text-danger" role="status">
			<span class="sr-only">Loading...</span>
		</div>
		<div class="spinner-grow text-warning" role="status">
			<span class="sr-only">Loading...</span>
		</div>
		<div class="spinner-grow text-info" role="status">
			<span class="sr-only">Loading...</span>
		</div>
		<div class="spinner-grow text-light" role="status">
			<span class="sr-only">Loading...</span>
		</div>
		<div class="spinner-grow text-dark" role="status">
			<span class="sr-only">Loading...</span>
		</div>
		<form action="addController.jsp" method="post">
			<table width=300 align=center border=1>
				<tr>
					<td colspan=2 align=center><h3>ʕ•͡ᴥ•ʔ 新增訂單 ʕ•͡ᴥ•ʔ</h3>
				<tr>
					<td>ʕ•͡ᴥ•ʔ 桌號
					<td><input type="text" name="new_desk">
				<tr>
					<td>ʕ•͡ᴥ•ʔ 菜色1_100
					<td><input type="text" name="new_dishes1" value="0">
				<tr>
					<td>ʕ•͡ᴥ•ʔ 菜色2_150
					<td><input type="text" name="new_dishes2" value="0">
				<tr>
					<td>ʕ•͡ᴥ•ʔ 菜色3_200
					<td><input type="text" name="new_dishes3" value="0">
				<tr>
					<td colspan=2 align=center><input type="submit"
						value="ʕ•͡ᴥ•ʔ 送出 ʕ•͡ᴥ•ʔ">
			</table>
		</form>
		<!-- 實心圓分界線 -->
		<div class="spinner-grow text-primary" role="status">
			<span class="sr-only">Loading...</span>
		</div>
		<div class="spinner-grow text-secondary" role="status">
			<span class="sr-only">Loading...</span>
		</div>
		<div class="spinner-grow text-success" role="status">
			<span class="sr-only">Loading...</span>
		</div>
		<div class="spinner-grow text-danger" role="status">
			<span class="sr-only">Loading...</span>
		</div>
		<div class="spinner-grow text-warning" role="status">
			<span class="sr-only">Loading...</span>
		</div>
		<div class="spinner-grow text-info" role="status">
			<span class="sr-only">Loading...</span>
		</div>
		<div class="spinner-grow text-light" role="status">
			<span class="sr-only">Loading...</span>
		</div>
		<div class="spinner-grow text-dark" role="status">
			<span class="sr-only">Loading...</span>
		</div>
		<!-- 空心圓分界線 -->
		<div class="spinner-border text-primary" role="status">
			<span class="sr-only">Loading...</span>
		</div>
		<div class="spinner-border text-secondary" role="status">
			<span class="sr-only">Loading...</span>
		</div>
		<div class="spinner-border text-success" role="status">
			<span class="sr-only">Loading...</span>
		</div>
		<div class="spinner-border text-danger" role="status">
			<span class="sr-only">Loading...</span>
		</div>
		<div class="spinner-border text-warning" role="status">
			<span class="sr-only">Loading...</span>
		</div>
		<div class="spinner-border text-info" role="status">
			<span class="sr-only">Loading...</span>
		</div>
		<div class="spinner-border text-light" role="status">
			<span class="sr-only">Loading...</span>
		</div>
		<div class="spinner-border text-dark" role="status">
			<span class="sr-only">Loading...</span>
		</div>


	</div>
	<div id="footer"
		style="background-color: #DC493A; clear: both; text-align: center;">
		<b>ʕ•͡ᴥ•ʔ Copyright © 2020 by <a href="mailto:vaanxion@gmail">Jimmy</a>
			ʕ•͡ᴥ•ʔ
		</b>
	</div>

</body>
</html>