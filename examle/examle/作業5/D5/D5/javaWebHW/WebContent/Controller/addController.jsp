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
session.setAttribute("pp", p);//�Ҧ�jsp�ɳ��i�H�ϥ�p�ܼƪ��\��,�W�r�ܦ�pp
response.sendRedirect("../addok.jsp");//../��ܦ^��e�@��.�ֳt����
%>
</body>
</html>