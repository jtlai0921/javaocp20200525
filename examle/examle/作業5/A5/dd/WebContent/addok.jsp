<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="Model.Diner"
    import="Dao.DinerDao"
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
<link href="default.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Established done</title>
</head>
<body>
<%
/*String s=request.getParameter("customer");
int n=Integer.parseInt(request.getParameter("num"));
int m=Integer.parseInt(request.getParameter("mac"));
int as=Integer.parseInt(request.getParameter("steak"));
int f=Integer.parseInt(request.getParameter("fries"));

Diner o=new Diner();
o.setName(s);
o.setTable(n);
o.setMac(m);
o.setSteak(as);
o.setFries(f);
new DinerDao().add(o);*/
//new DinerDao().add(s, n, m, as, f);

Diner o=(Diner)session.getAttribute("o");
%>
<%=o.getName() %><h1>Established Successful!!</h1>
<div id="header-wrapper">
  <div id="header" class="container">
    <div id="logo">
      <h1><a href="#">Una Home Cuisine</a></h1>
</div>
    <div id="menu">
      <ul>
        <li><a href="index.html" accesskey="1" title="">Homepage</a></li>
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
<%=o.getName() %><br />
<h1><font color=green>Established Successful!!</font></h1><br/>
<jsp:include page="content.jsp"></jsp:include>
</div>
<div class="footer">
<jsp:include page="end.jsp"></jsp:include>
</div>
</body>
</html>