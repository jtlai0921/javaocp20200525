<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.ResultSet"
    import="DAO.TWorderDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" type="text/css" href="CssModel.css">
<% 
try
{
	int TableID=Integer.parseInt(request.getParameter("Tableid"));
	new TWorderDAO().delete(TableID);
}
catch(NumberFormatException e)
{
	e.printStackTrace();
}
%>

<body>
<div class="header"><h1>Delete your order</h1></div>


<div class="content">
<table width="500px" align=center border=1>
	<form action="delete.jsp" methods="post">	
		<tr>
				<td>Table Number
				<td colspan=3 align=center><input type="text" name="Tableid">
				<td colspan=3 align=center><input type="submit" value="submit">
				<br>
</table>

<table width="500px" align=center border=1>
		
		<tr>
				<td>Order ID
				<td>Table Number(1~10)
				<td>Pork
				<td>Chicken
				<td>Beer
				<td>Spirit
				<td>Sum
		
		<%
			ResultSet rs=new TWorderDAO().query();
			
			while(rs.next()){
			out.println("<tr>"+
			
							"<td>"+rs.getInt("id")+
							"<td>"+rs.getInt("TableID")+
							"<td>"+rs.getInt("Pork")+
							"<td>"+rs.getInt("Fish")+
							"<td>"+rs.getInt("Beer")+
							"<td>"+rs.getInt("Spirit")+
							"<td>"+rs.getInt("Sum"));
			}
		
		%>
</table>

</div>


<div class="footer">
<h3><a href="index.jsp">HOME</a></h3>
</div>

</body>
</html>