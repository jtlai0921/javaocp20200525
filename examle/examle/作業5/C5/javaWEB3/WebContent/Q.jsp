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
			<td>�s��
			<td>�m�W
			<td>A�M�\
			<td>B�M�\
			<td>�`��
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