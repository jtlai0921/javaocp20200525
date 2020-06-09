<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="Dao.torderDAO"
    import="Model.torder"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>English Afternoon Tea Shop/Modify</title>
<link rel="stylesheet" type="text/css" href="st1.css">
</head>
<%
String TableNo=request.getParameter("tableNo");
String Yeovil=request.getParameter("yeovil");
String Kenilworth=request.getParameter("kenilworth");
String Farnham=request.getParameter("farnham");
String ID=request.getParameter("id");
//out.println(TableNo+","+Yeovil+","+Kenilworth+","+Farnham+","+ID);
if(TableNo!=null && Yeovil!=null && Kenilworth!=null && Farnham!=null && ID!=null)
{
	int T=Integer.parseInt(TableNo);
	int Y=Integer.parseInt(Yeovil);
	int K=Integer.parseInt(Kenilworth);
	int F=Integer.parseInt(Farnham);
	int I=Integer.parseInt(ID);
	
	torder t=new torder();
	t.setTableNo(T);
	t.setYeovil(Y);
	t.setKenilworth(K);
	t.setFarnham(F);
	new torderDAO().update(I,t);
}
%>
<body background="pic/back2.jpg"bgProperties=fixed>

<div class="header">
<p class="title"> English Afternoon Tea Shop </p>
</div>
<div class="content">
	<form action="update.jsp" method="post">
		<table width=500 align=center border=0>
		<tr>
			<td>
			ID:<input type="text" name="id" size=4>
			Table No.:<input type="text" name="tableNo" size=5>
			<br>
			Yeovil:<input type="text" name="yeovil" size=5>
			Kenilworth:<input type="text" name="kenilworth" size=5>
			Farnham:<input type="text" name="farnham" size=5>
			
			<input type="submit" value="ok">
		</table>
	</form>
	<hr>
	<jsp:include page="Q.jsp"/>	
</div>
<div class="footer">
	<a href="index.jsp"><img alt="Home" src="pic/home.png"></a><br>
</div>

</body>
</html>