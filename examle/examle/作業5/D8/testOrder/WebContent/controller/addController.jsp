<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="dao.sushiDao"
    import="model.sushi"
    import="java.io.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
</head>
<body>
<%
Enumeration paramNames = request.getParameterNames();
List<Object> paramValue = new ArrayList();
while(paramNames.hasMoreElements()) {
	paramValue.add(request.getParameter((String)paramNames.nextElement()));
}
	String Name = request.getParameter("name");
	String A1 = request.getParameter("s1");
	String B1 = request.getParameter("s2");
	String C1 = request.getParameter("s3");
	String D1 = request.getParameter("s4");
	String E1 = request.getParameter("s5");
	String F1 = request.getParameter("s6");
	String G1 = request.getParameter("s7");
	String H1 = request.getParameter("s8");

	boolean b = false;
	sushi su = new sushi(Name, A1, B1, C1, D1, E1, F1, G1, H1);
	if (su.getSum() > 0) {
		new sushiDao().writeDB(su);
		b=true;
	}
	session.setAttribute("SU", su);
	response.sendRedirect("../rec.jsp");
	
%>
</body>
</html>