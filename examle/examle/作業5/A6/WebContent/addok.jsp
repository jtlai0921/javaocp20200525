<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="model.meal"
    import="Dao.porderDao"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="st1.css">
</head>
<%!
int cal(int a,int b,int c,int d){
	return a*30+b*40+c*50+d*60;
}
%>
<%
/*
String number=request.getParameter("number");
int mealA=Integer.parseInt(request.getParameter("mealA"));
int mealB=Integer.parseInt(request.getParameter("mealB"));
int mealC=Integer.parseInt(request.getParameter("mealC"));
int mealD=Integer.parseInt(request.getParameter("mealD"));

meal m=new meal();
m.setNumber(number);
m.setMealA(mealA);
m.setMealB(mealB);
m.setMealC(mealC);
m.setMealD(mealD);

new porderDao().add(m);*/
meal m=(meal)session.getAttribute("M");
%>
<div class=header>

</div>

<div class=content>
<table width=700 align=center border=1>
		<tr>
			<td colspan=2 align=center><%=m.getNumber() %> ���q��ӥج�:
		<tr>
			<td width>A�\:
			<td><%=m.getMealA() %>
		<tr>
			<td>B�\:
			<td><%=m.getMealB() %>
		<tr>
			<td>C�\:
			<td><%=m.getMealC() %>
		<tr>
			<td>D�\:
			<td><%=m.getMealD() %>
		<tr>
			<td colspan=2 >�@�@: <%=cal(m.getMealA(),m.getMealB(),m.getMealC(),m.getMealD())%><br>
			<h3>~�q�ʦ��\~</h3>
	</table>
</div>

<div class=footer>
<jsp:include page="end.jsp"></jsp:include>
</div>
<body>

</body>
</html>