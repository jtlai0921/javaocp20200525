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
//�Φ���k����addController�̪��]�w
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
				<td colspan=2 align=center>�H�U�� <%=m.getName() %> ����/�p�j���q�����
			<tr>
				<td width=200 align=right>�L�����ƶq�F
				<td align=center><%=m.getRice() %> ��
			<tr>
				<td width=200 align=right>�q�j�Q�Ѫ��ƶq�G
				<td align=center><%=m.getNoodles() %> ��
			<tr>
				<td width=200 align=right>�~�����ƶq�G
				<td align=center><%=m.getHamburger() %> ��
			<tr>
				<td width=200 align=center>�@�@<%=m.getSum() %>��
				<br><h3>~���ɦ��\~</h3>
				<td width=200 align=center>
					<img src="pic/happy.png" width=150 hight=150>
		</table>
	</div>
	
	<div class="footer">
		<jsp:include page="home.jsp"></jsp:include>
	</div>
	
	<%
	//��������addController����k
	session.removeAttribute("M");
	%>
</body>
</html>