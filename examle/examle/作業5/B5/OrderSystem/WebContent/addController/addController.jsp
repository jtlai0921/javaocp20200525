<%@ page language="java" contentType="text/html; charset=BIG5"
    import="DAO.DAOmenu"
    import="MODEL.menu"
    pageEncoding="BIG5"%>
    
<!DOCTYPE html>
<!-- �ϥηs�W���� -->
<html>
<head>
<%
int TableNumber=Integer.parseInt(request.getParameter("tableNumber"));
int a=Integer.parseInt(request.getParameter("A"));
int b=Integer.parseInt(request.getParameter("B"));

menu m=new menu();
m.setA(a);
m.setB(b);
m.setTableNumber(TableNumber);
m.setAp(150);
m.setBp(200);
new DAOmenu().add(m); 
session.setAttribute("M", m);//�����ݩ�

response.sendRedirect("../addok.jsp");//�^������w�a�}   ../ ->���w�W�h��Ƨ�


%>
<meta charset="BIG5">
<title>Insert title here</title>
</head>
<body>
	
</body>
</html>