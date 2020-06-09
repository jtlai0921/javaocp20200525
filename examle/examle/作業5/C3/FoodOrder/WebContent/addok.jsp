<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="model.TWorder"
    import="DAO.TWorderDAO"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Here's your order</title>
</head>
<link rel="stylesheet" type="text/css" href="CssModel.css">
<body>

<div class="header"><h1>Here's your order</h1></div>

<div class="content">
<% 
	int ID=Integer.parseInt(request.getParameter("id"));
	int PORK=Integer.parseInt(request.getParameter("pork"));
	int FISH=Integer.parseInt(request.getParameter("fish"));
	int BEER=Integer.parseInt(request.getParameter("beer"));
	int SPIRIT=Integer.parseInt(request.getParameter("spirit"));
	
	TWorder T=new TWorder();
	T.setTableID(ID);
	T.setPork(PORK);
	T.setFish(FISH);
	T.setBeer(BEER);
	T.setSpirit(SPIRIT);
	
	int sum=T.getSum();
	
	new TWorderDAO().add(T);
	
%>

	<table width="300" align=center border=1>
		<tr>
			<td colspan=2 align=center>  Your Table number：<%=ID %>
		<tr>
			<td width=100>Pork
			<td><%=PORK %>
		<tr>
			<td>Fish
			<td><%=FISH %>
		<tr>
			<td>Beer
			<td><%=BEER %>
		<tr>
			<td>Spirit
			<td><%=SPIRIT %>
		<tr>
			<td colspan=2 align=center><%=sum %>
	
	</table>


</div>
<div class="footer">
<h3><a href="index.jsp">HOME</a></h3>
</div>

</body>
</html>