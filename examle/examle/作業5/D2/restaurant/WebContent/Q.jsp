<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="java.sql.ResultSet"
    import="Dao.menuDAO"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="style.css">

</head>
<body>


<table  bgcolor=#D7C6CF width=900  align=center border=0>
		<tr>
			<td align=center><b>�s��</b>
			<td align=center><b>��O
			<td align=center><b>�@��
			<td align=center><b>��
			<td align=center><b>�F��
			<td align=center><b>������
			<td align=center><b>���G
			<td align=center><b>���B
			<td align=center><b>�J�|
			<td align=center><b>�`��
	<%
		ResultSet rs=new menuDAO().query();	
		while(rs.next())
		{
			out.println("<tr>"+
						"<td align=center>"+rs.getInt("id")+
						"<td align=center>"+rs.getInt("desk")+
						"<td align=center>"+rs.getInt("coffee")+
						"<td align=center>"+rs.getInt("tea")+
						"<td align=center>"+rs.getInt("salad")+
						"<td align=center>"+rs.getInt("panini")+
						"<td align=center>"+rs.getInt("bagel")+
						"<td align=center>"+rs.getInt("pudding")+
						"<td align=center>"+rs.getInt("cake")+
						"<td align=center>"+rs.getInt("sum"));
		}
		
	%>
	
	</table>

</body>
</html>