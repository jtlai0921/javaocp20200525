<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="DAO.eatDAO"
    import="model.eat"
    import="model.eatPrice"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
</head>
<body>
<%
/*
eatPrice[] ep=eatPrice.values();
int riceP=ep[0].getX();
int noodlesP=ep[1].getX();
int blackteaP=ep[2].getX();
*/
String error="true";
String tnumber="";
int rice=0;
int noodles=0;
int blacktea=0;
int sum=0;
try{
tnumber=request.getParameter("s_tnumber");
rice=Integer.parseInt(request.getParameter("s_rice"));
noodles=Integer.parseInt(request.getParameter("s_noodles"));
blacktea=Integer.parseInt(request.getParameter("s_blacktea"));
}
catch(Exception e){
	
}
eat e=null;
eatDAO ed=null;
if(rice!=0 || noodles!=0 || blacktea!=0){
	e=new eat(tnumber,rice,noodles,blacktea);
	/*e.setTnumber(tnumber);
	e.setRice(rice);
	e.setNoodles(noodles);
	e.setBlacktea(blacktea);
	e.getSum();*/
	sum=e.getSum();
	ed=new eatDAO();
	ed.add(e);
	session.setAttribute("E", e);
	session.setAttribute("ED", ed);
	response.sendRedirect("../addok.jsp"); // ../表示上一層資料夾
}
else{
	error="false";
	session.setAttribute("ER", error);
	response.sendRedirect("../add.jsp");
}







%>
</body>
</html>