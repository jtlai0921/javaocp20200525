<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
   import="ComDAO.carDAO"
   import="java.sql.ResultSet"
   %>
<!DOCTYPE html>

<html>

<head>

<meta charset="BIG5">

<title>�R���q�椶��</title>

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

	<div class="header" colspan=2 align=center><h1>��J�q��ID�R���q��</h1>
	<form action="delete.jsp" method="post">
<td> 
<td>

			�R���q��ע�:<input type="text" name="id" size=16 value="�T�{�q��ID���J">

			<input type="submit" style="width:100px;height:70px" value="�T�w�R��">


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

	

	

	<h1><a href="index.jsp">��^�q��t��</a></h1>

	<img src="pic/7.gif" width="200" height="200">

	</div>



</body>

</html>