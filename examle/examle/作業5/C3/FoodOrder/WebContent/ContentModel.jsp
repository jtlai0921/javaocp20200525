<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.ResultSet"
    import="DAO.TWorderDAO"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<table width="500px" align=center border=1>
		
		<tr>
				<td>Order ID
				<td>Table Number(1~10)
				<td>Pork
				<td>Fish
				<td>Beer
				<td>Spirit
				<td>Sum
		
		<% 
		String TableId=request.getParameter("Tableid");
		if(TableId!=null)
		{
			int TABLEID=Integer.parseInt(TableId);
			ResultSet rs=new TWorderDAO().read(TABLEID);
			
			while(rs.next()){
			out.println("<tr>"+
			
							"<td>"+rs.getInt("id")+
							"<td>"+rs.getInt("TableID")+
							"<td>"+rs.getInt("Pork")+
							"<td>"+rs.getInt("Fish")+
							"<td>"+rs.getInt("Beer")+
							"<td>"+rs.getInt("Spirit")+
							"<td>"+rs.getInt("Sum"));
			}
		
		}
		%>
</table>

</body>
</html>