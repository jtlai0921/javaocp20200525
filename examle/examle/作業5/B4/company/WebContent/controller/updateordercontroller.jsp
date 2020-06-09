<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
      import ="Dao.companyDao"
      import="java.sql.ResultSet"
      import="model.orderhead"
      import="model.orderline"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
</head>
<body>
<% 
String ordertable=request.getParameter("ordertable");
String sorderid=request.getParameter("orderid");
out.print("<p>ordertable"+ordertable);
out.print("<p>orderid"+sorderid);
String lno="0";


int tableid=Integer.parseInt(ordertable);
if(tableid>=1)
{
	 int orderid=Integer.parseInt(sorderid);
	 out.print("update tableid");
	 orderhead oh=new orderhead();
	 oh.setTableid(tableid);
	 new companyDao().update(orderid, oh, "orderhead");
	 
}
int gorderid=Integer.parseInt(sorderid);
ResultSet rs=new companyDao().query("orderheadline",sorderid,sorderid);
int gqty=0;
while(rs.next())
{
	//out.print("<p>query lineid=>"+rs.getInt("orderlineid"));
	out.print("<p>query foodid=>"+rs.getInt("foodid"));
	//out.print("<p>query lineid qty=>"+rs.getInt("qty"));
	String sqty=request.getParameter(Integer.toString(rs.getInt("foodid"))); 
	  // lno=String.valueOf(rs1.getInt("foodid"));
	//out.print("<p> s_qty="+sqty);
	 gqty=Integer.parseInt(sqty);  
	
	  if(gqty >=1)
	  {
		  orderline oe=new orderline();
		  out.print("<p> gqty"+gqty);
		  oe.setQty(gqty);
		  out.print("<p> orderlineid"+rs.getInt("orderlineid"));
		  new companyDao().update(rs.getInt("orderlineid"), oe,"orderline");
				 
		 
	  }
}  
	 /* debug  
	 else
	  {
		  out.print("not update qty");
		  out.print("<p>query lineid=>"+rs.getInt("orderlineid"));
		  out.print("<p>query foodid=>"+rs.getInt("foodid"));
	  }
	  */


response.sendRedirect("../updateorder.jsp")	;
//orderheadline



%>
</body>
</html>