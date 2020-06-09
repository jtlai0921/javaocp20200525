<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="model.meal"
    import="Dao.porderDao"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="st1.css">
<%
try {
int id=Integer.parseInt(request.getParameter("id"));

meal m=new meal();

new porderDao().delete(id);
} catch(NumberFormatException e) {
	
}
%>
</head>
<body>
<div class=header>
	<form action="delete.jsp" method="post"><!-- addok.jsp的位置可以在選項後移動
		method="post" 不把資料秀在網址上 -->
			<table width=700 align=center border=0>
				<tr>
				<td>			
				id:<input type="text" name="id" size=4>
				<input type="submit" value="ok">
			</table>
	</form>
</div>

<div class=content>
<jsp:include page="date.jsp"></jsp:include>
</div>

<div class=footer>
<jsp:include page="end.jsp"></jsp:include>
</div>
</body>
</html>