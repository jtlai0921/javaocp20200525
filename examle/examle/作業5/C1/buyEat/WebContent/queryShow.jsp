<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="java.sql.ResultSet"
    import="DAO.eatDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
</head>
<body>
<table width=600 align=center border=1>
			<tr>
				<td>�s��
				<td>�ู
				<td>�ն�
				<td>����
				<td>����
				<td>���b���B
			<%
			ResultSet rs=new eatDAO().query();
				while(rs.next()){
					out.println("<tr>"+
										"<td>"+rs.getInt("id")+
										"<td>"+rs.getString("tnumber")+
										"<td>"+rs.getInt("rice")+
										"<td>"+rs.getInt("noodles")+
										"<td>"+rs.getInt("blacktea")+
										"<td>"+rs.getInt("sum")
							);
				}
			
			%>
				
		</table>
</body>
</html>