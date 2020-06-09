<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="model.cafe"
    import="Dao.cafeDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
</head>
<body>
<%
cafe c=(cafe)session.getAttribute("C");
/*int tableNum=Integer.parseInt(request.getParameter("tableNum"));
int setA=Integer.parseInt(request.getParameter("setA"));
int setB=Integer.parseInt(request.getParameter("setB"));
int setC=Integer.parseInt(request.getParameter("setC"));*/
int add1=Integer.parseInt(request.getParameter("add1"));
int add2=Integer.parseInt(request.getParameter("add2"));
int add3=Integer.parseInt(request.getParameter("add3"));
/*c.setTableNum(tableNum);
c.setSetA(setA);
c.setSetB(setB);
c.setSetC(setC);*/
c.setAdd1(add1);
c.setAdd2(add2);
c.setAdd3(add3);

new cafeDAO().add(c);
session.setAttribute("C", c);
response.sendRedirect("../addok.jsp"); //..為回上一個資料夾

%>
</body>
</html>