<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="Model.torder"
    import="Dao.torderDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
</head>
<body>
<%
int TableNo=Integer.parseInt(request.getParameter("TableNo"));
int Yeovil=Integer.parseInt(request.getParameter("yeovil"));
int Kenilworth=Integer.parseInt(request.getParameter("kenilworth"));
int Farnham=Integer.parseInt(request.getParameter("farnham"));

torder t=new torder();
t.setTableNo(TableNo);
t.setYeovil(Yeovil);
t.setKenilworth(Kenilworth);
t.setFarnham(Farnham);

new torderDAO().add(t);
session.setAttribute("T", t);//�n���ܼ�t���ͩR�g���]�i�H�������L����
response.sendRedirect("../addok.jsp");//�]��addok�bwebContent��Ƨ���,../��ܤW�@�h
//response.sendRedirect(Sring)����������w��
%>
</body>
</html>