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
String s=request.getParameter("customer");
int n=Integer.parseInt(request.getParameter("num"));
int m=Integer.parseInt(request.getParameter("mac"));
int as=Integer.parseInt(request.getParameter("steak"));
int f=Integer.parseInt(request.getParameter("fries"));
if(n>=0&&m>=0&&as>=0&&f>=0){
Diner o=new Diner();
o.setName(s);
o.setTable(n);
o.setMac(m);
o.setSteak(as);
o.setFries(f);
new DinerDao().add(o);
session.setAttribute("o", o);
response.sendRedirect("../addok.jsp");
}else{
	out.println("請核對訂單數量");
	response.sendRedirect("../addnook.jsp");
	
}



%>
</body>
</html>