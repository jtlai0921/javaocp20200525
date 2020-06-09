<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="model.ooder"
    import="java.sql.ResultSet"
    import="Dao.ooderDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="sst1.css">
</head>

<%
String name=request.getParameter("name");
String fast=request.getParameter("fast");
String noodle=request.getParameter("noodle");
String rice=request.getParameter("rice");
String tab=request.getParameter("tab");

try{
int F=Integer.parseInt(fast);
int N=Integer.parseInt(noodle);
int R=Integer.parseInt(rice);
int T=Integer.parseInt(tab);

ooder o1=new ooder();
o1.setName(name);
o1.setFast(F);
o1.setNoodle(N);
o1.setRice(R);
new ooderDAO().update(T, o1);
}
catch(NumberFormatException e)
{

}


%>
<body background="pic/back1.jpg" bgProperties=fixed>

<div class="header">
<jsp:include page="title.jsp"/>
</div>
<div class="content">
 		<form action="update.jsp" method="post">
       		<table width=500 align=center border=0>
 	  	 	
 	  	 	 <tr>
 	  	 	    <td>
 	  	 	    Table:<input type="text" name="tab"  size=5>
 	  	 	  	姓名:<input type="text" name="name" size=5>
 	  	 	  	輕食:<input type="text" name="fast"  size=5>
 	  	 	  	<br>義大利麵:<input type="text" name="noodle"  size=5>
 	  	 	  	燉飯:<input type="text" name="rice"  size=5>
 	  	 	  	<td colspan=2 align=center>
 	  	 	  	<input type="submit" value="更改餐點">
 	  	 	
 	  	    </table>
 	  	</form>
 		
 		<table width=500 align=center border=1>
 	 	<tr>
 	 		<td>桌號
 	 		<td>姓名
 	 		<td>輕食
 	 		<td>義大利麵
 	 		<td>燉飯
 	 		<td>總價
 	 	<%
 	 	ResultSet rs=new ooderDAO().query();
		  while(rs.next())
		  {
			  out.println("<tr>"+
		 				"<td>"+rs.getInt("tab")+
		 				"<td>"+rs.getString("name")+
		 				"<td>"+rs.getInt("fast")+
		 				"<td>"+rs.getInt("noodle")+
		 				"<td>"+rs.getInt("rice")+
		 				"<td>"+rs.getInt("sum"));
		  }
 	 	
 	 	
 	 	
 	 	%>
 
 	
 	</table>



</div>
<div class="footer">
<jsp:include page="end.jsp"/>
</div>

</body>
</html>