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
  boolean x=memberDao.queryName(Name); //�P�_�O�_���|��
  session.setAttribute("name", Name);
  
  if(x)
  {	response.sendRedirect("../MainMenu.jsp");
	session.setAttribute("NAME", Name);  
  } 	//�O�|��

  else
  { response.sendRedirect("../addmember.jsp");} //���O�|��

%>
</body>
</html>