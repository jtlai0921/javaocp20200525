<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import = "Model.porder"
    import = "Dao.porderDao"
    import = "java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>翴繺╰参</title>
<link rel="stylesheet" href="https://apps.bdimg.com/libs/jquerymobile/1.4.5/jquery.mobile-1.4.5.min.css">
<script src="https://apps.bdimg.com/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="https://apps.bdimg.com/libs/jquerymobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
</head>
<body>
	<div data-role="header">
    <h1>翴繺╰参</h1>
  	</div>
  	<form action = "query2.jsp" method = "post" >
  	<h1>琩高璹虫</h1>
      	璹虫:<input type = "number" name = "id" size=5 min="0" max="1000">
      <table>
      <tr>
      		<td>
      		<input type="submit" value="琩高" >
      		</td>
      </tr>
      </table>
  	</form>
  	
<table width=500 align=center border=1>
    
    <tr>
    	<td width=50>璹虫
        <td width=50>腹
        <td width=50>A繺
        <td width=50>B繺
        <td width=50>C繺
        <td width=50>羆基
     <tr>

<%
String id = request.getParameter("id");
if(id!=null){
int id1 = Integer.parseInt(id);

ResultSet rs = new porderDao().query(id1);

while(rs.next())
{
	
	out.println("<tr>"+
				"<td>"+rs.getInt("id")+
				"<td>"+rs.getInt("tb")+
				"<td>"+rs.getInt("a")+
				"<td>"+rs.getInt("b")+ 
				"<td>"+rs.getInt("c")+
				"<td>"+rs.getInt("price"));
}
}
%>
</table>
<a href = "index1.jsp" data-role="button"></a>  	
<div data-role="footer"><h1>絬</h1></div>  
</body>
</html>