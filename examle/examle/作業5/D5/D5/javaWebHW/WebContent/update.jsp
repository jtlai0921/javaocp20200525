<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5"
	import="Dao.hworderDAO"
    import="model.order"
    import="java.sql.ResultSet"
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="st1.css">
</head>
<style>
a {
    text-decoration:none
	}
</style>
<%
String rice=request.getParameter("rice");
String pasta=request.getParameter("pasta");
String hamburger=request.getParameter("hamburger");
String steak=request.getParameter("steak");
String ID=request.getParameter("id");

if(rice!=null && pasta!=null && hamburger!=null && steak!=null && ID!=null)
{	int r=Integer.parseInt(rice);
	int y=Integer.parseInt(pasta);
	int h=Integer.parseInt(hamburger);
	int s=Integer.parseInt(steak);
	int I=Integer.parseInt(ID);
	
	order p=new order();
	p.setRice(r);
	p.setPasta(y);
	p.setHamburger(h);
	p.setSteak(s);
	new hworderDAO().update(I, p);
}
//trye{} catch()
%>
<body background="pic/star.jpg">
<div class=header align=center >
		 <font face="�з���" size=5><h2>�ק�q��</h2>
		 <h4><a href="add.jsp" target=_self>�s�W</a>
			<a href="update.jsp" target=_self>�ק�</a>
			<a href="delete.jsp" target=_self>�R��</a>
								</h4></font>
</div>
<div class=content>
	<form action="update.jsp" method="post">
		<table width=630 align=center border=0>
			<tr>
			<td>
			<b>�s��<input type="text" name="id" size=4 value=0>
			����<input type="text" name="rice" size=5 value=0>
			�q�j�Q��<input type="text" name="pasta" size=5 value=0>
			�~��<input type="text" name="hamburger" size=5 value=0>
			����</b><input type="text" name="steak" size=5 value=0>
			<input type="submit" value="�e�X">
			</table>
	</form>
	<hr>
	<table width=500  align=center border=1>
		<tr>
			<td align=center>�s��</td>
			<td align=center>����</td>
			<td align=center>�q�j�Q��</td>
			<td align=center>�~��</td>
			<td align=center>����</td>
			<td align=center>�`��</td>
			</tr>
				
	<%
	ResultSet rs=new hworderDAO().query();	
	while(rs.next())
	{
		out.println("<tr>"+/*jsp�̭��n��<tr><td>����*/
					"<td align=center>"+rs.getInt("id")+
					"<td align=center>"+rs.getInt("rice")+
					"<td align=center>"+rs.getInt("pasta")+
					"<td align=center>"+rs.getInt("hamburger")+
					"<td align=center>"+rs.getInt("steak")+
					"<td align=center>"+rs.getInt("sum"));
		}
	%>
	</table>
</div>
<div class=footer>
<h2  align=center><a href="index.jsp"><font face="�з���" size=6>����</font></a></h2>
</div>
</body>
<%session.removeAttribute("pp");%>
</html>