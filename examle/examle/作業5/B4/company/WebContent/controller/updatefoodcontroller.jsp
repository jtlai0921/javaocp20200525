<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="model.food"
    import="Dao.companyDao"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
</head>
<body>
<% 
String sfoodid=request.getParameter("foodid");
String spirce=request.getParameter("price");
String foodname=request.getParameter("foodname");
String img=request.getParameter("img");
if(sfoodid !=null && spirce !=null && foodname!=null && img!=null)
{
	int foodid=Integer.parseInt(sfoodid);
	int pirce=Integer.parseInt(spirce);
	food of=new food();
	of.setFoodname(foodname);
	of.setImg(img);
	of.setPrice(pirce);
	new companyDao().update(foodid,of, "food");
	
	
}

response.sendRedirect("../updatefood.jsp")	;
%>
</body>
</html>