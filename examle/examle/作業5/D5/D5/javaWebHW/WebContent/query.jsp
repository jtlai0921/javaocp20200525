<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5"
	import="java.sql.ResultSet"
    import="Dao.hworderDAO"
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="st1.css">
</head>
<style>
a {
    text-decoration:none
	}
</style>
<body background="pic/star.jpg">
<div class=header align=center ><font face="�з���" size=5><h2>�d�߭q��</h2>
								<h4><a href="add.jsp" target=_self>�s�W</a>
								<a href="update.jsp" target=_self>�ק�</a>
								<a href="delete.jsp" target=_self>�R��</h4></a>
								</font>
</div>
<div class=content>
	<form action="query.jsp" method="post">
		<table width=500 align=center border=0>
			<tr>
			<td align=center><b>
			�s��</b><input type="text" name="id" size=4 value=0>
			<input type="submit" value="ok">
			
		</table>
	</form>
	<hr>
	<jsp:include page="module.jsp"/>
</div>
<div class=footer>
<h2  align=center><a href="index.jsp"><font face="�з���" size=6>����</font></a></h2>
</div>
</body>
<%session.removeAttribute("pp");%>
</html>