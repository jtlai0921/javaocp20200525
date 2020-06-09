<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="dao.memberDao"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
</head>
<body>
<%
  String Name=request.getParameter("name");
  boolean x=memberDao.queryName(Name); //判斷是否為會員
  session.setAttribute("name", Name);
  
  if(x)
  {	response.sendRedirect("../MainMenu.jsp");
	session.setAttribute("NAME", Name);  
  } 	//是會員

  else
  { response.sendRedirect("../addmember.jsp");} //不是會員

%>
</body>
</html>