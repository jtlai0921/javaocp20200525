<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
   import ="Dao.companyDao"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>�R���q��</title>
<link rel="stylesheet" type="text/css" href="st1.css">
</head>
<body>
<div class="header">
<div class="topnav"> 
 <a href="add.jsp" >�q��s�W</a> 
 <a href="ortheradd.jsp" >�~�W�ู�s�W</a> 
 <a href="query.jsp" >�Ҧ�����Ƭd��</a> 
 <a href="deleteorder.jsp" >�R���q��</a> 
 <a href="delete.jsp" >�R���ู�~�W</a> 
 <a href="updateorder.jsp">�ק�q��</a>
 <a href="updatefood.jsp">�ק�~�W</a> 
 <a href="updatetablename.jsp">�ק�ู</a>
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