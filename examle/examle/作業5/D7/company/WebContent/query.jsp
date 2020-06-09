<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
import="java.sql.ResultSet"
import="ComDAO.carDAO"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="BIG5">

<title>查詢訂單介面</title>

<link rel="stylesheet" type="text/css" href="st1.css">

</head>

<body>

<div class="header" colspan=2 align=center><h1>訂單資料查詢介面</h1></div>

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

<h1><a href="index.jsp">返回訂單系統</a>

</h1><img src="pic/9.gif" width="200" height="200"></div>

</body>

</html>

