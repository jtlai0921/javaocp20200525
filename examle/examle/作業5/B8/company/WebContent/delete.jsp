<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="Dao.cafeDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>�R���q��</title>
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
		<li><a href="index.jsp">����</a></li>
		<li><a href="add.jsp">�s�W�\�I</a></li>
		<li><a href="query.jsp">�d���\�I</a></li>
		<li><a href="update.jsp">�ק��\�I</a></li>
		<li><a href="delete.jsp">�R���\�I</a></li>
	</ul>
</div>

<div id="content">
			<form action="delete.jsp" method="post">
				<table width=500 align=center border=1>
					<tr>
					<td>
					�渹:<input type="text" name="id" size=5>
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