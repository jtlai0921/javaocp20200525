<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="model.member"
    import="dao.memberDao"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
</head>
<body>
<%
	String Name=request.getParameter("name");
	String Address=request.getParameter("address");
	
	member m=new member();
	m.setName(Name);
	m.setAddress(Address);
	
	new memberDao().add(m);
	response.sendRedirect("../Login.jsp");
%>

</body>
</html>