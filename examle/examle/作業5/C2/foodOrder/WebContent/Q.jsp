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
	font-family: "Helvetica", "Arial","LiHei Pro","����-�c","�L�n������", sans-serif;
}
</style>
</head>
<body>
	<table id="abc3" width=800  align=center border=1>
		<tr>
			<td>�q��s��:
			<td>�ู:
			<td>��Ź�ز�����:
			<td>�ԩ�ޱ�:
			<td>�ܥ�����:
			<td>���s:
			<td>��w��:
			<td>�`��:
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