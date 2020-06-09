<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="java.sql.ResultSet"
    import="Dao.cafeDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>查詢訂單</title>
<link href="layout.css" rel="stylesheet" type="text/css">
</head>
<body>
<div id="header">
	<h1>Zion Cafe'</h1>
</div>

<div id="nav">	
	<ul>
		<li><a href="index.jsp">首頁</a></li>
		<li><a href="add.jsp">新增餐點</a></li>
		<li><a href="query.jsp">查詢餐點</a></li>
		<li><a href="update.jsp">修改餐點</a></li>
		<li><a href="delete.jsp">刪除餐點</a></li>
	</ul>
</div>

<div id="content">
	<form action="query.jsp" method="post">
	<table width=960 align=center border=1>
	<tr>
	<td>單號: <input type="text" name="id" size=3><input type="submit" value="ok">
	</table>
	</form>
<hr>
<table width=960  align=center border=1>
<% 
try
{
	
		String Id=request.getParameter("id");
		int id=Integer.parseInt(Id);

		out.println("<table width=500  align=center border=1><tr><td>單號<td>桌號");
		
		ResultSet rs=new cafeDAO().query(id);
		while(rs.next())
		{
			if(rs.getInt("setA")>0) out.println("<td>A餐");
			if(rs.getInt("setB")>0) out.println("<td>B餐");
			if(rs.getInt("setC")>0) out.println("<td>C餐");
			if(rs.getInt("add1")>0) out.println("<td>加點1");
			if(rs.getInt("add2")>0) out.println("<td>加點2");
			if(rs.getInt("add3")>0) out.println("<td>加點3");

			out.println("<td>總價");


			out.println("<tr>"+"<td>"+rs.getInt("id")+"<td>"+rs.getInt("tableNum"));
			if(rs.getInt("setA")>0) out.println("<td>"+rs.getInt("setA"));
			if(rs.getInt("setB")>0) out.println("<td>"+rs.getInt("setB"));
			if(rs.getInt("setC")>0) out.println("<td>"+rs.getInt("setC"));
			if(rs.getInt("add1")>0) out.println("<td>"+rs.getInt("add1"));
			if(rs.getInt("add2")>0) out.println("<td>"+rs.getInt("add2"));
			if(rs.getInt("add3")>0) out.println("<td>"+rs.getInt("add3"));
			out.println("<td>"+rs.getInt("sum"));
			
		}
			
		
}
catch(NumberFormatException e){}
%>		


</table>
</div>
<div id="footer">
	<h2>COPYRIGHT (C) ABC CO., LTD. ALL RIGHTS RESERVED.</h2>
</div>
</body>
</html>