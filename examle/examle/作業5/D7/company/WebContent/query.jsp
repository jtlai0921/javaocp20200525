<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
import="java.sql.ResultSet"
import="ComDAO.carDAO"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="BIG5">

<title>�d�߭q�椶��</title>

<link rel="stylesheet" type="text/css" href="st1.css">

</head>

<body>

<div class="header" colspan=2 align=center><h1>�q���Ƭd�ߤ���</h1></div>

<div class="content" style="background-image: url(pic/t2.png);

	background-size: 1000px 500px;

	

	width:900px;

	height:400px;

	

	padding-left:20px;

	padding-top:5px; overflow:scroll;">

<table width=500 align=center border=0>

<tr>

   <td>�q��ID

   <td>�ʶR�H�m�W�G

   <td>�_��BMW�G

   <td>���hBenz�G

   <td>���}Audi�G

   <td>�ץ�Toyota�G

   <td>����Honda�G

   <td>���۹FMazada�G

   <td>�`���G

   <%

   ResultSet rs=new ComDAO.carDAO().query();

   while(rs.next())

   {

	   out.println("<tr>"+

                              "<td>"+rs.getInt("id")+

                              "<td>"+rs.getString("name")+

                              "<td>"+rs.getInt("bmw")+"��"+

                              "<td>"+rs.getInt("benz")+"��"+

                              "<td>"+rs.getInt("audi")+"��"+

                              "<td>"+rs.getInt("toyota")+"��"+

                              "<td>"+rs.getInt("honda")+"��"+

                              "<td>"+rs.getInt("mazada")+"��"+

                              "<td>"+rs.getInt("sum") +"NTD"

                              

			     );

   }

   %>





</table>



</div>



<div class="footer">

<h1><a href="index.jsp">��^�q��t��</a>

</h1><img src="pic/9.gif" width="200" height="200"></div>

</body>

</html>

