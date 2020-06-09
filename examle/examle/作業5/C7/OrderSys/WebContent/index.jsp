<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="sty.css">
</head>
<body>
<div class="header">
	<jsp:include page="TITLE.jsp"/>
</div>

<div class="content">
	<table>
		<tr>
			<td><h5><a href="add.jsp">新增訂單</a></h5>
			<td><h5><a href="query.jsp">查詢訂單</a></h5>
			<td><h5><a href="update.jsp">修改訂單</a></h5>
			<td><h5><a href="delete.jsp">刪除訂單</a></h5>
	</table>
</div>
	
<div class="footer">
	<jsp:include page="end.jsp"/>
</div>	
	
	
	
	
	
</body>
</html>