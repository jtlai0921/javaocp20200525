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

<table width=1000 align=center border=0>
	<tr>
		<td width=50>�s��
		<td>�m�W
		<td>�ู
		<td>���o��������׺~��
		<td>3 layers ��������
		<td>�ն��B�F����
		<td>�`���B
	<%
		ResultSet rs=new porderDAO().query();
		while(rs.next())
		{
			out.println("<tr>"+
						"<td>"+rs.getInt("id")+
						"<td>"+rs.getString("name")+
						"<td>"+rs.getInt("table_number")+
						"<td>"+rs.getInt("apple")+
						"<td>"+rs.getInt("bread")+
						"<td>"+rs.getInt("cake")+
						"<td>"+rs.getInt("sum"));
		}
		
	
	
	%>
	</table>

</body>
</html>