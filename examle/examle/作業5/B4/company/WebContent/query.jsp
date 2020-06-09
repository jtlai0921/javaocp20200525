<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="java.sql.ResultSet"
     import="Dao.companyDao"
      import="model.ordertable"
       import="model.food"
    %>
<!DOCTYPE html>
<html>
<%!
public String showtable()
{
	String stmsg="";
	stmsg=stmsg+"<select name='showtable'>";
	//stmsg=stmsg+"<option value='-1'>請選擇</option>";
	ResultSet rs =new companyDao().query("showtable");
	int i=0;
	try {
		while ( rs.next())
		   {
			if(i==0)
			{
				stmsg=stmsg+"<option selected='"+rs.getString("TABLE_NAME")+"'  >"
			+rs.getString("TABLE_NAME") +"</option>";
			}
			else
			{
			stmsg=stmsg+"<option value='"+rs.getString("TABLE_NAME")+"'>"
					+rs.getString("TABLE_NAME") +"</option>";
			}
			i++;
		   }
		stmsg=stmsg+"</select>";
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}

 return stmsg;
}
%>
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
<form name="gettablename" method="post" action="query.jsp">
<table  align=center border=1>
<tr>
<td colspan=3 align=center><h4>查詢所有table資料</h4>
<tr>
<td><%=showtable() %>
<td><input type="text" name="fieldname">
<td><input type="submit" name="querytable" value="查詢">
</table>
</form>
<p>
<%
String c_table="";
 c_table=request.getParameter("showtable");
 String queryfiled=request.getParameter("fieldname");

String tablesmsg="";
if (c_table==null || c_table.equals(""))
{ c_table="food";
	}
//if (queryfiled!=null )
 // {
	//out.println("c_table  ==>"+c_table);
	if(c_table=="food" ||c_table.equals("food"))
	{
		
		tablesmsg=tablesmsg+"<table width=400 align=center border=1>";
		//out.println("queryfood  ==>"+c_table);
		//out.println("queryfiled  ==>"+queryfiled);
		ResultSet rs1 =new companyDao().query("food",queryfiled);
		try{
		  while ( rs1.next())
		   {
			 tablesmsg=tablesmsg+"<tr>";
			 tablesmsg=tablesmsg+"<td>foodid:"+rs1.getString("foodid");
			 tablesmsg=tablesmsg+"<td>foodname:"+rs1.getString("foodname");
			 tablesmsg=tablesmsg+"<td>price:"+rs1.getInt("price");
			 tablesmsg=tablesmsg+"<td>img:"+rs1.getString("img");
		   }
		   tablesmsg=tablesmsg+"</table>";
		   out.println(tablesmsg);
		 }
		catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	  }
	
	if(c_table=="ordertable" || c_table.equals("ordertable" ))
	{
		tablesmsg=tablesmsg+"<table width=300 align=center border=1>";
		out.println("ordertable");
		ResultSet rs2=new companyDao().query("ordertable" ,queryfiled);
		 while ( rs2.next())
		 {
			 tablesmsg=tablesmsg+"<tr>";
			 tablesmsg=tablesmsg+"<td>tableid:"+rs2.getString("tableid");
			 tablesmsg=tablesmsg+"<td>tablename:"+rs2.getString("tablename");
		 }
		 tablesmsg=tablesmsg+"</table>";
		 out.println(tablesmsg);
		
	} 
	
   if(c_table=="orderv_d"||c_table.equals("orderv_d"))
   {
	   ResultSet rs3 =new companyDao().query("orderv_ds",queryfiled);
	   tablesmsg=tablesmsg+"<table width=600 align=center border=1>";
	   while ( rs3.next())
	   {
		 tablesmsg=tablesmsg+"<tr>";
		 tablesmsg=tablesmsg+"<td> 訂單號碼"+rs3.getString("orderno");
		 tablesmsg=tablesmsg+"<td> 桌號"+rs3.getString("tablename");
		 tablesmsg=tablesmsg+"<td> 套餐"+rs3.getString("foodname");
		 tablesmsg=tablesmsg+"<td> 價格"+rs3.getString("price");
		 tablesmsg=tablesmsg+"<td> 量數"+rs3.getString("qty");
		 tablesmsg=tablesmsg+"<td> 小計"+rs3.getString("l_sum");
	   	 
	   }
	   tablesmsg=tablesmsg+"</table>";
	   out.println(tablesmsg);
      }
   if(c_table=="orderv_sum'"||c_table.equals("orderv_sum"))
   {
	  // out.println(" rs4;");
	   ResultSet rs4 =new companyDao().query("orderv_sums",queryfiled);
	   tablesmsg=tablesmsg+"<table width=300 align=center border=1>";
	   while ( rs4.next())
	   {
		 tablesmsg=tablesmsg+"<tr>";
		 tablesmsg=tablesmsg+"<td> 訂單號碼"+rs4.getString("orderno");
		 tablesmsg=tablesmsg+"<td> 桌號"+rs4.getString("tablename");
		 tablesmsg=tablesmsg+"<td> 總計"+rs4.getInt("sum");
	   }
	   tablesmsg=tablesmsg+"</table>";
	  out.println(tablesmsg);
   }
	
  //}

%>
 </div>
 <div class="footer">
 <a href="index.jsp" target=blank>home</a>
 </div>
</body>
</html>