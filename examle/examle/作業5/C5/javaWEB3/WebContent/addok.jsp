<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="model.Porder"
    import="Dao.porderDAO"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
<style type="text/css">
.button {
  display: inline-block;
  padding: 15px 25px;
  font-size: 24px;
  cursor: pointer;
  text-align: center;   
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: #4CAF50;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
}

.button:hover {background-color: #3e8e41}

.button:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
</style>
</head>
<link rel="stylesheet" type="text/css" href="st1.css">
<%!//宣告方法-->static

int cal(int x,int y)
{
	return x*20+y*30;
}

%>
<% //main
/*out.println("name="+request.getParameter("name")+
"<br>ruler:"+request.getParameter("ruler")+
"<br>pen:"+request.getParameter("pen"));*/


Porder p=(Porder)session.getAttribute("P");

%>
<body>

<div class="header"><font size="5"><H1 ALIGN=center>隨便商店</H1></font></div>

		<div class="content">
		<table width="300" align=center border=1>
				<tr>
					<td colspan=2 align=center>的訂單明細
				<tr>
					<td width=50>姓名
					<td><%=p.getName() %>
				<tr>
					<td >尺
					<td><%=p.getRuler() %>
				<tr>
					<td>筆
					<td><%=p.getPen() %>
				<tr>
					<td>總計
					<td><%=p.getSum() %>


</table>
</div>

<%
session.removeAttribute("P");
%>
<div class="footer">
<a href="index.jsp"><button class="button">HOME</button></a><br>
</div>
</body>
</html>