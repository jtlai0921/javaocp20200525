<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="java.sql.ResultSet"
    import="Dao.forderDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
<style type="text/css">
#abc3
{
	background-color:;
	font-size:20px;
	color:orange;
	font-family: "Helvetica", "Arial","LiHei Pro","黑體-繁","微軟正黑體", sans-serif;
}
</style>
</head>
<body>
	<table id="abc3" width=800  align=center border=1>
		<tr>
			<td>訂單編號:
			<td>桌號:
			<td>老饕肋眼牛排:
			<td>戰斧豬排:
			<td>脆皮雞排:
			<td>紅酒:
			<td>氣泡水:
			<td>總價:
	<%
		ResultSet rs=new forderDAO().query();	
		while(rs.next())
		{
			out.println("<tr>"+
						"<td>"+rs.getInt("id")+
						"<td>"+rs.getString("tableNb")+
						"<td>"+rs.getInt("steak")+
						"<td>"+rs.getInt("porkChops")+
						"<td>"+rs.getInt("chickenSteak")+
						"<td>"+rs.getInt("wine")+
						"<td>"+rs.getInt("soda")+
						"<td>"+rs.getInt("sum"));
		}
	%>
	</table>
</body>
</html>