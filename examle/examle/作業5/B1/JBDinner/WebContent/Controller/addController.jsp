<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="model.ooder"
    import="Dao.ooderDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
</head>
<body>
<%
String name=request.getParameter("name");
int fast=Integer.parseInt(request.getParameter("fast"));
int noodle=Integer.parseInt(request.getParameter("noodle"));
int rice=Integer.parseInt(request.getParameter("rice"));

ooder o1=new ooder();
o1.setName(name);
o1.setFast(fast);
o1.setNoodle(noodle);
o1.setRice(rice);

new ooderDAO().add(o1);
session.setAttribute("O", o1);


response.sendRedirect("../addok.jsp");
%>
</body>
</html>