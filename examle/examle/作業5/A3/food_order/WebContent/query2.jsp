<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import = "Model.porder"
    import = "Dao.porderDao"
    import = "java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>點餐系統</title>
<link rel="stylesheet" href="https://apps.bdimg.com/libs/jquerymobile/1.4.5/jquery.mobile-1.4.5.min.css">
<script src="https://apps.bdimg.com/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="https://apps.bdimg.com/libs/jquerymobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
</head>
<body>
	<div data-role="header">
    <h1>點餐系統</h1>
  	</div>
  	<form action = "query2.jsp" method = "post" >
  	<h1>查詢訂單</h1>
      	訂單:<input type = "number" name = "id" size=5 min="0" max="1000">
      <table>
      <tr>
      		<td>
      		<input type="submit" value="查詢" >
      		</td>
      </tr>
      </table>
  	</form>
  	
<table width=500 align=center border=1>
    
    <tr>
    	<td width=50>訂單
        <td width=50>桌號
        <td width=50>A餐
        <td width=50>B餐
        <td width=50>C餐
        <td width=50>總價
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
<a href = "index1.jsp" data-role="button">返回首頁</a>  	
<div data-role="footer"><h1>線上美食</h1></div>  
</body>
</html>