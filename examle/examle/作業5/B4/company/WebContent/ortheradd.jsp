<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="model.food"
    import="model.ordertable"
    import="Dao.companyDao"
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>�s�W�ู�~�W</title>
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
<% 

String tablename=request.getParameter("tablename");

out.print(tablename);

String msg="";
  if(tablename !=null){
	  if ( tablename.equals(""))
	  {
		  msg="�п�J�ู";
	  }  
	  else
	  {
       ordertable ot=new ordertable();
        ot.setTablename(tablename);
        new companyDao().add("ordertable", ot);
        response.sendRedirect("ortheradd.jsp");
	  }
	}
//out.print(tablename);


%>
<%=msg %>
<Form action="ortheradd.jsp" method="post" name="addtable">
		<table width=200 align=center border=1>
			<tr >
				<td colspan=2 align=center><h2>�s�W�ู</h2>
			<tr>
				<td>�ู</td>
				<td><input type="text" name="tablename">
			<tr >
				<td colspan=2 align=center><input type="submit" name="addtables" value="attable"></td>
		</table>
	</Form>
<br>
   <%@ include file="infuntion.jsp"%>
                  <%=showtable() %>
<p>
<Form action="ortheradd.jsp" method="post" name="addfood">
		<table width=300 align=center border=1>
			<tr >
				<td colspan=2 align=center><h2>�s�W�~�W</h2>
			<tr>
				<td>�~�W�W��</td>
				<td><input type="text" name="foodname">
			<tr>	
				<td>����</td>
				<td><input type="text" name="price">
			<tr>	
				<td>���ɦW��</td>
				<td><input type="text" name="img">
			<tr >
				<td colspan=2 align=center><input type="submit" name="addfoods" value="attfoods"></td>
		</table>
	</Form>
	<p>
	 
       <%=showfood() %>
	<p>
	
<%
String foodname=request.getParameter("foodname");
String price=request.getParameter("price");	
String img=request.getParameter("img");	
String msg1="";
if(foodname !=null &&  price!=null && img!=null )
 {  if(foodname.equals("") && price.equals("") &&img.equals(""))
   {
	 msg1="�s�W�~�W��ƩҥH��쥲������";
	 
   }
  else
  {  
	  int p=Integer.parseInt(price);
	  food fo=new food();
	  fo.setFoodname(foodname);
	  fo.setPrice(p);
	  fo.setImg(img);
	  new companyDao().add("food", fo);
	  response.sendRedirect("ortheradd.jsp");
  }
 }
%>
 </div>
 <div class="footer">
 <a href="index.jsp" target=blank>home</a>
 </div>
</body>
</html>