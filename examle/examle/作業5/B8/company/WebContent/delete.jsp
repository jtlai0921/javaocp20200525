<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="Dao.cafeDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>刪除訂單</title>
<link href="layout.css" rel="stylesheet" type="text/css">
</head>
<%
String Id=request.getParameter("id");
try	
{	
	int I=Integer.parseInt(Id);
	new cafeDAO().delete(I);
}
catch(NumberFormatException e)
{}
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
			<form action="delete.jsp" method="post">
				<table width=500 align=center border=1>
					<tr>
					<td>
					單號:<input type="text" name="id" size=5>
					<input type="submit" value="ok">
			</table>
		</form>
		<hr>
		<jsp:include page="Q.jsp"/>
</div>
<div id="footer">
	<h2>COPYRIGHT (C) ABC CO., LTD. ALL RIGHTS RESERVED.</h2>
</div>
</body>
</html>