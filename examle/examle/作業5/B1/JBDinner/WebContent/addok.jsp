<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="model.ooder"
    import="Dao.ooderDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="sst1.css">
</head>

<%
ooder o1=(ooder)session.getAttribute("O");


%>
<body background="pic/back1.jpg" bgProperties=fixed>

<div class="header">
<jsp:include page="title.jsp"/>
</div>
<div class="content">
 <table width=400 align=center border=1>
  	<tr>
  	 	<td colspan=2><%=o1.getName() %>您的餐點
  	<tr>
  	 	<td width=200>輕食
  	 	<td width=200><%=o1.getFast() %>
  	<tr>
  	 	<td>義大利麵
  	 	<td><%=o1.getNoodle() %>
  	<tr>
  	 	<td>燉飯
  	 	<td><%=o1.getRice() %>
  	 	
  	<tr>
  	 	<td colspan=2>一共<%=o1.getSum() %>元
  	 	
 
 </table>	
	 	 
</div>
<div class="footer">
<jsp:include page="end.jsp"/>
</div>
<%
session.removeAttribute("O");
%>
</body>
</html>