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
				<td>編號
				<td>桌號
				<td>白飯
				<td>乾麵
				<td>紅茶
				<td>結帳金額
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