<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import ="Model.member"
    import ="Dao.memberDao"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
</head>
<body>
<%
    	member m = new member();
		m.setName(request.getParameter("name"));
		m.setPassword(request.getParameter("password"));
		new memberDao().add(m);
		response.sendRedirect("../index1_1.jsp");
%>
</body>
</html>