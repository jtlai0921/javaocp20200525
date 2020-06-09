<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="DAO.DAOmenu"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="o1.css">

</head>
<%

	String Id=request.getParameter("id");

	if(Id!=null){
		int id=Integer.parseInt(Id);
	new DAOmenu().delete(id);
	}
	
%>
<body>
<div class="header"></div>
	<div class="content">
	 <form action="delete.jsp"method="post">
		<table align="center"  width="40%" height="200" border="3"bgcolor="#EAA31C"><font size="30px"></font>
	 <tr>
	 	<td><h1  align="center">取消餐點</h1>
	 <tr>
		<td><font size="30px" align="center">id:<input type="text"name="id"value="0"></font>
		<tr>
		<td><input type="submit" value="送出" >
		</table>
	</form>
	<jsp:include page="query.jsp"/>
	</div>
	
	<div class="footer">
	<a href="index.jsp">首頁</a>
	</div>
	
</body>

</html>