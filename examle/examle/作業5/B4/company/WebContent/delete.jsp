<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import ="Dao.companyDao"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>刪除桌號品名 </title>
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
 <%@ include file="deletefuntion.jsp"%>
  <%=deletefood() %>               
<% 
String d_food="";
d_food=request.getParameter("d_food");
String getfoodid="";
getfoodid=request.getParameter("delete_food_select");
//out.print("d_food"+d_food);
//out.print("getfoodid"+getfoodid);
if(getfoodid!=null)
   {
	int gfoodid=Integer.parseInt(getfoodid);
	if (d_food.equals("foodable"))
	{
		 new companyDao().delete(gfoodid, "food");
		 response.sendRedirect("delete.jsp");
	}
   }
//response.setIntHeader("Refresh", 1);
%>
 <% 
String d_table="";
 d_table=request.getParameter("d_table");	
String gettableid;
gettableid=request.getParameter("delete_table_select");
if(gettableid!=null)
{
//int I=Integer.parseInt(ID);	
int tid=Integer.parseInt(gettableid);
//out.print("tid-->"+tid);
  if(d_table.equals("ordertable"))
  {
	 // out.print("ordertable-->"+tid);
  new companyDao().delete(tid, "ordertable");
  response.sendRedirect("delete.jsp");
  }
 // response.setIntHeader("Refresh", 1);
} 
%>
 <%=deletetablename()%> 
</div>
 <div class="footer">
 <a href="index.jsp" target=blank>home</a>
 </div>
</body>
</html>