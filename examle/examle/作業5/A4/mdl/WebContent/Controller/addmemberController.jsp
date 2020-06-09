<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="Dao.memberDao"
    import="model.member"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
</head>
<body>
<%
String Name=request.getParameter("name");
String Address=request.getParameter("address");
int Cellphone=Integer.parseInt(request.getParameter("cellphone"));

member m=new member();
m.setName(Name);
m.setAddress(Address);
m.setCellphone(Cellphone);
new memberDao().add(m);

response.sendRedirect("../login.jsp");
%>
</body>
</html>