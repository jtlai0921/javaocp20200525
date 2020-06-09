<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="Dao.ooderDAO"
    import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="sst1.css">
</head>

<%

String Table=request.getParameter("table");

if(Table!=null)
{

int T=Integer.parseInt(Table);

new ooderDAO().delete(T);
}


%>
<body background="pic/back1.jpg" bgProperties=fixed>

<div class="header">
<jsp:include page="title.jsp"/>
</div>
<div class="content">
<form action="delete.jsp" method="post">
		<table width=500 align=center border=0>
			<tr>
			<td >

			table:<input type="text" name="table" size=4>
			<input type="submit" value="確定刪除">
			
		</table>
	</form>
	<hr>
	<table width=300 align=center border=1>
 	 	<tr>
 	 		<td>桌號
 	 		<td>姓名
 	 		<td>輕食
 	 		<td>義大利麵
 	 		<td>燉飯
 	 		<td>總價
 	 		
 	 		<%
 	     	ResultSet rs=new ooderDAO().query();
		    while(rs.next())
		    {
			  out.println("<tr>"+
		 				"<td>"+rs.getInt("tab")+
		 				"<td>"+rs.getString("name")+
		 				"<td>"+rs.getInt("fast")+
		 				"<td>"+rs.getInt("noodle")+
		 				"<td>"+rs.getInt("rice")+
		 				"<td>"+rs.getInt("sum"));
		     }
 	 	%>
 	    
 	
 	</table>

</div>
<div class="footer">
<jsp:include page="end.jsp"/>
</div>

</body>
</html>