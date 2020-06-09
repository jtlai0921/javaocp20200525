<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="java.util.Date"
    import="java.text.SimpleDateFormat"
    import="model.ordertable"
    import="model.orderhead"
    import="model.orderline"
    import="Dao.companyDao"
    import="java.sql.ResultSet"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>�s�W�q��</title>
<link rel="stylesheet" type="text/css" href="st1.css">
</head>
<body>
<%
Date d1=new Date();
int yy= d1.getYear();
int mm= d1.getMonth();
int dd= d1.getDay();
int hh=d1.getHours();
int md=d1.getMinutes();
int ss=d1.getSeconds();
String gorderno=Integer.toString(yy)+Integer.toString(mm)
+Integer.toString(dd)+Integer.toString(hh)+Integer.toString(md)
+Integer.toString(ss);

//out.print(orderno);
    String iorderno=request.getParameter("orderno");
	String names=request.getParameter("1");
	//out.print("A1==> " +names+"<p>");
	String ordertables=request.getParameter("ordertable");
	
	String smsg="";
	int gid=-1;
     if( ordertables==null || ordertables.equals("-1")|| ordertables.equals(""))
     {
    	// out.print("XX");
    	 smsg="<p>�п�ܮู";
     }
	
	else
	 {
		ResultSet rs =new companyDao().query("food");
		int iqty=0;
		//String inid="20201712";
		while ( rs.next())
		{
		 
			String s_qty=request.getParameter(Integer.toString(rs.getInt("foodid")));
			int qty=Integer.parseInt(s_qty);
			//out.print("<p>whie-->"+rs.getInt("foodid")+"-->" +qty);
			if (qty>=1)
				
			  {
				iqty=iqty+1;
				//out.print("<p>iqty="+iqty);
				//out.print("<p>orderno==> " +iorderno+"<p>");
				 //out.print("add(orderhead,or)"); 
				 ResultSet rs1 =new companyDao().query("orderhead",iorderno);
				 while (rs1.next())
				{
					gid=rs1.getInt("orderid");
					      
				       
				}
				// gid��-1�ɷs�Worderhead
				 
				if(gid==-1)
				 {       //add("orderhead",or);
					    //out.print("<p>foodid==-1"+rs.getInt("foodid"));
						//out.print("<p> add()"); 
				         orderhead oh=new orderhead();
						 oh.setOrderno(iorderno);
						 oh.setTableid(Integer.parseInt(ordertables));
						 new  companyDao().add("orderhead",oh);
						 
						
							orderline ol1=new orderline();
							ol1.setFoodid(rs.getInt("foodid"));
							ol1.setQty(qty);
							new companyDao().addlin(iorderno, ol1);
				         
				 }
				else
				{
					//out.print("<p>foodid<>1"+rs.getInt("foodid"));
					//out.print("<p> add()1"); 
					orderline ol=new orderline();
					ol.setFoodid(rs.getInt("foodid"));
					ol.setQty(qty);
					new companyDao().addlin(iorderno, ol);
				}
			  }
		}
		 if(iqty==0)
		 {
			smsg=smsg+"<p>�M�\�ƶq���s �п�ܮM�\�ƶq";
		 }	
	}
 	
     String summsg="";  
     ResultSet rs2 =new companyDao().query("orderv_sum", iorderno);
     summsg=summsg+"<p><table align=center border=1>";
     while ( rs2.next())
    	{
    	 summsg=summsg+"<tr>";
    	 summsg=summsg+"<td> �q�渹�X"+rs2.getString("orderno");	 
    	 summsg=summsg+"<td> �ู"+rs2.getString("tablename");
    	 summsg=summsg+"<td> �`�p"+rs2.getInt("sum");
    	}
     summsg=summsg+"</table>";
     
%>

<%
String dummsg="";
dummsg=dummsg+"<p><table align=center border=1>";
ResultSet rs3 =new companyDao().query("orderv_d", iorderno);
while ( rs3.next())
{
	dummsg=dummsg+"<tr>";
	 dummsg=dummsg+"<td> �q�渹�X"+rs3.getString("orderno");
	 dummsg=dummsg+"<td> �ู"+rs3.getString("tablename");
	 dummsg=dummsg+"<td> �M�\"+rs3.getString("foodname");
	 dummsg=dummsg+"<td> ����"+rs3.getString("price");
	 dummsg=dummsg+"<td> �q��"+rs3.getString("qty");
	 dummsg=dummsg+"<td> �p�p"+rs3.getString("l_sum");
	 
}
dummsg=dummsg+"</table>";
%>
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
<Form action="add.jsp" method="post" name="addtable">
		<table  align=center border=1>
			<tr >
				<td colspan=3 align=center><h2>�q��</h2>
			<tr>
				<td>�q��s��</td>
				<td><input type="text" name="orderno"  value=<%= gorderno%> readonly>
			<tr>
			     <td>�ู</td>
			     <td>
			      
			      <%@ include file="infuntion.jsp"%>
                  <%=optionselect() %>
                  <%=smsg %>
			     </td>
			<tr>   
			   <td colspan=3 align=center><h2>�M�\�Ӥ�</h2>  
			   <%=smsg %>
			
			  <%=foodselect() %>
			<tr>
				<td colspan=3 align=center><input type="submit" name="addtables" value="attable"></td>
		</table>
	</Form>
	<p>
 <%=summsg %>
 <%=dummsg %>
 </div>
 <div class="footer">
 <a href="index.jsp" target=blank>home</a>
 </div>

</body>
</html>