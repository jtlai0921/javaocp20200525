<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="Dao.porderDao"
    import="java.sql.ResultSet"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
</head>
<body>
	<table width=700 align=center border=1>
		<tr>
				<td>編號
				<td>桌號
				<td>A餐
				<td>B餐
				<td>C餐
				<td>D餐
				<td>總額
<%
ResultSet rs=new porderDao().query();
while(rs.next())
{
	out.println("<tr>"+
							"<td>"+rs.getInt("id")+
							"<td>"+rs.getString("number")+
							"<td>"+rs.getInt("mealA")+
							"<td>"+rs.getInt("mealB")+
							"<td>"+rs.getInt("mealC")+
							"<td>"+rs.getInt("mealD")+
							"<td>"+rs.getInt("sum"));
}

%>
	</table>
</body>
</html>