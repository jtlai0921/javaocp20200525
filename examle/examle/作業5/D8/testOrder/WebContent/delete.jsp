<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5" import="dao.sushiDao"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="sty1.css">
<%
	boolean b = false;
	String Id = request.getParameter("id");
	if (Id != null) {
		new sushiDao().writeDB(Integer.parseInt(Id));
		b = true;
	}
%>
</head>
<body>
	<div class="header">
		<jsp:include page="header.jsp" />
	</div>
	<div class="content">
		<form action="delete.jsp" method="post">
			<table width=600px align=center border=0>
				<tr>
					<td align=right>請輸入要刪除餐點的編號
					<td align=left><input type="text" name="id" size="5">
					<td><input type="submit" value="送出"> <%
 	if (b == true) {
 		out.print("<tr align=center><td colspan=3>刪除成功");
 	}
 %> 
			</table>
			<jsp:include page="qquery.jsp"/>
		</form>
	</div>
	<div class="footer">
		<jsp:include page="footer.jsp" />
	</div>
</body>
</html>