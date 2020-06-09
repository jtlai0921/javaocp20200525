<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="Dao.memberDao"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
</head>
<body>
<%
String Name=request.getParameter("name");

boolean x=memberDao.queryUser(Name);

if(x)
{
	session.setAttribute("NAME", Name);
	response.sendRedirect("../morder.jsp");
}
else
{
	response.sendRedirect("../addmember.jsp");
}
%>
</body>
</html>