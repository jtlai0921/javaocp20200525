<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="DAO.DAOmenu"
    import="java.sql.ResultSet"
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>


</head>
<body>

	<form>
	<table align="center" size="50"bgcolor="#EAA31C">
		<tr>
			<td>���d��
		<tr>
			<td>id
			<td>�ู
			<td>A�\
			<td>����
			<td>B�\
			<td>����
			<td>�`���B
	<%
	ResultSet rs=new DAOmenu().query();
	while(rs.next()){
		out.println(
				"<tr>"+
						"<td>"+rs.getInt("id")+
						"<td>"+rs.getInt("tableNumber")+
						"<td>"+rs.getInt("A")+
						"<td>"+rs.getInt("Ap")+
						"<TD>"+rs.getInt("B")+
						"<td>"+rs.getInt("Bp")+
						"<td>"+rs.getInt("sum")
				
				);
	}

%>
	
	</table>
	</form>
	
	
</body>
</html>