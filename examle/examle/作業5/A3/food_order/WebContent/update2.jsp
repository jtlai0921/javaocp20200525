<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import = "Model.porder"
    import = "Dao.porderDao"
    import = "java.sql.ResultSet"%>
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
<form action = "update2.jsp" method = "post" >
  	<h1>�ק�q��</h1>
      	�q��:<input type = "number" name = "id" size=5 min="0" max="1000">
      	�ู:<input type = "number" name = "tb" size=5 min="0" max="10">
      <table>
      <tr>
      		<td><img alt="A" src="a.png" align="left" width="100"></td>
      		<td>A�\(80��)</td>
      		<td>�ƶq</td>
      		<td><input type = "number" name = "a" size=5></td>
      
      		<td><img alt="A" src="b.png" align="left" width="100"></td>
      		<td>B�\(95��)</td>
      		<td>�ƶq</td>
      		<td><input type = "number" name = "b" size=5></td>
      
      		<td><img alt="A" src="c.png" align="left" width="100"></td>
      		<td>C�\(75��)</td>
      		<td>�ƶq</td>
      		<td><input type = "number" name = "c" size=5 ></td>
      		
      		<td>
      		<input type="submit" value="�ק�" onclick="msg()">
      		</td>
      </tr>
      </table>
  	</form>
  	<script>
	function msg() {
	  alert("�ק�q�榨�\");
	}
	</script>
<table width=500 align=center border=1>
    
    <tr>
    	<td width=50>�q��
        <td width=50>�ู
        <td width=50>A�\
        <td width=50>B�\
        <td width=20>C�\
        <td width=30>�`��
     <tr>
<%
String id = request.getParameter("id");
String tb = request.getParameter("tb");
String a = request.getParameter("a");
String b = request.getParameter("b");
String c = request.getParameter("c");


porder p = new porder();
if(id!=null && tb!=null && a!=null && b!=null && c!=null)
{
int id1 = Integer.parseInt(id);
int tb1 = Integer.parseInt(tb);
int a1 = Integer.parseInt(a);
int b1 = Integer.parseInt(b);
int c1 = Integer.parseInt(c);

p.setTable(tb1);
p.setA(a1);
p.setB(b1);
p.setC(c1);

new porderDao().update(id1, p);
}
%>
<%

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