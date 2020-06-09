<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="java.sql.ResultSet"
    import="Dao.porderDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
</head>
<body>

<table width=500  align=center border=0>
		<tr>
			<td>編號
			<td>姓名
			<td>A套餐
			<td>B套餐
			<td>總價
	<%
		ResultSet rs=new porderDAO().query();	
		while(rs.next())
		{
			out.println("<tr>"+
						"<td>"+rs.getInt("id")+
						"<td>"+rs.getString("name")+
						"<td>"+rs.getInt("ruler")+
						"<td>"+rs.getInt("pen")+
						"<td>"+rs.getInt("sum"));
		}
	
	%>
	
	</table>

</body>
</html>