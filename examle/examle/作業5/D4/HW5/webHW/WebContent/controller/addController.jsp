<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "model.porder"
    import = "Dao.porderDao"
    import="java.util.Date"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	String tablenum = request.getParameter("tablenum");
	String sirlon = request.getParameter("sirlon");
	String filet = request.getParameter("filet");
	String soup = request.getParameter("soup");
	String bread = request.getParameter("bread");
	String cola = request.getParameter("cola");
	String juice = request.getParameter("juice");
	if(tablenum != null){
		porder p = new porder();
		p.setTablenum(Integer.parseInt(tablenum));
		p.setSirlon(Integer.parseInt(sirlon));
		p.setFilet(Integer.parseInt(filet));
		p.setSoup(Integer.parseInt(soup));
		p.setBread(Integer.parseInt(bread));
		p.setCola(Integer.parseInt(cola));
		p.setJuice(Integer.parseInt(juice));
		Date date = new Date();
		p.setDate(date);
		porderDao.add(p);
	}
	
	response.sendRedirect("../user1.jsp");
%>
</body>
</html>