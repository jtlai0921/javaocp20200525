<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5" import="model.sushi" import="dao.dao"
	import="dao.sushiDao" import="java.io.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="sty1.css">
<%
	sushi su = (sushi) session.getAttribute("SU");
	boolean b = false;
	if (su.getSum() > 0){
		b = true;
	}
		
%>
</head>
<body>
	<div class="header">
		<jsp:include page="header.jsp" />
	</div>
	<div class="content">
		<table align=center border=0>
			<tr align=center>
				<td colspan=4>
					<%
						if (b) {
							out.print("翴繺ЧΘ");
						} else {
							out.print("叫穝翴繺");
						}
					%>
				
			<tr align=center>
				<td><img alt="" src="pic/1.png" width=50%>
				<td><img alt="" src="pic/2.png" width=50%>
				<td><img alt="" src="pic/3.png" width=50%>
				<td><img alt="" src="pic/4.png" width=50%>
			<tr align=center>
				<td>计秖:<%=su.getFooda1() %>
				<td>计秖:<%=su.getFoodb1() %>
				<td>计秖:<%=su.getFoodc1() %>
				<td>计秖:<%=su.getFoodd1() %>
			<tr align=center>
				<td><img alt="" src="pic/5.png" width=50%>
				<td><img alt="" src="pic/6.png" width=50%>
				<td><img alt="" src="pic/7.png" width=50%>
				<td><img alt="" src="pic/8.png" width=50%>
			<tr align=center>
				<td>计秖:<%=su.getFoode1() %>
				<td>计秖:<%=su.getFoodf1() %>
				<td>计秖:<%=su.getFoodg1() %>
				<td>计秖:<%=su.getFoodh1() %>
			<tr align=center>
				<td colspan=4>
					<%
						if (b) {
							out.print("羆肂:" + su.getSum() + "じ");
						} else {
							out.print("叫穝翴繺");
						}
					%>
				
		</table>
	</div>
	<div class="footer">
		<jsp:include page="footer.jsp" />
	</div>
<%
session.removeAttribute("SU");
%>



	<%
		/*
		for(Object ou:paramValue)
		{
			out.print("<tr><td>"+ou.toString());
		}
		  */
	%>


</body>
</html>