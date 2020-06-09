<%@ page language="java" contentType="text/html; charset=BIG5"
	import="model.Porder"
    import="Dao.porderDAO"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
</head>
<%

String name=request.getParameter("name");
int ruler=Integer.parseInt(request.getParameter("ruler"));
int pen=Integer.parseInt(request.getParameter("pen"));

Porder p=new Porder();
p.setName(name);
p.setRuler(ruler);
p.setPen(pen);

new porderDAO().add(p);

session.setAttribute("P", p);

response.sendRedirect("addok.jsp");

%>
<body>

</body>
</html>