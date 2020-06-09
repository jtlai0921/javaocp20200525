<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
<link href="default.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Add New Order</title>
</head>
<body>
<div id="header-wrapper">
  <div id="header" class="container">
    <div id="logo">
      <h1><a href="#">Una Home Cuisine</a></h1>
</div>
    <div id="menu">
      <ul>
        <li ><a href="index.html" accesskey="1" title="">Homepage</a></li>
        <li class="current_page_item"><a href="add.jsp" accesskey="2" title="">Add Order</a></li>
        <li><a href="query.jsp" accesskey="3" title="">Check Order</a></li>
        <li><a href="update.jsp" accesskey="4" title="">Update Order</a></li>
        <li><a href="delete.jsp" accesskey="5" title="">Delete Order</a></li>
      </ul>
    </div>
  </div>
</div>
<div id="header-featured"> </div>
<div id="content">

<form action="Controller/addController.jsp">
<table>
	<tr>
		<td>Customer Name:<input type="text" name="customer"></td>
		<td>Table Number:<input type="number" name="num"></td>
		<td>Big Mac $12:<input type="number" name="mac"></td>
	<tr>
		<td>SousVide Steak $20:<input type="number" name="steak">
		<td>French Fries $7:  <input type="number" name="fries">
		<td><input type="submit">&nbsp;&nbsp;<input type="reset">
	<tr>
		<td><img alt="BigMac" src="images/big mac.jpg" width=300px height=200px>
		<td><img alt="SousVideSteak" src="images/sousvidesteak.jpg" width=300px height=200px>
		<td><img alt="frenchfries" src="images/frenchfries.jpg" width=300px height=200px>
</table>


</form>


</div>
<div class="footer">
<jsp:include page="end.jsp"></jsp:include>
</div>
</body>
</html>