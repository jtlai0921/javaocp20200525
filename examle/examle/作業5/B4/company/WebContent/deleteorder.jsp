<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
   import ="Dao.companyDao"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>刪除訂單</title>
<link rel="stylesheet" type="text/css" href="st1.css">
</head>
<body>
<div class="header">
<div class="topnav"> 
 <a href="add.jsp" >訂單新增</a> 
 <a href="ortheradd.jsp" >品名桌號新增</a> 
 <a href="query.jsp" >所有表格資料查詢</a> 
 <a href="deleteorder.jsp" >刪除訂單</a> 
 <a href="delete.jsp" >刪除桌號品名</a> 
 <a href="updateorder.jsp">修改訂單</a>
 <a href="updatefood.jsp">修改品名</a> 
 <a href="updatetablename.jsp">修改桌號</a>
</div>
<div class="content">
 <%@ include file="deletefuntion.jsp"%>
  <%=deleteordehead() %> 
  <p>
  <%
    String orderid="";
    String getorder="";
    orderid=request.getParameter("delete_order_select");
    getorder=request.getParameter("orderv_sums");
   
    if(orderid!=null)
    {
      int id=Integer.parseInt(orderid);
    	if(getorder.equals("orderv_sums"))
    	{    
    		 new companyDao().delete(id,"orderheadline");
    		 new companyDao().delete(id,"orderhead");
    		
    		 response.setIntHeader("Refresh", 1);
    	}
    }
    
  %>
  </div>
 </div>
 <div class="footer">
 <a href="index.jsp" target=blank>home</a>
 </div>            
</body>
</html>