<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="java.sql.ResultSet"
    import="Dao.porderDAO"%>
<!DOCTYPE html>

<html>
	<head>
	<meta charset="BIG5">
	</head>
	
	<body>
		<table width=500 align=center border=0>
			<tr>
				<td> �s �� </td>
				<td> �m �W </td>
				<td> �� �� </td>
				<td>�N�׶�</td>
				<td>���׶�</td>
				<td>���ƶ�</td>
				<td>�`���B</td>
			</tr>
			<%
				ResultSet rs = new porderDAO().query();
				while(rs.next())
				{
					out.println("<tr>" +
								"<td>" + rs.getInt("id") + "</td>" +
								"<td>" + rs.getString("name") + "</td>" +
								"<td>" + rs.getString("table_number") + "</td>" +
								"<td>" + rs.getInt("a") + "</td>" +
								"<td>" + rs.getInt("b") + "</td>" +
								"<td>" + rs.getInt("c") + "</td>" +
								"<td>" + rs.getInt("sum") + "</td>" +
								"</tr>");
				}
			%>
		</table>
	</body>
</html>