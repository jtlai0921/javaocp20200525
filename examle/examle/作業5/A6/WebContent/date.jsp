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
				<td>�s��
				<td>�ู
				<td>A�\
				<td>B�\
				<td>C�\
				<td>D�\
				<td>�`�B
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