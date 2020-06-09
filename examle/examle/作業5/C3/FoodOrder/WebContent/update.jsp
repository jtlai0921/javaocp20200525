<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="model.TWorder"
    import="DAO.TWorderDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" type="text/css" href="CssModel.css">

<% 
String TableId=request.getParameter("Tableid");
String Pork=request.getParameter("pork");
String Fish=request.getParameter("fish");
String Beer=request.getParameter("beer");
String Spirit=request.getParameter("spirit");

out.print(TableId+","+Pork+","+Fish+","+Beer+","+Spirit);
try
{
	int TI=Integer.parseInt(TableId);
	int PK=Integer.parseInt(Pork);
	int FH=Integer.parseInt(Fish);
	int BR=Integer.parseInt(Beer);
	int ST=Integer.parseInt(Spirit);

	TWorder TW=new TWorder();
	TW.setPork(PK);
	TW.setFish(FH);
	TW.setBeer(BR);
	TW.setSpirit(ST);

	new TWorderDAO().update(TI, TW);
}

catch(NumberFormatException e)
{
	e.printStackTrace();
}
%>

<body>
<div class="header"><h1>Change your order</h1></div>


<div class="content">
	<form action="update.jsp" methods="post">
		<table width=500px align=center border=1>
			<tr>
				<td>Table Number(1~10)
				<td><input type="text" name="Tableid"><br>
			<tr>
				<td>Pork Meal
				<td><input type="text" name="pork" value=0><br>
			<tr>
				<td>Fish Meal
				<td><input type="text" name="fish" value=0><br>
			<tr>
				<td>Beer
				<td><input type="text" name="beer" value=0><br>
			<tr>
				<td>Spirit
				<td><input type="text" name="spirit" value=0><br>
			<tr>
				<td colspan=2 align=center><input type="submit" value="submit">
			
		</table>
	</form>
		
	<jsp:include page="ContentModel.jsp"/>

</div>


<div class="footer">
<h3><a href="index.jsp">HOME</a></h3>
</div>

</body>
</html>