<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="java.sql.ResultSet"
    import="DAO.forderDAO"
    import="Model.forder"%>
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
	<form action="update.jsp" method="post">
		<table width=600 align=center>
			<tr>
				<td>id
				<td><input type="text" name="id" size=5 value="0">
				<td>�ู
				<td><input type="text" name="desk" size=5 value="0">
				<td>���L��
				<td><input type="text" name="chicken" size=5 value="0">
				<td>�ư���
				<td><input type="text" name="pork" size=5 value="0">
				<td>���d
				<td><input type="text" name="beef" size=5 value="0">
				<td>���ƶ�
				<td><input type="text" name="fish" size=5 value="0">
				
				<td><input type="submit" value="�e�X">	
		</table>
	</form>
	
	<table width=500  align=center border=0>
		<tr>
			<td>�s��
			<td>�ู
			<td>���L��
			<td>�ư���
			<td>���d
			<td>���ƶ�
			<td>�`��
<%
try
{
	int id=Integer.parseInt(request.getParameter("id"));
	String table=request.getParameter("desk");
	int chicken=Integer.parseInt(request.getParameter("chicken"));
	int pork=Integer.parseInt(request.getParameter("pork"));
	int beef=Integer.parseInt(request.getParameter("beef"));
	int fish=Integer.parseInt(request.getParameter("fish"));

	
	forder f=new forder();
	
	f.setTable(table);
	f.setChicken(chicken);
	f.setPork(pork);
	f.setBeef(beef);
	f.setFish(fish);
	
	new forderDAO().update(id, f);
	
}
catch(NumberFormatException e){}

%>
<jsp:include page="qAll.jsp"/>
	</table>
</div>
<div class="footer">
	<jsp:include page="end.jsp"/>
</div>
</body>
</html>