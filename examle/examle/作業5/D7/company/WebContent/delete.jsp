<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
   import="ComDAO.carDAO"
   import="java.sql.ResultSet"
   %>
<!DOCTYPE html>

<html>

<head>

<meta charset="BIG5">

<title>刪除訂單介面</title>

<link rel="stylesheet" type="text/css" href="st1.css">

<%



String ID=request.getParameter("id");



if( ID!=null)

{

	

	int I=Integer.parseInt(ID);	

	

	new ComDAO.carDAO().delete(I);

}



%>

</head>

<body>

	<div class="header" colspan=2 align=center><h1>輸入訂單ID刪除訂單</h1>
	<form action="delete.jsp" method="post">
<td> 
<td>

			刪除訂單ＩＤ:<input type="text" name="id" size=16 value="確認訂單ID後輸入">

			<input type="submit" style="width:100px;height:70px" value="確定刪除">


	</form>


	</div>

	<div class="content" style="background-image: url(pic/t2.png);

	background-size: 1000px 500px;

	

	width:900px;

	height:400px;

	

	padding-left:20px;

	padding-top:5px; overflow:scroll;">

<table width=500 align=center border=0>

<tr>

   <td>訂單ID

   <td>購買人姓名：

   <td>寶馬BMW：

   <td>賓士Benz：

   <td>奧迪Audi：

   <td>豐田Toyota：

   <td>本田Honda：

   <td>馬自達Mazada：

   <td>總價：

   <%

   ResultSet rs=new ComDAO.carDAO().query();

   while(rs.next())

   {

	   out.println("<tr>"+

                              "<td>"+rs.getInt("id")+

                              "<td>"+rs.getString("name")+

                              "<td>"+rs.getInt("bmw")+"輛"+

                              "<td>"+rs.getInt("benz")+"輛"+

                              "<td>"+rs.getInt("audi")+"輛"+

                              "<td>"+rs.getInt("toyota")+"輛"+

                              "<td>"+rs.getInt("honda")+"輛"+

                              "<td>"+rs.getInt("mazada")+"輛"+

                              "<td>"+rs.getInt("sum") +"NTD"

                              

			     );

   }

   %>





</table>



</div>

	<div class="footer">

	

	

	<h1><a href="index.jsp">返回訂單系統</a></h1>

	<img src="pic/7.gif" width="200" height="200">

	</div>



</body>

</html>