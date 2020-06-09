<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="model.cafe"
    import="Dao.cafeDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>訂單已送出</title>
<link href="layout.css" rel="stylesheet" type="text/css">
</head>
<% 
	/*cafe c=new cafe(); 
	int tableNum=Integer.parseInt(request.getParameter("tableNum"));
	int setA=Integer.parseInt(request.getParameter("setA"));
	int setB=Integer.parseInt(request.getParameter("setB"));
	int setC=Integer.parseInt(request.getParameter("setC"));
	int add1=Integer.parseInt(request.getParameter("add1"));
	int add2=Integer.parseInt(request.getParameter("add2"));
	int add3=Integer.parseInt(request.getParameter("add3"));
	c.setTableNum(tableNum);
	c.setSetA(setA);
	c.setSetB(setB);
	c.setSetC(setC);
	c.setAdd1(add1);
	c.setAdd2(add2);
	c.setAdd3(add3);
	
	new cafeDAO().add(c);*/
	cafe c=(cafe)session.getAttribute("C");

%>
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
	<table width="960" align=center border=1>
		<tr>
			<td colspan=3 align=center>桌號<%=c.getTableNum()%>的餐點為：
		<%
			
			if(c.getSetA()!=0)
			{
				out.println("<tr>"+
						"<td width=100><td width=100>套餐A<td>"+c.getSetA()+" 份");	
			}
			if(c.getSetB()!=0)
			{
				out.println("<tr>"+
						"<td width=100><td width=100>套餐B<td>"+c.getSetB()+" 份");	
			}
			if(c.getSetC()!=0)
			{
				out.println("<tr>"+
						"<td width=100><td width=100>套餐C<td>"+c.getSetC()+" 份");	
			}
			
			if(c.getAdd1()!=0)
			{
				out.println("<tr>"+
						"<td width=100><td width=100>加點1<td>"+c.getAdd1()+" 份");	
			}
			if(c.getAdd2()!=0)
			{
				out.println("<tr>"+
						"<td width=100><td width=100>加點2<td>"+c.getAdd2()+" 份");	
			}
			if(c.getAdd3()!=0)
			{
				out.println("<tr>"+
						"<td width=100><td width=100>加點3<td>"+c.getAdd3()+" 份");	
			}
		
		out.println("<tr><td colspan=3 align=center>一共"+c.getSum()+"<br>");
		%>
	</table>
</div>	
<div id="footer">
	<h2>COPYRIGHT (C) ABC CO., LTD. ALL RIGHTS RESERVED.</h2>
</div>
<%
session.removeAttribute("C");
%>
</body>
</html>