<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="Dao.porderDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
<style type="text/css">
.button {
  display: inline-block;
  padding: 15px 25px;
  font-size: 24px;
  cursor: pointer;
  text-align: center;   
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: #4CAF50;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
}

.button:hover {background-color: #3e8e41}

.button:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
</style>
<link rel="stylesheet" type="text/css" href="st1.css">
</head>
<%
String ID=request.getParameter("id");

if(ID!=null)
{
	int I=Integer.parseInt(ID);

	
	new porderDAO().delete(I);
}

%>


<body>

<div class="header"><font size="5"><H1 ALIGN=center>隨便商店</H1></font></div>
<div class="content">
<form action="dalete.jsp" method="post">
<table width=500 align=center border=0>
<tr>
			<td>
編號:<input type="text" name="id" size=5>
<input type="submit" value="刪除">
</table>
	</form>
<hr>
	<jsp:include page="Q.jsp"/>
</div>
<div class="footer">
<a href="index.jsp"><button class="button">HOME</button></a><br>
</div>


</body>
</html>