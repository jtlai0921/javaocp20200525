<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="model.car"
    import="ComDAO.carDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
</head>
<body>
<%!//宣告方法-->static

int cal(int b,int bz,int a,int t,int h,int m)

{

	return b*100000+bz*100000+a*100000+t*50000+h*50000+m*700000;

}



%>





<%

String name=request.getParameter("name");

int bmw=Integer.parseInt(request.getParameter("bmw"));

int benz=Integer.parseInt(request.getParameter("benz"));

int audi=Integer.parseInt(request.getParameter("audi"));

int toyota=Integer.parseInt(request.getParameter("toyota"));

int honda=Integer.parseInt(request.getParameter("honda"));

int mazada=Integer.parseInt(request.getParameter("mazada"));

//int cal=Integer.parseInt(request.getParameter("cal"));



car c=new car();

c.setName(name);

c.setBmw(bmw);

c.setBenz(benz);

c.setAudi(audi);

c.setToyota(toyota);

c.setHonda(honda);

c.setMazada(mazada);

//c.setCal(cal);



 new carDAO().add(c);
 
 session.setAttribute("C", c);
 
 response.sendRedirect("../addok.jsp");

%>
</body>
</html>