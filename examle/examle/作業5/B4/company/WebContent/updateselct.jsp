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
</head>
<body>
<%!
 public String ufoodselect()
 {
	String msg="";
	msg=msg+"<select name='food' >";
	//int i=1;
	msg=msg+"<option value='-1' 'selected'>請選擇</option>";
	ResultSet rs =new companyDao().query("food");
	 try {
	    while(rs.next())
    	{
		
			msg=msg+"<option value='"+rs.getInt("foodid")+"' >"+rs.getString("foodname")+
					"</option>";
		  
	    }
	  }
   catch (Exception e) 
	{
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	msg=msg+"</select>";
	return msg;
 }

%>
<%!
public String uselecttablename()
{
String tmsg="";
tmsg=tmsg+"<select name='ordertable' >";
int i=1;
ResultSet rs1 =new companyDao().query("ordertable");
tmsg=tmsg+"<option value='-1' 'selected'>請選擇</option>";
try {
   while(rs1.next())
	{
	 
		tmsg=tmsg+"<option value='"+rs1.getInt("tableid")+"' >"+rs1.getString("tablename")+
				" </option>";
	
   }
 }
catch (Exception e) 
{
	// TODO Auto-generated catch block
	e.printStackTrace();
}
tmsg=tmsg+"</select>";
return tmsg;
}


%>

<%!
public String uselectorderhead()
{
	String omsg="";
	int i=1;
	omsg=omsg+"<select name='orderv_sums' >";
	//omsg=omsg+"<option value='-1' 'selected'>請選擇</option>";
	ResultSet rs2 =new companyDao().query("orderv_sums");
	try {
	   while(rs2.next())
		{
		   if (i==1)
		   {
			   omsg=omsg+"<option value='"+rs2.getString("orderno")+"' 'selected'>"+rs2.getString("orderno")+
						"</option>";  
		   }
		   else
		   {
			omsg=omsg+"<option value='"+rs2.getString("orderno")+"' >"+rs2.getString("orderno")
			           +"</option>";  
		   }		
	   }
	 }
	catch (Exception e) 
	{
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	omsg=omsg+"</select>";
	
	return  omsg;

}
%>
</body>

</html>