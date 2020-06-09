<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5"
	import="Dao.hworderDAO"
	import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
<head>
<%

String ID=request.getParameter("id");

if( ID!=null)
{
	
	int I=Integer.parseInt(ID);	
	
	new hworderDAO().delete(I);
}

%>
<meta charset="BIG5">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="st1.css">
</head>
<style>
a {
    text-decoration:none
	}
</style>
<body background="pic/star.jpg">
<div class=header align=center align=center><font face="標楷體" size=5><h2>刪除訂單</h2>
							<h4><a href="add.jsp" target=_self>新增</a>
								<a href="query.jsp" target=_self>查詢</a>
								<a href="update.jsp" target=_self>修改</a>
								</h4>
								
</font>
</div>
<div class=content>
	<form action="delete.jsp" method="post">
		<table width=500 align=center border=0>
			<tr>
			<td align=center><b>
			編號</b><input type="text" name="id" size=4 value=0>
			<input type="submit" value="ok">
			
		</table>
	</form>
	<hr>
	<table width=500  align=center border=1>
		<tr>
			<td align=center>編號</td>
			<td align=center>炒飯</td>
			<td align=center>義大利麵</td>
			<td align=center>漢堡</td>
			<td align=center>牛排</td>
			<td align=center>總價</td>
			</tr>
				
	<%
	ResultSet rs=new hworderDAO().query();	
	while(rs.next())
	{
		out.println("<tr>"+/*jsp裡面要用<tr><td>分行*/
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
<h2  align=center><a href="index.jsp"><font face="標楷體" size=6>首頁</font></a></h2>
</div>
</body>
<%session.removeAttribute("pp");%>
</html>