<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" import="model.porder" import="DAO.porderDAO"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<title>新增回傳頁</title>
</head>
<%!//宣告方法-->static%>
<%
	/*out.println("name="+request.getParameter("name")+
	"<br>ruler:"+request.getParameter("ruler")+
	"<br>pen:"+request.getParameter("pen"));
	*/

	String new_desk = request.getParameter("new_desk");
	int new_dishes1 = Integer.parseInt(request.getParameter("new_dishes1"));
	int new_dishes2 = Integer.parseInt(request.getParameter("new_dishes2"));
	int new_dishes3 = Integer.parseInt(request.getParameter("new_dishes3"));

	porder p = new porder();
	p.setNew_desk(new_desk);
	p.setNew_dishes1(new_dishes1);
	p.setNew_dishes2(new_dishes2);
	p.setNew_dishes3(new_dishes3);
	int sum = p.getNew_sum();
	new porderDAO().add(p);
	session.setAttribute("P", p);
	response.sendRedirect("addok.jsp");
%>
<body>

</body>
</html>