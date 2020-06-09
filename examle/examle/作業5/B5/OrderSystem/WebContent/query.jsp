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
			<td>表單查詢
		<tr>
			<td>id
			<td>桌號
			<td>A餐
			<td>價格
			<td>B餐
			<td>價格
			<td>總金額
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