<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5" import="dao.sushiDao" import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
<%
	String label1 = "�s��";
	String label2 = "�ู";
	String label3 = "�D�����إq�ƶq";
	String label4 = "�C�����إq�ƶq";
	String label5 = "�J�}�D���{�ƶq";
	String label6 = "�D���ͳ����ƶq";
	String label7 = "�`���B";
	String label13 = "�D���{";
	String label14 = "�A��";
	String label15 = "�C���F��";
	String label16 = "�{�q�w��";
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