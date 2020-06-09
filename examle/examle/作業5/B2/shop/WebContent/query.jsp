<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="java.sql.ResultSet"
    import="Dao.torderDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>English Afternoon Tea Shop/Query</title>
<link rel="stylesheet" type="text/css" href="st1.css">
</head>

<body background="pic/back2.jpg"bgProperties=fixed>
<div class="header">
<p class="title"> English Afternoon Tea Shop </p>
</div>
<div class="content">
<jsp:include page="Q.jsp"/>
</div>
<div class="footer">
	<a href="index.jsp"><img alt="Home" src="pic/home.png"></a><br>
</div>

</body>
</html>