<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="java.sql.ResultSet"
    import="Dao.cafeDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>�d�߭q��</title>
<link href="layout.css" rel="stylesheet" type="text/css">
</head>
<body>
<div id="header">
	<h1>Zion Cafe'</h1>
</div>

<div id="nav">	
	<ul>
		<li><a href="index.jsp">����</a></li>
		<li><a href="add.jsp">�s�W�\�I</a></li>
		<li><a href="query.jsp">�d���\�I</a></li>
		<li><a href="update.jsp">�ק��\�I</a></li>
		<li><a href="delete.jsp">�R���\�I</a></li>
	</ul>
</div>

<div id="content">
	<form action="query.jsp" method="post">
	<table width=960 align=center border=1>
	<tr>
	<td>�渹: <input type="text" name="id" size=3><input type="submit" value="ok">
	</table>
	</form>
<hr>
<table width=960  align=center border=1>
<% 
try
{
	
		String Id=request.getParameter("id");
		int id=Integer.parseInt(Id);

		out.println("<table width=500  align=center border=1><tr><td>�渹<td>�ู");
		
		ResultSet rs=new cafeDAO().query(id);
		while(rs.next())
		{
			if(rs.getInt("setA")>0) out.println("<td>A�\");
			if(rs.getInt("setB")>0) out.println("<td>B�\");
			if(rs.getInt("setC")>0) out.println("<td>C�\");
			if(rs.getInt("add1")>0) out.println("<td>�[�I1");
			if(rs.getInt("add2")>0) out.println("<td>�[�I2");
			if(rs.getInt("add3")>0) out.println("<td>�[�I3");

			out.println("<td>�`��");


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