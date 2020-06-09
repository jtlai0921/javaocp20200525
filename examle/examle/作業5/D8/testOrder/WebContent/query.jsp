<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5" import="dao.sushiDao" import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="sty1.css">
<%
	String label1 = "編號";
	String label2 = "桌號";
	String label3 = "鮭魚握壽司數量";
	String label4 = "鮪魚握壽司數量";
	String label5 = "焦糖鮭魚肚數量";
	String label6 = "鮭魚生魚片數量";
	String label7 = "總金額";
	String label13 = "鮭魚肚";
	String label14 = "鮮蝦";
	String label15 = "鮪魚沙拉";
	String label16 = "閃電泡芙";
	String s11 = request.getParameter("single");
	String s12 = request.getParameter("all");
	ResultSet rs = null;
	boolean b = false;
	if (s11 != null) {
		String Id = request.getParameter("id");

		if (Id != "") {
			rs = new sushiDao().readDb(Integer.parseInt(Id));
			b = true;
		}
	} else if (s12 != null) {
		rs = new sushiDao().readDb();
	}
%>
</head>
<body>
	<div class="header">
		<jsp:include page="header.jsp" />
	</div>
	<form action="query.jsp" method="post">
		<div class="content2">
			<p align=center>
				請輸入要查詢的編號 <input type="text" name="id" size="5"> <input
					type="submit" name="single" value="單筆查詢送出"> <input
					type="submit" name="all" value="全部查詢送出">
			</p>
		</div>
		<div class="content3">
			<%
				if (rs != null) {
					out.print(
							"<table width=100% border=1 align=center style="+"\""+"border-top: 3px #FFD382 solid; border-bottom: 3px silver solid;border-collapse:collapse;cellpadding=5"+"\""+">");
					if (b == false) {
								
						out.print("<tr align=center><td>" + label1 + "<td>" + label2 + "<td>" + label3 + "<td>" + label4
								+ "<td>" + label5 + "<td>" + label6 + "<td>" + label13 + "<td>" + label14 + "<td>" + label15
								+ "<td>" + label16 + "<td>" + label7);
						while (rs.next()) {
							out.print("<tr align=center><td>" + rs.getInt("id") + "<td>" + rs.getString("name") + "<td>"
									+ rs.getInt("a1") + "<td>" + rs.getInt("b1") + "<td>" + rs.getInt("c1") + "<td>"
									+ rs.getInt("d1") + "<td>" + rs.getInt("e1") + "<td>" + rs.getInt("f1") + "<td>"
									+ rs.getInt("g1") + "<td>" + rs.getInt("h1") + "<td>" + rs.getInt("sum"));
						}
					} else {
						rs.next();
						out.print("<tr align=center><td>訂單編號<td>" + rs.getInt("id") + "<tr align=center><td>" + label2
								+ "<td>" + rs.getString("name") + "<tr align=center><td><img src=pic/1.png width=40%"
								+ "><td>" + label3 + rs.getInt("a1") + "<tr align=center><td><img src=pic/2.png width=40%"
								+ "><td>" + label4 + rs.getInt("b1") + "<tr align=center><td><img src=pic/3.png width=40%"
								+ "><td>" + label5 + rs.getInt("c1") + "<tr align=center><td><img src=pic/4.png width=40%"
								+ "><td>" + label6 + rs.getInt("d1") + "<tr align=center><td><img src=pic/5.png width=40%"
								+ "><td>" + label13 + rs.getInt("e1") + "<tr align=center><td><img src=pic/6.png width=40%"
								+ "><td>" + label14 + rs.getInt("f1") + "<tr align=center><td><img src=pic/7.png width=40%"
								+ "><td>" + label15 + rs.getInt("g1") + "<tr align=center><td><img src=pic/8.png width=40%"
								+ "><td>" + label16 + rs.getInt("h1") +

								"<tr><td align=right>" + label7 + "<td>" + rs.getInt("sum") + "元");
					}
					out.print("</table>");
					rs.close();
				}
			%>
		</div>
	</form>
	<div class="footer">
		<jsp:include page="footer.jsp" />
	</div>
</body>
</html>