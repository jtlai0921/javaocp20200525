<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="java.sql.ResultSet"
    import="Dao.cafeDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
<link href="layout.css" rel="stylesheet" type="text/css">
</head>
<body>
	
<div id="content">	
	<table width=960 align=center border=1>
		<tr>
			<td>�渹
			<td>�ู
			<td>A�M�\
			<td>B�M�\
			<td>C�M�\
			<td>�[�I1
			<td>�[�I2
			<td>�[�I3
			<td>�`��
	<%
		ResultSet rs=new cafeDAO().query();	
		while(rs.next())
		{
			out.println("<tr>"+
						"<td>"+rs.getInt("id")+
						"<td>"+rs.getInt("tableNum")+
						"<td>"+rs.getInt("setA")+
						"<td>"+rs.getInt("setB")+
						"<td>"+rs.getInt("setC")+
						"<td>"+rs.getInt("add1")+
						"<td>"+rs.getInt("add2")+
						"<td>"+rs.getInt("add3")+
						"<td>"+rs.getInt("sum"));
		}	
	
	%>	
	</table>
</div>	
</body>
</html>