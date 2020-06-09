<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" import="DAO.porderDAO"%>
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

<title>ʕ•͡ᴥ•ʔ 刪除訂單 ʕ•͡ᴥ•ʔ</title>
</head>
<%
	String ID = request.getParameter("id");
	if (ID != null) {
		int I = Integer.parseInt(ID);
		new porderDAO().delete(I);
	}
	//try{} catch()
%>
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
	<div class="content" align=center>
		<form action="delete.jsp" method="post">
			<table width=300 align=center border=0>
				<tr>
					<td>ʕ•͡ᴥ•ʔ 編號 <input type="text" name="id" size="9">
					<td colspan=2 align=center><input type="submit"
						value="ʕ•͡ᴥ•ʔ 刪除 ʕ•͡ᴥ•ʔ">
			</table>
			<jsp:include page="query2.jsp" />
		</form>
	</div>
	<div id="footer"
		style="background-color: #DC493A; clear: both; text-align: center;">
		<b>ʕ•͡ᴥ•ʔ Copyright © 2020 by <a href="mailto:vaanxion@gmail">Jimmy</a>
			ʕ•͡ᴥ•ʔ
		</b>
	</div>
</body>
</html>