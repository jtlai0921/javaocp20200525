<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "Dao.DB"
    %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="cssEX.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
DB.getConn();
%>

<table class=logintable border="10" width=25%>
	<tr>
		<td>
			<table border="0" width="100%">
				<tr>
					<td class="login" width="50%" align="center"><a href="user1.jsp"><img alt="" src="pic/button.jpg"></a>
					<td class="login" width="50%" align="center"><a href="manager1.jsp"><img alt="" src="pic/button1.jpg"></a>
			</table>
</table>
	
</body>
</html>