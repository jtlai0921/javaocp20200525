<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import ="Dao.companyDao"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>�R���ู�~�W </title>
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