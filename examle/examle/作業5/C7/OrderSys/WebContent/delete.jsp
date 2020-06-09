<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="Model.forder"
    import="DAO.forderDAO"
    import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="sty.css">
</head>

<body>
<div class="header">
	<jsp:include page="TITLE.jsp"/>
</div>

<div class="content">
	<form action="delete.jsp" method="post">
		<table width=300 align=center>
			<tr>
				<td>id
				<td><input type="text" name="id" size=5 value="0">				
				<td><input type="submit" value="送出">	
		</table>
	</form>
	
	<table width=500  align=center border=0>
		<tr>
			<td>編號
			<td>桌號
			<td>雞腿飯
			<td>排骨飯
			<td>牛丼
			<td>魚排飯
			<td>總價
	<%
try
{
	
	int id=Integer.parseInt(request.getParameter("id"));

	forder f=new forder();
	forderDAO fd=new forderDAO();
	fd.delete(id);
	

}
catch(NumberFormatException e){}

%>
<jsp:include page="qAll.jsp"/>
	</table>		
</div>
<div class="footer">
	<jsp:include page="end.jsp"/>
</div>
</body>
</html>