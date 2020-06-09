<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" import="java.sql.ResultSet" import="DAO.porderDAO"%>
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

<title>ʕ•͡ᴥ•ʔ 訂單查詢 ʕ•͡ᴥ•ʔ</title>
</head>
<body>
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
	<table width=500 align=center border=1>
		<tr>
			<td>編號
			<td>桌號
			<td>菜色1
			<td>菜色2
			<td>菜色3
			<td>總價 <%
				ResultSet rs = new porderDAO().query();
				while (rs.next()) {
					out.println("<tr>" + "<td>" + rs.getInt("id") + "<td>" + rs.getString("new_desk") + "<td>"
							+ rs.getInt("new_dishes1") + "<td>" + rs.getInt("new_dishes2") + "<td>"
							+ rs.getInt("new_dishes3") + "<td>" + rs.getInt("new_sum"));
				}
			%>
	</table>




</body>
</html>