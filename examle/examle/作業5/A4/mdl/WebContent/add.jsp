<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Please Add Your Order</title>
<link rel="stylesheet" type="text/css" href="body.css">
</head>
<%
String Name=(String)session.getAttribute("NAME");
%>
<body>
	<div class="header">
		<jsp:include page="title.jsp"></jsp:include>
	</div>
	
	<div class="content">
		<form action="Controller/addController.jsp" method="post">
			<table width=500 align=center border=0>
				<tr>
					<td colspan=3 align=center>
					<font color=#995436><h2>�s�W�q��</h2></font>
				<tr>
					<td colspan=3 width=100 align=center><%=Name %> �п�J�A�n���ƶq:
				<tr>
					<td width=100 align=right valign=bottom>�L���G
					<td width=100 valign=bottom><select name="rice">
    					<jsp:include page="select.jsp"></jsp:include>
  					</select> ��
  					<td rowspan=2><img src="pic/Price.jpg" width=300 hight=200>
  				<tr>
  					<td colspan=2 align=center valign=top>�C��100��
				<tr>
					<td width=100 align=right valign=bottom>�q�j�Q�ѡG
					<td width=100 valign=bottom><select name="noodles">
    					<jsp:include page="select.jsp"></jsp:include>
  					</select> ��
  					<td rowspan=2><img src="pic/Pnoodles.jpg" width=300 hight=200>
  				<tr>
  					<td colspan=2 align=center valign=top>�C��110��
				<tr>
					<td width=100 align=right valign=bottom>�~���G
					<td width=100 valign=bottom><select name="hamburger">
    					<jsp:include page="select.jsp"></jsp:include>
  					</select> ��
  					<td rowspan=2><img src="pic/Phamburger.jpg" width=300 hight=200>
  				<tr>
  					<td colspan=2 align=center valign=top>�C��110��
				<tr>
					<td colspan=3 align=center>
					<input type="submit" value="�e�X">
			</table>	
		</form>
	</div>
	
	<div class="footer">
		<jsp:include page="home.jsp"></jsp:include>		
	</div>
</body>
</html>