<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="model.porder"
    import="Dao.porderDAO"%>
<!DOCTYPE html>

<html>
	<head>
		<meta charset="BIG5">
		<title>Finished Add order</title>
		<link rel="stylesheet" type="text/css" href="st1.css">
	</head>
		<%
			porder p=(porder)session.getAttribute("P");	
		%>	
	
	
	<body>
		<div class="header">
			<h2 align=center>完成點餐</h2>
		</div>
		
		<div class="content">
			<table width="300" align=center border=1>
				<tr>
					<td colspan=2 align=center> <%=p.getTable_number() %>你的訂單細目為:
				<tr>
					<td width=100>桌號
					<td><%=p.getTable_number() %>
				<tr>
					<td>烤肉飯
					<td><%=p.getFirePork() %>
				<tr>
					<td>控肉飯
					<td><%=p.getCookPork() %>
				<tr>
					<td>雞排飯
					<td><%=p.getChicken() %>
				<tr>
					<td colspan=2 >一共；<%=p.getSum() %><br>
			</table>
		</div>
		
		<div class="footer">
			<h2 align=center><a href="index.jsp">返回主頁</a></h2>
		</div>
		
			<%
			//session.removeAttribute("P");
			%>
	</body>
</html>