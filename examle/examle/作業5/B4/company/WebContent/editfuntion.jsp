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
public String editfood()
{
  String editmsg="";
  ResultSet rs =new companyDao().query("subfood");
  editmsg=editmsg+"<table width=600 align=center border=1>";
  editmsg=editmsg+"<tr><td colspan=6> 刪除品名 ";
  editmsg=editmsg+"<tr><td>刪除建<td>id<td>foodname<td>price<td>img";
  try{
    while ( rs.next())
     {
    	editmsg=editmsg+"<tr><Form action='edit.jsp' method='post' name= 'deletfood'>";
  
    	if (rs.getString("edit")=="true" || rs.getString("edit").equals("true"))
    	{
    		
    		//System.out.println(rs.getString("edit"));
    		editmsg=editmsg+"<td> <input type='submit' name='editfood' value='foodsubmit'>";
    		editmsg=editmsg+"<td> <input type='text' name='foodid' "+
    	    	    "value='"+rs.getInt("foodid")+"'readonly>";
    	}
    	else
    	{
    		 editmsg=editmsg+"<td> 品名己經被訂單使用無法刪除";
    		 editmsg=editmsg+"<td> <input type='text' name='foodid'"+
    		    	    "value='"+rs.getInt("foodid")+"'readonly>";
    	}
    	   
    	    editmsg=editmsg+"<td>"+rs.getString("foodname");
    	    editmsg=editmsg+"<td>"+rs.getInt("price");
    	    editmsg=editmsg+"<td>"+rs.getString("img");    
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
<%=editfood() %>

<%!
public String edittablename()
{
	String editmsg="";
	ResultSet rs1 =new companyDao().query("subtablename");
	editmsg=editmsg+"<p><table width=400 align=center border=1>";
	editmsg=editmsg+"<tr><td colspan=4> 刪除桌號 ";
	editmsg=editmsg+"<tr><td>刪除建<td>id<td>tablename";
	try{
	    while ( rs1.next())
	     {
	    	editmsg=editmsg+"<tr><Form action='edit.jsp' method='post' name= 'delettable'>";
	    	if (rs1.getString("edit")=="true" || rs1.getString("edit").equals("true"))
	    	{
	    		editmsg=editmsg+"<td> <input type='submit' name='edittable' value='tablesubmit'>";
	    		editmsg=editmsg+"<td> <input type='text' name='tableid' "+
	    	    	    "value='"+rs1.getInt("tableid")+"'readonly>";
	    	}
	    	else
	    	{
	    		 editmsg=editmsg+"<td> 桌號己經被訂單使用無法刪除";
	    		 editmsg=editmsg+"<td> <input type='text' name='tableid' "+
		    	    	    "value='"+rs1.getInt("tableid")+"'readonly>";
	    	}
	    	 editmsg=editmsg+"<td>"+rs1.getString("tablename");
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
<p>
<%=edittablename() %>>
</body>
</html>