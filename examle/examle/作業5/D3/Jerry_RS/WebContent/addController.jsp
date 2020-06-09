<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="model.foods"
    import="DAO.orderDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
</head>
<body>
<%
	String Desk = request.getParameter("desk");
	if(!Desk.equals("null")){
		int desk=Integer.parseInt(request.getParameter("desk"));
		int fish=Integer.parseInt(request.getParameter("fish"));
		int pork=Integer.parseInt(request.getParameter("pork"));
		int beef=Integer.parseInt(request.getParameter("beef"));
		
		foods f=new foods();
		f.setDesk(desk);
		f.setFish(fish);
		f.setPork(pork);
		f.setBeef(beef);
		new orderDAO().add(f);
		session.setAttribute("F", f);
		response.sendRedirect("addok.jsp");
	}else{
		response.sendRedirect("add.jsp");
	}
	%>
</body>
</html>