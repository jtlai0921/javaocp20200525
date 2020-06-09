<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="model.morder"
    import="Dao.morderDao"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
</head>
<body>
<%
String Name=(String)session.getAttribute("NAME");
int R=Integer.parseInt(request.getParameter("rice"));
int N=Integer.parseInt(request.getParameter("noodles"));
int H=Integer.parseInt(request.getParameter("hamburger"));

morder m=new morder();
m.setName(Name);
m.setRice(R);
m.setNoodles(N);
m.setHamburger(H);

new morderDao().add(m);

//提升m，變成全區變數，addok.jsp才接收的到

session.setAttribute("M", m);

//把方法傳給addok.jsp
//如果此addController.jsp額外放在其他package，要寫("../addok.jsp")，看有幾層，就幾個../
response.sendRedirect("../addok.jsp");
%>
</body>
</html>