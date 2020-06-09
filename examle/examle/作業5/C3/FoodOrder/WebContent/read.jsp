<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.ResultSet"
    import="DAO.TWorderDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" type="text/css" href="CssModel.css">
<body>
<div class="header"><h1>Check your order</h1></div>

<div class="content">

<table width="500px" align=center border=1>
	<form action="read.jsp" methods="post">	
		<tr>
				<td>Table Number
				<td colspan=3 align=center><input type="text" name="Tableid">
				<td colspan=3 align=center><input type="submit" value="submit">
				<br>
</table>

<jsp:include page="ContentModel.jsp"/>


</div>


<div class="footer">
<h3><a href="index.jsp">HOME</a></h3>
</div>

</body>
</html>