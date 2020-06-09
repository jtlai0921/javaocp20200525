<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="model.ordertable"
    import="Dao.companyDao"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
</head>
<body>
<% 
String stableid=request.getParameter("tableid");
String tablename=request.getParameter("tablename");
if(stableid !=null  && tablename!=null )
{
	int tableid=Integer.parseInt(stableid);	
	ordertable ot=new ordertable();
	ot.setTablename(tablename);
	new companyDao().update(tableid, ot,"ordertable");
	//update(stableid,ot, "ordertable");
	
	
}

response.sendRedirect("../updatetablename.jsp")	;
%>
</body>
</html>