<%@ page language="java" contentType="text/html; charset=BIG5"
    import="MODEL.menu"
	import="DAO.DAOmenu"    
    pageEncoding="BIG5"%>
    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="o1.css">

<meta charset="BIG5">
<title>Insert title here</title>
<%
	
	String TableNumber=request.getParameter("tableNumber");
	String a=request.getParameter("A");
	String b=request.getParameter("B");
	String Id=request.getParameter("id");
	if(Id!=null&&TableNumber!=null&&a!=null&&b!=null){
		int T=Integer.parseInt(TableNumber);
		int aa=Integer.parseInt(a);
		int bb=Integer.parseInt(b);
		int ID=Integer.parseInt(Id);
	menu m=new menu();
	m.setA(aa);
	m.setB(bb);
	m.setTableNumber(T);
	m.setAp(150);
	m.setBp(200);
	new DAOmenu().update(ID, m);
	}
	
%>
</head>
<body>
<div class="header"></div>
	<div class="content">
	<form action="update.jsp" method="post">
	<table align="center" size="35" bgcolor="#EAA31C">
	<tr>
		<td align="center"><h1>修改餐點</h1>
	<tr>
		<td><a>id:<input type="text"name="id"value="0"></a>
	<TR>
		<TD><A>桌號:<input type="text"name ="tableNumber"value="0"></A>
	<tr>
		<td><a>A餐-150元:<input type="text"name="A"value="0">份</a>
	<TR>
		<td><a>B餐-200元:<input type="text"name="B"value="0">份</a>
	<TR>
		<td><input type="submit" value="送出">
	
	
	</table>
	</form>
	<jsp:include page="query.jsp"/>
	</div>
	<div class="footer">
	<a href="index.jsp">首頁</a>
	</div>
</body>
</html>