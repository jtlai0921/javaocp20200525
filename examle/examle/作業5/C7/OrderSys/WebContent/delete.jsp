<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="Model.forder"
    import="DAO.forderDAO"
    import="java.sql.ResultSet"%>
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
	<form action="delete.jsp" method="post">
		<table width=300 align=center>
			<tr>
				<td>id
				<td><input type="text" name="id" size=5 value="0">				
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

	forder f=new forder();
	forderDAO fd=new forderDAO();
	fd.delete(id);
	

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