<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="Model.forder"
    import="DAO.forderDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
</head>
<body>
<%
String[] foods;
String[] qs=new String[4];
foods = request.getParameterValues("food");

for(int i=0;i<foods.length;i++)
{
	qs[i]=request.getParameter(foods[i]);
}
session.setAttribute("FS", foods);
session.setAttribute("QS", qs);

	String desk=request.getParameter("desk");
	int chicken=Integer.parseInt(request.getParameter("chicken"));
	int pork=Integer.parseInt(request.getParameter("pork"));
	int beef=Integer.parseInt(request.getParameter("beef"));
	int fish=Integer.parseInt(request.getParameter("fish"));

	
	forder f=new forder();
	f.setTable(desk);
	f.setChicken(chicken);
	f.setPork(pork);
	f.setBeef(beef);
	f.setFish(fish);
	
	int total=f.getTotal();

	new forderDAO().add(f);

	session.setAttribute("F", f);
	response.sendRedirect("../addok.jsp");

%>
</body>
</html>