<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="Dao.porderDao"
    import="model.meal"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
</head>
<body>

<%
String number=request.getParameter("number");
int mealA=Integer.parseInt(request.getParameter("mealA"));
int mealB=Integer.parseInt(request.getParameter("mealB"));
int mealC=Integer.parseInt(request.getParameter("mealC"));
int mealD=Integer.parseInt(request.getParameter("mealD"));

meal m=new meal();
m.setNumber(number);
m.setMealA(mealA);
m.setMealB(mealB);
m.setMealC(mealC);
m.setMealD(mealD);

new porderDao().add(m);

session.setAttribute("M", m);

response.sendRedirect("../addok.jsp");
%>

</body>
</html>