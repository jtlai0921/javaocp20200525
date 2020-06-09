<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
     import="java.util.Date"
     import="java.text.SimpleDateFormat"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
</head>
<body>
<%!
public String testselect(String listname,int loopcount)
{ 
	String msg="";
	 msg=msg+"<select name='"+listname+"'> <option value='0' selected>請選擇</option>";
		
	for(int j=1;j<=loopcount;j++)
	 {
		 msg=msg+"<option value='"+j+"'> "+j+"</option>" ; 
	 }
 return msg;
 
}
%>
<%!
public String getorderno()
{
String gmsg="";
Date d1=new Date();
int yy= d1.getYear();
int mm= d1.getMonth();
int dd= d1.getDay();
int hh=d1.getHours();
int md=d1.getMinutes();
int ss=d1.getSeconds();
gmsg=Integer.toString(yy)+Integer.toString(mm)
+Integer.toString(dd)+Integer.toString(hh)+Integer.toString(md)
+Integer.toString(ss);

return gmsg;
}

%>
</body>

</html>