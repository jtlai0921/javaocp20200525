<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="Dao.torderDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>English Afternoon Tea Shop/Cancel</title>
<link rel="stylesheet" type="text/css" href="st1.css">
</head>
<%
String ID=request.getParameter("id");

if(ID!=null)
{
	int I=Integer.parseInt(ID);		

	new torderDAO().delete(I);
}

%>
<body background="pic/back2.jpg"bgProperties=fixed>

<div class="header">
<p class="title"> English Afternoon Tea Shop </p>
</div>
<div class="content">
<form action="delete.jsp" method="post">
		<table width=500 align=center border=0>
		<tr>
			<td>
			ID:<input type="text" name="id" size=4>
			<input type="submit" value="ok">
		</table>
	</form>
	<hr>
	<jsp:include page="Q.jsp"/>
	</div>
</div>
<div class="footer">
	<a href="index.jsp"><img alt="Home" src="pic/home.png"></a><br>
</div>

</body>
</html>