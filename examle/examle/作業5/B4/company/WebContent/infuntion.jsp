<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="model.ordertable"
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
public String optionselect()
{
ResultSet rs =new companyDao().query("ordertable");
String msg="<select name= 'ordertable'>";
msg=msg+"<option value='-1' selected>請選擇</option>";

 try{
    while ( rs.next())
    {  
   
       msg=msg+"<option value='"+rs.getInt("tableid")+"' >"+rs.getString("tablename")+"</option>";
       
       
    }
 }
    catch (Exception e)
    { 
    	e.printStackTrace();
    }
    msg=msg+"</select>";
     
    return msg;
    
}

%>
<%!
public String foodselect()
{   String msg="";
    String selecthead="";
    String selectname="<option value='-1' selected>請選擇</option>";
  
    		
	ResultSet rs =new companyDao().query("food");
	int i=0;
	try{
    	while ( rs.next())
	   {
    	 
    	 if(i%3==0)
    	 {
    	  msg=msg+"<tr>";
    	 }
    	 msg=msg+"<td> <img src='"+rs.getString("img")+"'><p>"+rs.getString("foodname")
    	 +"價格"+rs.getInt("price")+"<p>";
    	 msg=msg+"<select name='"+rs.getInt("foodid")+"'> <option value='-1' selected>請選擇</option>";
    	 for(int j=1;j<=10;j++)
    	 {
    		 msg=msg+"<option value='"+j+"'> "+j+"</option>" ; 
    	 }
    	
    	 msg=msg+"</select>" ;
    	i++;
	   }
	  }
	catch (Exception e)
    { 
    	e.printStackTrace();
    }
	
	
	System.out.println(msg);
	  return msg;
  
}
%>
<%! 
public String showtable()
{
	String tmsg="<p><table width=200 align=center border=1>";
	//ordertable
	
	ResultSet rs =new companyDao().query("ordertable");
	try{
    	while ( rs.next())
	     {
    		tmsg=tmsg+"<tr>";
    		tmsg=tmsg+"<td> tableid:"+rs.getString("tableid");
    		tmsg=tmsg+"<td> tablename:"+rs.getString("tablename");
	     }
	    }
    	catch (Exception e)
        { 
        	e.printStackTrace();
        }
	tmsg=tmsg+"</table>";
	return tmsg;
}
%>

<%!
public String showfood()
{
 String fmsg="<p><table width=300 align=center border=1>";
 ResultSet rs =new companyDao().query("food");
	try{
 	while ( rs.next())
	     {
 		   fmsg=fmsg+"<tr>";
 		   fmsg=fmsg+"<td> foodid:"+rs.getString("foodid");
 		   fmsg=fmsg+"<td> foodname:"+rs.getString("foodname");
 		   fmsg=fmsg+"<td> price:"+rs.getString("price");
 		   fmsg=fmsg+"<td> img:"+rs.getString("img");
	     }
	    }
	catch (Exception e)
    { 
    	e.printStackTrace();
    }
	fmsg=fmsg+"</table>";
	return fmsg;

}
%>
</body>

</html>