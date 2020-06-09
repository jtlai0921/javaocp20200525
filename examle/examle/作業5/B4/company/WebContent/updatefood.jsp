<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
     import ="Dao.companyDao"
     import="java.sql.ResultSet"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
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
<form action="updatefood.jsp" method="post">
 <table>
 <td>foodname:
 <td>
<%@ include file="updateselct.jsp"%>
  <%=ufoodselect() %>  
  <td>
  <input type="hidden" name="selects" value="selects">
  <input type="submit" name="searchfood" value="searchfood">
  </table>
  </form>
  <br>
  <form action="controller/updatefoodcontroller.jsp">
  <table>
  <tr>
  
 <%
    String selects="";
    String id="0";
    String fmsg="";
    selects=request.getParameter("selects") ;
    id=request.getParameter("food");
    //.print("selects==>"+selects+"<br>");
   // out.print("id==>"+id+"<br>");
    if(selects!=null)
    {
     if(selects.equals("selects"))
       {
	 
	   if (id!=null || id!="0" )
    	{
 
    		ResultSet rs =new companyDao().query("food", id, "inid");
    		 while(rs.next())
    		 {
    			 // out.print("if id==>"+id+"<br>");
    			 

    			 fmsg=fmsg+"<tr>";
    			 fmsg=fmsg+"<td>foodid:<input  type='text' name='foodid' value='"+rs.getInt("foodid")+"' readonly>";
    			 fmsg=fmsg+"<td>foodname:<input  type='text' name='foodname' value='"+rs.getString("foodname")+"'>";
    			 fmsg=fmsg+"<td>price:<input  type='text' name='price' value='"+rs.getInt("price")+"'>";
    			 fmsg=fmsg+"<td>img:<input  type='text' name='img' value='"+rs.getString("img")+"'>";
    		
    		 }
		   
    	}
       }	
    }
     out.println(fmsg);
  %>
  <tr>
  <td colspan=4><input type="submit" name="editfood" value="editfood">
  </table>
  </form>
  <table  border="1">
  <% 
     String msg1="";
     ResultSet rs1 =new companyDao().query("food");
	 while(rs1.next())
	 {
		 
			msg1=msg1+"<tr>";
			msg1=msg1+"<td>fooid:"+rs1.getInt("foodid");
			msg1=msg1+"<td>foodname"+rs1.getString("foodname");
			msg1=msg1+"<td>price:"+rs1.getInt("price");
			msg1=msg1+"<td>img:"+rs1.getString("img");
	 }
	 out.println(msg1);
  %>
  </table>
  </div>
   <div class="footer">
 <a href="index.jsp" target=blank>home</a>
 </div>

</body>
</html>