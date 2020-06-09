<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="Dao.morderDao"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Please Delete Your Order</title>
<link rel="stylesheet" type="text/css" href="body.css">
</head>
<%
String ID=request.getParameter("id");

if(ID!=null)
{
	int I=Integer.parseInt(ID);

	new morderDao().delete(I);
}
%>
<body>
	<div class="header">
		<jsp:include page="title.jsp"></jsp:include>
	</div>

	<div class="content">
		<form action="delete.jsp" method="post">
			<table width=500 align=center border=0>
				<tr>
					<td align=center>
					<font color=#995436><h2>刪除訂單</h2></font>
				<tr>
					<td align=center>
						ID：<input type="text" name="id" size=5>	
						<input type="submit" value="OK">
				<tr>
					<td>
						<jsp:include page="queryList.jsp"></jsp:include>
			</table>
		</form>
	</div>
	
	<div class="footer">
		<jsp:include page="home.jsp"></jsp:include>
	</div>
</body>
</html>