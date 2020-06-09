<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
<%
	String label[] = { "鮭魚握壽司30元", "鮪魚握壽司35元", "焦糖鮭魚肚40元", "鮭魚生魚片45元", "鮭魚肚30元", "鮮蝦35元", "鮪魚沙拉40元", "閃電泡芙45元" };
	int max = 10;
	int u = 0;
	int v = 1;
	int w = 1;
%>
</head>
<body>
	<table border=0 align=center>
		<%
			for (int k = 0; k <= 1; k++) {
				out.print("<tr align=center>");
				for (int i = 1; i <= 4; i++) {
					out.print("<td><img src=pic/" + v + ".png width=60" + "%" + ">");
					v++;
				}
				out.print("<tr align=center>");

				for (int i = 0; i <= 3; i++) {
					out.print("<td>" + label[u]);
					u++;
				}
				out.print("<tr align=center>");
				for (int i = 1; i <= 4; i++) {
					out.print("<td><select name=s" + w + ">");
					w++;
					for (int j = 0; j <= max; j++) {
						out.print("<option value=" + j + ">" + j + "</option>");
					}
					out.print("</select>");
				}
			}
		%>
	</table>
</body>
</html>