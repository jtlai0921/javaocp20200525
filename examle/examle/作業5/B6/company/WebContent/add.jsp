<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>

<html>
	<head>
		<meta charset="BIG5">
		<title>Add Order</title>
		<link rel="stylesheet" type="text/css" href="st1.css">
	</head>
	<%@ include file="selectfunction.jsp"%>
	<body>
		<div class="header">
			<h2 align=center>�s�W�I�\</h2>
		</div>
		
		<div class="content">
			<form action="addController.jsp" method="post">
				<table width=300 align=center border=0>
					<tr>
						<td>���u�m�W</td>
						<td><input type="text" name="name"></td>
					</tr>
					<tr>
						<td>�ู</td>
						<td> 
                           <%=testselect("table_number",10)%>
                           </td>
						
					</tr>
					<tr>
						<td>�N�׶�( 90�� ):</td>
					
					 <td> <%=testselect("firepork",20)%>
					</tr>
					<tr>
						<td>���׶�(100��):</td>
					
					 <td> <%=testselect("cookpork",20)%>
					</tr>
					<tr>
						<td>���ƶ�(110��):</td>
					
						 <td> <%=testselect("chicken",20)%>
					</tr>
					<tr>
						<td colspan=2 align=center>
							<input type="submit" value="�e�X">
						</td>
					</tr>
				</table>
			</form>
		</div>
		
		<div class="footer">
			<h2 align=center><a href="index.jsp">��^�D��</a></h2>
		</div>
	</body>
</html>