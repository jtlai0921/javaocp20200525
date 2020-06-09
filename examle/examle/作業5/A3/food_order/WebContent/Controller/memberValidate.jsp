<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import ="Dao.memberDao"
    import ="Model.member"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
</head>
<body>
<%
String name=request.getParameter("name");
String password=request.getParameter("password");
member m = new member();
m.setName(name);
m.setPassword(password);

boolean x=memberDao.query(m);

if(x)
{
	session.setAttribute("NAME", name);
	
	response.sendRedirect("../index1.jsp");
}
else
{
	
	response.sendRedirect("../index1_1.jsp");
}




%>

</body>
</html>