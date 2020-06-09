<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="java.sql.ResultSet"
    import="DAO.forderDAO"%>
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
	<form action="query.jsp" method="post">
		<table width=500 align=center>
			<tr>
				<td>id
				<td><input type="text" name="id" size=5 value="0">
				<td><input type="submit" value="查詢id">
				<td><input type="submit" value="查詢全部">
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
forderDAO fd=new forderDAO();


	if(id==0)
	{
		ResultSet rs=fd.query();	
	while(rs.next())
	{
		out.println("<tr>"+
					"<td>"+rs.getInt("id")+
					"<td>"+rs.getString("desk")+
					"<td>"+rs.getInt("chicken")+
					"<td>"+rs.getInt("pork")+
					"<td>"+rs.getInt("beef")+
					"<td>"+rs.getInt("fish")+
					"<td>"+rs.getInt("total"));
	}
	}
	else
	{
		ResultSet rs=fd.query(id);	
		while(rs.next())
		{
			out.println("<tr>"+
						"<td>"+rs.getInt("id")+
						"<td>"+rs.getString("desk")+
						"<td>"+rs.getInt("chicken")+
						"<td>"+rs.getInt("pork")+
						"<td>"+rs.getInt("beef")+
						"<td>"+rs.getInt("fish")+
						"<td>"+rs.getInt("total"));
		}
	}

}
catch(NumberFormatException e){}

%>

</table>
</div>
<div class="footer">
	<jsp:include page="end.jsp"/>
</div>
</body>
</html>