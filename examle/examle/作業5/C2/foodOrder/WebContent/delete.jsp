<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="Dao.forderDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>�R���q��</title>
<link rel="stylesheet" type="text/css" href="st1.css">

	<%

	String ID=request.getParameter("id");

	if(ID!=null)
	{
		int I=Integer.parseInt(ID);
		
		new forderDAO().delete(I);
	}

	%>
</head>
<body>

<div class="header" >
	<font size=5 color=#A7988A><b>JAVA RESTAURANT</b></font>
</div>
	
	<div class="content">
	
	<form action="delete.jsp" method="post">
		<table width=500 align=center border=0>
			<tr>
			<td >
			id:<input type="text" name="id" size=4>
				<input type="submit" value="ok">
		</table>
	</form>
	<hr>
	<jsp:include page="Q.jsp"/>
	</div>
	
<div class="footer" style="text-align:center;">
<a href="index.jsp"><font size=3 color=#FCFEE7>HOME</font></a>
&emsp;
<a href="add.jsp"><font size=3 color=#FCFEE7>�s�W�q��</font></a>
&emsp;
<a href="query.jsp"><font size=3 color=#FCFEE7>�d�߭q��</font></a>
&emsp;
<a href="update.jsp"><font size=3 color=#FCFEE7>��s�q��</font></a>


</div>

</body>
</html>