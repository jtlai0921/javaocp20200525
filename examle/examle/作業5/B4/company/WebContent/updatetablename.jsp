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
<form action="updatetablename.jsp" method="post">
 <table>
 <tr>
 <td>tablename:
 <td>
<%@ include file="updateselct.jsp"%>
  <%=uselecttablename() %>  
  <td>
  <input type="hidden" name="selects" value="selects">
  <input type="submit" name="searchtable" value="searchtable">
  </table>
  </form>
  <P>
  <form action="controller/updatetablecontroller.jsp">
  <table>
  <tr>
  
 <%
    String selects="";
    String id="0";
    String fmsg="";
    selects=request.getParameter("selects") ;
    id=request.getParameter("ordertable");
    //.print("selects==>"+selects+"<br>");
   // out.print("id==>"+id+"<br>");
    if(selects!=null)
    {
     if(selects.equals("selects"))
       {
	 
	   if (id!=null || id!="0" )
    	{
 
    		ResultSet rs =new companyDao().query("ordertable", id, "inid");
    		 while(rs.next())
    		 {
    			 // out.print("if id==>"+id+"<br>");
    			 

    			 fmsg=fmsg+"<tr>";
    			 fmsg=fmsg+"<td>tableid:<input  type='text' name='tableid' value='"+rs.getInt("tableid")+"' readonly>";
    			 fmsg=fmsg+"<td>tablename<input  type='text' name='tablename' value='"+rs.getString("tablename")+"'>";
    		
    		
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
     ResultSet rs1 =new companyDao().query("ordertable");
	 while(rs1.next())
	 {
		 
			msg1=msg1+"<tr>";
			msg1=msg1+"<td>tableid:"+rs1.getInt("tableid");
			msg1=msg1+"<td>tablename"+rs1.getString("tablename");
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