<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="java.sql.ResultSet"
    import="Dao.morderDao"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
</head>
<body>
	<table width=520 align=center border=2>
		<tr>
			<td width=70 align=center>�s��
			<td width=70 align=center>�m�W
			<td width=70 align=center>�L��
			<td width=70 align=center>�q�j�Q��
			<td width=70 align=center>�~��
			<td width=70 align=center>�`��
	<%
	String ID=request.getParameter("id");

	if(ID!=null)
	{
		int I=Integer.parseInt(ID);
	
		ResultSet rs=new morderDao().query2(I);
		while(rs.next())
		{
			out.println("<tr>"+
						"<td align=center>"+rs.getInt("id")+
						"<td align=center>"+rs.getString("name")+
						"<td align=center>"+rs.getInt("rice")+
						"<td align=center>"+rs.getInt("noodles")+
						"<td align=center>"+rs.getInt("hamburger")+
						"<td align=center>"+rs.getInt("sum"));
		}
	}
	%>
	</table>
</body>
</html>