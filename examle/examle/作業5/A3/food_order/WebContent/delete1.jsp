<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import = "Model.porder"
    import = "Dao.porderDao"
    import = "java.sql.ResultSet"
    import = "java.sql.Connection"
    import = "Dao.DbConn" 
    import = "java.sql.PreparedStatement"
    import = "java.sql.SQLException"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>�I�\�t��</title>
<link rel="stylesheet" href="https://apps.bdimg.com/libs/jquerymobile/1.4.5/jquery.mobile-1.4.5.min.css">
<script src="https://apps.bdimg.com/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="https://apps.bdimg.com/libs/jquerymobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
</head>
<body>
	<div data-role="header">
    <h1>�I�\�t��</h1>
  	</div>
  	<form action = "delete1.jsp" method = "post" >
  	<h1>�R���q��</h1>
      	�q��:<input type = "number" name = "id" size=5 min="0" max="1000">
      <table>
      <tr>
      		<td>
      		<input type="submit" value="�R��" onclick="msg()">
      		</td>
      </tr>
      </table>
  	</form>
  	<script>
	function msg() {
	  alert("�R���q�榨�\");
	}
	</script>

<table width=500 align=center border=1>
    
    <tr>
        <td width=50>�q��
        <td width=50>�ู
        <td width=50>A�\
        <td width=50>B�\
        <td width=50>C�\
        <td width=50>�`��
     <tr>

<%
String id = request.getParameter("id");

if(id!=null)
{
	int id1 = Integer.parseInt(id);
	new porderDao().delete(id1);
}
	ResultSet rs = new porderDao().query1();

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

%>
</table>  	
<a href = "index1.jsp" data-role="button">��^����</a>  	
<div data-role="footer"><h1>�u�W����</h1></div>  
</body>
</html>