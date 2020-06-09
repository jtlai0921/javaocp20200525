<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="Model.Diner"
    import="Dao.DinerDao"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
<link href="default.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Update Order</title>
</head>
<body>
<div id="header-wrapper">
  <div id="header" class="container">
    <div id="logo">
      <h1><a href="#">Una Home Cuisine</a></h1>
</div>
    <div id="menu">
      <ul>
        <li><a href="index.html" accesskey="1" title="">Homepage</a></li>
        <li><a href="add.jsp" accesskey="2" title="">Add Order</a></li>
        <li><a href="query.jsp" accesskey="3" title="">Check Order</a></li>
        <li class="current_page_item"><a href="update.jsp" accesskey="4" title="">Update Order</a></li>
        <li><a href="delete.jsp" accesskey="5" title="">Delete Order</a></li>
      </ul>
    </div>
  </div>
</div>
<div id="header-featured"> </div>
<div id="content">
<form action="Controller/updateController.jsp">
<table>
<%
try{
Diner d=new Diner();
d.setName(request.getParameter("customer"));
d.setTable(Integer.parseInt(request.getParameter("num")));
d.setMac(Integer.parseInt(request.getParameter("mac")));
d.setSteak(Integer.parseInt(request.getParameter("steak")));
d.setFries(Integer.parseInt(request.getParameter("fries")));
int id=Integer.parseInt(request.getParameter("id"));
new DinerDao().update(id, d);
}catch (NumberFormatException e){
	
}
%>
	<tr>
		<td>id:<input type="number" name="id" size="2"></td>
		<td>Customer Name:<input type="text" name="customer" ></td>
		<td>Table Number:<input type="number" name="num"></td>
		
	<tr>
		<td>Big Mac:<input type="number" name="mac"></td>
		<td>SousVide Steak :<input type="number" name="steak">
		<td>French Fries  :  <input type="number" name="fries">
		<td><input type="submit">&nbsp;&nbsp;<input type="reset">
		
</table>
</form>
<%Diner d=(Diner)session.getAttribute("d"); %>
<%=d.getName() %><br />
<h1><font color=green>Update Successful!!</font></h1><br/>
<jsp:include page="content.jsp"></jsp:include>
</div>
<div class="footer">
<jsp:include page="end.jsp"></jsp:include>
</div>
</body>
</html>