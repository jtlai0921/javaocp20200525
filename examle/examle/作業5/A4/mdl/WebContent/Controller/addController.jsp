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

//����m�A�ܦ������ܼơAaddok.jsp�~��������

session.setAttribute("M", m);

//���k�ǵ�addok.jsp
//�p�G��addController.jsp�B�~��b��Lpackage�A�n�g("../addok.jsp")�A�ݦ��X�h�A�N�X��../
response.sendRedirect("../addok.jsp");
%>
</body>
</html>