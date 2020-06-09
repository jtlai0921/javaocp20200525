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
	//stmsg=stmsg+"<option value='-1'>�п��</option>";
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
<form name="gettablename" method="post" action="query.jsp">
<table  align=center border=1>
<tr>
<td colspan=3 align=center><h4>�d�ߩҦ�table���</h4>
<tr>
<td><%=showtable() %>
<td><input type="text" name="fieldname">
<td><input type="submit" name="querytable" value="�d��">
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
		 tablesmsg=tablesmsg+"<td> �q�渹�X"+rs3.getString("orderno");
		 tablesmsg=tablesmsg+"<td> �ู"+rs3.getString("tablename");
		 tablesmsg=tablesmsg+"<td> �M�\"+rs3.getString("foodname");
		 tablesmsg=tablesmsg+"<td> ����"+rs3.getString("price");
		 tablesmsg=tablesmsg+"<td> �q��"+rs3.getString("qty");
		 tablesmsg=tablesmsg+"<td> �p�p"+rs3.getString("l_sum");
	   	 
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
		 tablesmsg=tablesmsg+"<td> �q�渹�X"+rs4.getString("orderno");
		 tablesmsg=tablesmsg+"<td> �ู"+rs4.getString("tablename");
		 tablesmsg=tablesmsg+"<td> �`�p"+rs4.getInt("sum");
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