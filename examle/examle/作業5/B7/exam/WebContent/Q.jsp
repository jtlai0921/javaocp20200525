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
		<td width=50>編號
		<td>姓名
		<td>桌號
		<td>阿囉哈鳳梨牛肉漢堡
		<td>3 layers 韓式炸雞
		<td>白雲冰沙奶昔
		<td>總金額
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