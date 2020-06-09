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
			<h2 align=center>新增點餐</h2>
		</div>
		
		<div class="content">
			<form action="addController.jsp" method="post">
				<table width=300 align=center border=0>
					<tr>
						<td>員工姓名</td>
						<td><input type="text" name="name"></td>
					</tr>
					<tr>
						<td>桌號</td>
						<td> 
                           <%=testselect("table_number",10)%>
                           </td>
						
					</tr>
					<tr>
						<td>烤肉飯( 90元 ):</td>
					
					 <td> <%=testselect("firepork",20)%>
					</tr>
					<tr>
						<td>控肉飯(100元):</td>
					
					 <td> <%=testselect("cookpork",20)%>
					</tr>
					<tr>
						<td>雞排飯(110元):</td>
					
						 <td> <%=testselect("chicken",20)%>
					</tr>
					<tr>
						<td colspan=2 align=center>
							<input type="submit" value="送出">
						</td>
					</tr>
				</table>
			</form>
		</div>
		
		<div class="footer">
			<h2 align=center><a href="index.jsp">返回主頁</a></h2>
		</div>
	</body>
</html>