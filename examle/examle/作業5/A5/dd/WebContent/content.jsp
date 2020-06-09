<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="Dao.DinerDao"
    import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
</head>
<body>
<div id="content">
<table border=0 >

	<tr>
		<td width=150px>id:
		<td width=150px>Customer:
		<td width=150px>Table:
		<td width=150px>Big Mac:
		<td width=150px>SousVide Steak:
		<td width=150px>French Fries:
		<td width=150px>Sum:
		<%


	
		
		ResultSet rs=new DinerDao().query();
		while(rs.next()){
		out.print("<tr>"
				+"<td>"+rs.getString("id")
				+"<td>"+rs.getString("customer")
				+"<td>"+rs.getString("num")
				+"<td>"+rs.getString("mac")
				+"<td>"+rs.getString("steak")
				+"<td>"+rs.getString("fries")
				+"<td>"+rs.getString("sum")
				);
		}

		%>
</table>
</div>
<%


	
		
		/*ResultSet rs=new DinerDao().query();
		while(rs.next()){
		out.print("<tr>"
				+"<td>"+rs.getString("id")
				+"<td>"+rs.getString("customer")
				+"<td>"+rs.getString("num")
				+"<td>"+rs.getString("mac")
				+"<td>"+rs.getString("steak")
				+"<td>"+rs.getString("fries")
				+"<td>"+rs.getString("sum")
				);
		}*/

		%>
<%


	/*try{
		ResultSet rs=null;
		rs=new DinerDao().query();
		while(rs.next()){
		out.print("<tr>"
				+"<td>"+rs.getString("id")
				+"<td>"+rs.getString("customer")
				+"<td>"+rs.getString("num")
				+"<td>"+rs.getString("mac")
				+"<td>"+rs.getString("steak")
				+"<td>"+rs.getString("fries")
				+"<td>"+rs.getString("sum")
				);
		}
	}catch(NullPointerException e){
		
	}*/

/*out.println("hello");
try{
ResultSet rs=null;
rs=new DinerDao().query();
while(rs.next())out.println(
		rs.getString("customer")
		+rs.getString("num")
		+rs.getString("mac")
		+rs.getString("steak")
		+rs.getString("fries")
		+rs.getString("sum"));
}catch(NullPointerException e){
	out.print("no Data");
}*/
/*ResultSet rs=null;
String id,c,n,m,s,f,sum;
try{
rs=new DinerDao().query();
 id=rs.getString("id");
 c=rs.getString("customer");
 n=rs.getString("num");
 m=rs.getString("mac");
 s=rs.getString("steak");
 f=rs.getString("fries");
 sum=rs.getString("sum");
 if(rs.next())
 out.println(id+"  Customer="+c+"  Table="+n+"  Big Mac="
		   +m+"  Suos Vide Steak="+s+"  French Fries="+f+"  Sum="+sum);
}


catch(NullPointerException e){
	
}*/
%>


</body>
</html>