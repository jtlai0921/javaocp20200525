<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="model.morder"
    import="Dao.morderDao"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Please Update Your Order</title>
<link rel="stylesheet" type="text/css" href="body.css">
</head>
<%
String ID=request.getParameter("id");
String Name=request.getParameter("name");
String r=request.getParameter("rice");
String n=request.getParameter("noodles");
String h=request.getParameter("hamburger");


if(ID!=null && Name!=null && r!=null && n!=null && h!=null)
{
	int I=Integer.parseInt(ID);
	int R=Integer.parseInt(r);
	int N=Integer.parseInt(n);
	int H=Integer.parseInt(h);
	
	morder m=new morder();
	m.setName(Name);
	m.setRice(R);
	m.setNoodles(N);
	m.setHamburger(H);
	new morderDao().update(I, m);
}

%>
<body>
	<div class="header">
		<jsp:include page="title.jsp"></jsp:include>
	</div>

	<div class="content">
		<form action="update.jsp" method="post">
			<table width=500 align=center border=0>
				<tr>
					<td colspan=3 align=center>
					<font color=#995436><h2>修改訂單</h2></font>
				<tr>
					<td>ID：<input type="text" name="id" size=5>
					<td>姓名：<input type="text" name="name" size=5>	
				<tr>	
					<td>燉飯：<input type="text" name="rice" size=5>
					<td>義大利麵：<input type="text" name="noodles" size=5>
					<td>漢堡：<input type="text" name="hamburger" size=5>
				<tr>
					<td colspan=4 align=center><input type="submit" value="OK">
			</table>
			<jsp:include page="queryList.jsp"></jsp:include>
			<br><marquee direction="right" behavior="alternate" bgcolor="#FFC476">請再次確認好您的餐點，祝您用餐愉快，謝謝^0^</marquee>
		</form>
	</div>
	
	<div class="footer">
		<jsp:include page="home.jsp"></jsp:include>
	</div>
</body>
</html>