<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="Model.Diner"
    import="Dao.DinerDao"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
</head>
<body>
<%
int a=Integer.parseInt(request.getParameter("num"));
int b=Integer.parseInt(request.getParameter("mac"));
int c=Integer.parseInt(request.getParameter("steak"));
int dd=Integer.parseInt(request.getParameter("fries"));

try{
if(a>=0&&b>=0&&c>=0&&dd>=0){
Diner d=new Diner();
d.setName(request.getParameter("customer"));
d.setTable(Integer.parseInt(request.getParameter("num")));
d.setMac(Integer.parseInt(request.getParameter("mac")));
d.setSteak(Integer.parseInt(request.getParameter("steak")));
d.setFries(Integer.parseInt(request.getParameter("fries")));
int id=Integer.parseInt(request.getParameter("id"));
new DinerDao().update(id, d);
session.setAttribute("d", d);
response.sendRedirect("../updateok.jsp");
}

else{
	out.print("Please Correct Your Order");
	response.sendRedirect("../updatenook.jsp");
}
}catch (NumberFormatException e){
	
}
%>
</body>
</html>