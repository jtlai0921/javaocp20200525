<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.ResultSet"
    import="DAO.orderDAO"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table width=500 align=center border=1>
	<tr>
		<td>編號
		<td>桌號
		<td><img alt="fish" src="pic/fish.jpg" >魚排$100
		<td><img alt="pork" src="pic/pork.jpg" >豬排$85
		<td><img alt="beef" src="pic/beef.jpg" >牛排$150
		<td>總金額
	<%
	ResultSet rs=new orderDAO().query();
		while(rs.next())
		{
			out.println("<tr>"+
						"<td>"+rs.getInt("id")+
						"<td>"+rs.getInt("desk")+
						"<td>"+rs.getInt("fish")+
						"<td>"+rs.getInt("pork")+
						"<td>"+rs.getInt("beef")+
						"<td>"+rs.getInt("sum"));
		}
	%>
	</table>
</body>
</html>