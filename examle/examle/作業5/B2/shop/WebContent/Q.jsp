<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="java.sql.ResultSet"
    import="Dao.torderDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
</head>
<body>
<table width=500  align=center border=0>
		<tr>
			<td>ID
			<td>Table No.
			<td>Yeovil
			<td>Kenilworth
			<td>Farnham
			<td>Sum
	<%
		ResultSet rs=new torderDAO().query();	
		while(rs.next())
		{
			out.println("<tr>"+
						"<td>"+rs.getInt("id")+
						"<td>"+rs.getInt("TableNo")+
						"<td>"+rs.getInt("yeovil")+
						"<td>"+rs.getInt("kenilworth")+
						"<td>"+rs.getInt("farnham")+
						"<td>"+rs.getInt("sum"));
		}	
	
	%>	
	</table>
</body>
</html>