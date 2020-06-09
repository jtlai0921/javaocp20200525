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
session.setAttribute("T", t);//要讓變數t的生命週期也可以維持到其他頁面
response.sendRedirect("../addok.jsp");//因為addok在webContent資料夾裡,../表示上一層
//response.sendRedirect(Sring)做完指到指定頁
%>
</body>
</html>