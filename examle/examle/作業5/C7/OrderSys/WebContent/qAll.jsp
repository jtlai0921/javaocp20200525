<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="java.sql.ResultSet"
    import="DAO.forderDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
</head>
<body>
<%
ResultSet rs=new forderDAO().query();	
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

%>
</body>
</html>