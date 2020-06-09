<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="model.order"
	import="Dao.hworderDAO"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
</head>
<body>
<%
int rice=Integer.parseInt(request.getParameter("rice"));
int pasta=Integer.parseInt(request.getParameter("pasta"));
int hamburger=Integer.parseInt(request.getParameter("hamburger"));
int steak=Integer.parseInt(request.getParameter("steak"));
order p=new order();
p.setRice(rice);
p.setPasta(pasta);
p.setHamburger(hamburger);
p.setSteak(steak);
new hworderDAO().add(p);
session.setAttribute("pp", p);//所有jsp檔都可以使用p變數的功能,名字變成pp
response.sendRedirect("../addok.jsp");//../表示回到前一頁.快速換頁
%>
</body>
</html>