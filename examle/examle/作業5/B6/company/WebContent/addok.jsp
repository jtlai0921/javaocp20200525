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
			<h2 align=center>�����I�\</h2>
		</div>
		
		<div class="content">
			<table width="300" align=center border=1>
				<tr>
					<td colspan=2 align=center> <%=p.getTable_number() %>�A���q��ӥج�:
				<tr>
					<td width=100>�ู
					<td><%=p.getTable_number() %>
				<tr>
					<td>�N�׶�
					<td><%=p.getFirePork() %>
				<tr>
					<td>���׶�
					<td><%=p.getCookPork() %>
				<tr>
					<td>���ƶ�
					<td><%=p.getChicken() %>
				<tr>
					<td colspan=2 >�@�@�F<%=p.getSum() %><br>
			</table>
		</div>
		
		<div class="footer">
			<h2 align=center><a href="index.jsp">��^�D��</a></h2>
		</div>
		
			<%
			//session.removeAttribute("P");
			%>
	</body>
</html>