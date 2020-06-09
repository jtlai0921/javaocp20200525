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
<title>新增桌號品名</title>
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
<% 

String tablename=request.getParameter("tablename");

out.print(tablename);

String msg="";
  if(tablename !=null){
	  if ( tablename.equals(""))
	  {
		  msg="請輸入桌號";
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
				<td colspan=2 align=center><h2>新增桌號</h2>
			<tr>
				<td>桌號</td>
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
				<td colspan=2 align=center><h2>新增品名</h2>
			<tr>
				<td>品名名稱</td>
				<td><input type="text" name="foodname">
			<tr>	
				<td>價格</td>
				<td><input type="text" name="price">
			<tr>	
				<td>圖檔名稱</td>
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
	 msg1="新增品名資料所以欄位必須有值";
	 
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