<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="Dao.menuDAO"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>�����m�������\-�R��</title>
<style type="text/css">
#abc
{
	background-color:#826C7F;
	font-family:"Times New Roman",Times,serif;
	
}

.abc2
{
	background-color:#5D4E60;
}

</style>
<%

String ID=request.getParameter("id");

if( ID!=null)
{
	
	int I=Integer.parseInt(ID);	
	
	new menuDAO().delete(I);
}

%>
</head>
<body background="pic/back.jpg">



	<form action="delete.jsp" method="post">
		<table width=1000 align=center border=0>
		       <tr id="abc">
			   <td colspan=3 align=center><h1>�R���q��</h1>
			   <b>�s���G</b><input type="text" name="id" size=5>
			   <input type="submit" value="�R��">	
			<tr>
			            					
		</table>
	</form>
	<hr>
<jsp:include page="Q.jsp"/>


<table border=1 align=center width=20%>
<tr>
		<td colspan=3 align=center height=20>
		<font size=4 color=#AA0022>SWEAR Brunch</font>
        <a href="index.jsp" ><h3>*�^������*</h3></a>

</body>
</html>