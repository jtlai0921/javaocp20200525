<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
import="java.sql.ResultSet"
import="ComDAO.carDAO"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="BIG5">

<title>琩高璹虫ざ</title>

<link rel="stylesheet" type="text/css" href="st1.css">

</head>

<body>

<div class="header" colspan=2 align=center><h1>璹虫戈琩高ざ</h1></div>

<div class="content" style="background-image: url(pic/t2.png);

	background-size: 1000px 500px;

	

	width:900px;

	height:400px;

	

	padding-left:20px;

	padding-top:5px; overflow:scroll;">

<table width=500 align=center border=0>

<tr>

   <td>璹虫ID

   <td>潦禦﹎

   <td>腳皑BMW

   <td>猾Benz

   <td>而瓆Audi

   <td>伦バToyota

   <td>セバHonda

   <td>皑笷Mazada

   <td>羆基

   <%

   ResultSet rs=new ComDAO.carDAO().query();

   while(rs.next())

   {

	   out.println("<tr>"+

                              "<td>"+rs.getInt("id")+

                              "<td>"+rs.getString("name")+

                              "<td>"+rs.getInt("bmw")+"进"+

                              "<td>"+rs.getInt("benz")+"进"+

                              "<td>"+rs.getInt("audi")+"进"+

                              "<td>"+rs.getInt("toyota")+"进"+

                              "<td>"+rs.getInt("honda")+"进"+

                              "<td>"+rs.getInt("mazada")+"进"+

                              "<td>"+rs.getInt("sum") +"NTD"

                              

			     );

   }

   %>





</table>



</div>



<div class="footer">

<h1><a href="index.jsp">璹虫╰参</a>

</h1><img src="pic/9.gif" width="200" height="200"></div>

</body>

</html>

