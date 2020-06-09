<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="model.morder"
    import="Dao.morderDao"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Your Order Details</title>
<link rel="stylesheet" type="text/css" href="body.css">
</head>
<%
//用此方法接收addController裡的設定
morder m=(morder)session.getAttribute("M");
String Name=(String)session.getAttribute("NAME");
%>
<body>
	<div class="header">
		<jsp:include page="title.jsp"></jsp:include>
	</div>

	<div class="content">
		<table width=400 align=center border=1>
			<tr>
				<td colspan=2 align=center>以下為 <%=m.getName() %> 先生/小姐的訂單明細
			<tr>
				<td width=200 align=right>燉飯的數量；
				<td align=center><%=m.getRice() %> 份
			<tr>
				<td width=200 align=right>義大利麵的數量：
				<td align=center><%=m.getNoodles() %> 份
			<tr>
				<td width=200 align=right>漢堡的數量：
				<td align=center><%=m.getHamburger() %> 份
			<tr>
				<td width=200 align=center>一共<%=m.getSum() %>元
				<br><h3>~建檔成功~</h3>
				<td width=200 align=center>
					<img src="pic/happy.png" width=150 hight=150>
		</table>
	</div>
	
	<div class="footer">
		<jsp:include page="home.jsp"></jsp:include>
	</div>
	
	<%
	//此為停止addController的方法
	session.removeAttribute("M");
	%>
</body>
</html>