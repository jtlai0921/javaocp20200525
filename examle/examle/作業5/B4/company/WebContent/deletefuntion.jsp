<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="Dao.companyDao"
    import="java.sql.ResultSet"
   %>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
</head>
<body>
<%!
public String deletefood()
{
  String editmsg="";
  ResultSet rs =new companyDao().query("subfood");
  editmsg=editmsg+"<Form action='delete.jsp' method='post' name= 'deletfood' >";
  editmsg=editmsg+"<table  align='center' border=1>";
  editmsg=editmsg+"<tr><td>foodid";
  int i=1;
  editmsg=editmsg+"<select name='delete_food_select'>";
  try{
   while ( rs.next())
   {
	   if (rs.getString("edit")=="true" || rs.getString("edit").equals("true"))
	   {
		  if(i==1) 
		  {
		   editmsg=editmsg+"<option selected='"+rs.getInt("foodid")+"'>"+rs.getInt("foodid")+"</option>";
		  }
		   else
		   {
		     editmsg=editmsg+"<option value='"+rs.getInt("foodid")+"'>"+rs.getInt("foodid")+"</option>";
		}
	   }
	   
	   i++;
   }
   }
  catch (Exception e)
  { 
  	e.printStackTrace();
  }
  editmsg=editmsg+"</select>"; 
  editmsg=editmsg+"<input type='hidden' name='d_food' value='foodable'>";
  editmsg=editmsg+"<td> <input type='submit' name='edittable' value='foodsubmit'>";
  editmsg=editmsg+"</table></form>";
  
  ResultSet rs1 =new companyDao().query("subfood");
  editmsg=editmsg+"<p><table  align=center border=1 >";
  editmsg=editmsg+"<tr><td colspan=6> 刪除品名 ";
  editmsg=editmsg+"<tr><td>可否刪除<td>id<td>foodname<td>price<td>img";
  try{
    while ( rs1.next())
     {
    	editmsg=editmsg+"<tr>";
  
    	if (rs1.getString("edit")=="true" || rs1.getString("edit").equals("true"))
    	{
    		
    		//System.out.println(rs.getString("edit"));
    		editmsg=editmsg+"<td> 品名可刪除";
   		 editmsg=editmsg+"<td> "+rs1.getInt("foodid");
    	}
    	else
    	{
    		 editmsg=editmsg+"<td> 品名己經被訂單使用無法刪除";
    		 editmsg=editmsg+"<td> "+rs1.getInt("foodid");
    	}
    	   
    	    editmsg=editmsg+"<td>"+rs1.getString("foodname");
    	    editmsg=editmsg+"<td>"+rs1.getInt("price");
    	    editmsg=editmsg+"<td>"+rs1.getString("img");    
     }
    }
    catch (Exception e)
    { 
    	e.printStackTrace();
    }
   editmsg=editmsg+"</table>";
   
	return editmsg;
 }

%>


<%!
public String deletetablename()
{
	String editmsg="";
	
	ResultSet rs3 =new companyDao().query("subtablename");
	editmsg=editmsg+"<Form action='delete.jsp' method='post' name= 'delettable' >";
	editmsg=editmsg+"<p><table  align=center border=1>";
	editmsg=editmsg+"<tr><td>taleid";
	
	editmsg=editmsg+"<select name='delete_table_select'>";
	int i=1;
	try{
	    while ( rs3.next())
	     {
	    	
	    	if (rs3.getString("edit")=="true" || rs3.getString("edit").equals("true"))
	    	{
	    		if(i==1)
	    		{
	    			editmsg=editmsg+"<option selected='"+rs3.getInt("tableid")+"'>"+rs3.getInt("tableid")+"</option>";
	    			
	    		}
	    		else
	    		{
	    			editmsg=editmsg+"<option value='"+rs3.getInt("tableid")+"'>"+rs3.getInt("tableid")+"</option>";
	    		}
	    		i++;

	    	}
	    		
	      }
	      editmsg=editmsg+"</select>"; 
	      editmsg=editmsg+"<input type='hidden' name='d_table' value='ordertable'>";
	      editmsg=editmsg+"<td> <input type='submit' name='edittable' value='tablesubmit'>";
	   }
	 catch (Exception e)
    { 
    	e.printStackTrace();
    }

	editmsg=editmsg+"</table></form>";
	editmsg=editmsg+"<p><table  align=center border=1>";
	editmsg=editmsg+"<tr><td colspan=3> 刪除桌號 ";
	editmsg=editmsg+"<tr><td>可否刪除<td>id<td>tablename";
	ResultSet rs4 =new companyDao().query("subtablename");
	try{
	    while ( rs4.next())
	     {
	    	 editmsg=editmsg+"<tr>";
	    	if (rs4.getString("edit")=="true" || rs4.getString("edit").equals("true"))
	    	{

	    		 editmsg=editmsg+"<td> 桌號可刪除";	
	    		 editmsg=editmsg+"<td>"+rs4.getInt("tableid");
       	    	}
	    	else
	    	{
	    		 editmsg=editmsg+"<td> 桌號己經被訂單使用無法刪除";
	    		 editmsg=editmsg+"<td>"+rs4.getInt("tableid");
	    	}
	    	 editmsg=editmsg+"<td>"+rs4.getString("tablename");
	     }
	   } 
	catch (Exception e)
    { 
    	e.printStackTrace();
    }
	 editmsg=editmsg+"</table>";
	 
	return editmsg;
	
}
%>

<%! 
public String deleteordehead()
{
    String editmsg="";
   
    ResultSet rs5 =new companyDao().query("orderv_sums");
	editmsg=editmsg+"<Form action='deleteorder.jsp' method='post' name= 'deletorder' >";
	editmsg=editmsg+"<p><table  align=center border=1>";
	editmsg=editmsg+"<tr><td>taleid";
	
	editmsg=editmsg+"<select name='delete_order_select'>";
	int i=1;
	try{
	    while ( rs5.next())
	     {
	    	
	    	
	    		if(i==1)
	    		{
	    			editmsg=editmsg+"<option selected='"+rs5.getInt("orderid")+"'>"+rs5.getInt("orderid")+"</option>";
	    			
	    		}
	    		else
	    		{
	    			editmsg=editmsg+"<option value='"+rs5.getInt("orderid")+"'>"+rs5.getInt("orderid")+"</option>";
	    		}
	    		i++;   	  		
	      }
	      editmsg=editmsg+"</select>"; 
	      editmsg=editmsg+"<input type='hidden' name='orderv_sums' value='orderv_sums'>";
	      editmsg=editmsg+"<td> <input type='submit' name='edittable' value='ordersubmit'>";
	   }
	 catch (Exception e)
    { 
    	e.printStackTrace();
    }
	editmsg=editmsg+"</table></form>";
	editmsg=editmsg+"<p><table  align=center border=1>";
	editmsg=editmsg+"<tr><td colspan=4> 刪除訂單 ";
	editmsg=editmsg+"<tr><td>id<td>orderno<td>tablename<td>sum";
	ResultSet rs6 =new companyDao().query("orderv_sums");
	try{
	    while ( rs6.next())
	     {
	    	editmsg=editmsg+"<tr><td>"+rs6.getInt("orderid");
	    	editmsg=editmsg+"<td>"+rs6.getString("orderno");
	    	editmsg=editmsg+"<td>"+rs6.getString("tablename");
	    	editmsg=editmsg+"<td>"+rs6.getInt("sum");
	    			
	      }
	    
	   }
	 catch (Exception e)
    { 
    	e.printStackTrace();
    } 
	 editmsg=editmsg+"</table>";
	return	editmsg;
}

%>
<p>

</body>
</html>