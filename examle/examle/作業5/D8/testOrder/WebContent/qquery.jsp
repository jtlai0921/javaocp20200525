<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5" import="dao.sushiDao" import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
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
	ResultSet rs = null;
	rs = new sushiDao().readDb();
%>
</head>
<body>
	<%
		if (rs != null) {
			out.print("<table width=100% border=1 align=center style=" + "\""
					+ "border-top: 3px #FFD382 solid; border-bottom: 3px silver solid;border-collapse:collapse;cellpadding=5"
					+ "\"" + ">");

			out.print("<tr align=center><td>" + label1 + "<td>" + label2 + "<td>" + label3 + "<td>" + label4
					+ "<td>" + label5 + "<td>" + label6 + "<td>" + label13 + "<td>" + label14 + "<td>" + label15
					+ "<td>" + label16 + "<td>" + label7);
			while (rs.next()) {
				out.print("<tr align=center><td>" + rs.getInt("id") + "<td>" + rs.getString("name") + "<td>"
						+ rs.getInt("a1") + "<td>" + rs.getInt("b1") + "<td>" + rs.getInt("c1") + "<td>"
						+ rs.getInt("d1") + "<td>" + rs.getInt("e1") + "<td>" + rs.getInt("f1") + "<td>"
						+ rs.getInt("g1") + "<td>" + rs.getInt("h1") + "<td>" + rs.getInt("sum"));
			}

			out.print("</table>");
			rs.close();
		}
	%>
</body>
</html>