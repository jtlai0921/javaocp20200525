<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="java.sql.ResultSet"
    import="Dao.hworderDAO"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
</head>
<body>
<table width=500  align=center border=0>
		<tr>
			<td>�s��</td>
			<td>����</td>
			<td>�q�j�Q��</td>
			<td>�~��</td>
			<td>����</td>
			<td>�`��</td>
			</tr>
	<%
	String ID=request.getParameter("id");

	if( ID!=null)
	{
		
		int I=Integer.parseInt(ID);	
		ResultSet rs=new hworderDAO().query(I);	
		while(rs.next())
		{
			out.println("<tr>"+/*jsp�̭��n��<tr><td>����*/
						"<td>"+rs.getInt("id")+
						"<td>"+rs.getInt("rice")+
						"<td>"+rs.getInt("pasta")+
						"<td>"+rs.getInt("hamburger")+
						"<td>"+rs.getInt("steak")+
						"<td>"+rs.getInt("sum"));
			}
		}
		
		%>
	</table>
	
</body>
</html>