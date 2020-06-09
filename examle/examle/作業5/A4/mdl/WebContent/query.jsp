<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="Dao.morderDao"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Please Check Your Order</title>
<link rel="stylesheet" type="text/css" href="body.css">
</head>
<%
String ID=request.getParameter("id");

if(ID!=null)
{
	int I=Integer.parseInt(ID);

	new morderDao().query2(I);
}
%>
<body>
	<div class="header">
		<jsp:include page="title.jsp"></jsp:include>
	</div>

	<div class="content">
		<form action="query.jsp" method="post">
			<table width=500 align=center border=0>
				<tr>
					<td align=center>
					<font color=#995436><h2>查詢訂單</h2></font>
				<tr>
					<td align=center>
						ID：<input type="text" name="id" size=5>	
						<input type="submit" value="OK">
				<tr>
					<td>
						<jsp:include page="queryList2.jsp"></jsp:include>
				<tr>
					<td hight=130 align=right>
						<img src="pic/query.png" width=90 hight=90>
						<img src="pic/query.png" width=110 hight=110>
						<img src="pic/query.png" width=130 hight=130>
			</table>
		</form>
		
	</div>
		
	<div class="footer">
		<jsp:include page="home.jsp"></jsp:include>
	</div>
</body>
</html>