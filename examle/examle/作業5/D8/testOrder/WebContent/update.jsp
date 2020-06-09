<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5"
	import="model.sushi"
	import="dao.dao"
	import="dao.sushiDao"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="sty1.css">
<%
String Name = request.getParameter("name");
String A1 = request.getParameter("s1");
String B1 = request.getParameter("s2");
String C1 = request.getParameter("s3");
String D1 = request.getParameter("s4");
String Id = request.getParameter("id");
String E1 = request.getParameter("s5");
String F1 = request.getParameter("s6");
String G1 = request.getParameter("s7");
String H1 = request.getParameter("s8");
boolean b = false;
if(Id!=null)
{
	int id = Integer.parseInt(Id);
	sushi su = new sushi(Name, A1, B1, C1, D1, E1, F1, G1, H1);
	new sushiDao().writeDB(id,su);
	b = true;
}
%>
</head>
<body>
	<div class="header">
		<jsp:include page="header.jsp" />
	</div>
	<form action="update.jsp" method="post">
	<div class="content2">

		<p align=center>點餐編號 <input type="text" name="id" size="5">
		桌號 <input type="text" name="name" size="2"></p>

					</div>
				<div class="content3">
				<%
						if(b==true)
						{
							out.print("<h2 align=center><font color=red>修改成功</font></h2>");
						}
						%>
				<jsp:include page="Order.jsp"/>
				</div>
				<div class="content4">
						<p align=center><input type="submit" value="修改送出" style="width:50%;height:2.5em;font-size:2em;">
						
						</p>
	</div>
	</form>
	<div class="footer">
		<jsp:include page="footer.jsp" />
	</div>
</body>
</html>