<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.ResultSet"
    import="DAO.orderDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>查詢</title>
<link rel="stylesheet" type="text/css" href="st1.css"/>
</head>
<body>

<div class="header">
<h1>JERRY_RESTAURANT</h1>

</div>
<div class="topnav">
  
  <a href="update.jsp" TARGET= blank"new"><img alt="update" src="pic/update.png" ></a>
  <a href="delete.jsp" TARGET= blank"new"><img alt="delete" src="pic/delete.png" ></a>
  <a href="index.jsp" TARGET= blank"new"><img alt="index" src="pic/index.png" ></a>
  <a href="add.jsp" TARGET= blank"new"><img alt="add" src="pic/add.png" ></a>
  
</div>
<div class="content">
<jsp:include page="Q.jsp"/>

</div>
<div class=footer>

</div>

</body>
</html>