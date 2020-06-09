<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="Dao.menuDAO"
    import="model.menu"   
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>薇薇鄉村早午餐-更新</title>
<style type="text/css">
#abc
{
	background-color:#826C7F;
	font-family:"Times New Roman",Times,serif;
	
}

.abc2
{
	background-color:#5D4E60;
}

</style>
</head>
<%
String Desk=request.getParameter("desk");
String Coffee=request.getParameter("coffee");
String Tea=request.getParameter("tea");
String Salad=request.getParameter("salad");
String Panini=request.getParameter("panini");
String Bagel=request.getParameter("bagel");
String Pudding=request.getParameter("pudding");
String Cake=request.getParameter("cake");

String ID=request.getParameter("id");

if(Desk!=null && Coffee!=null && Tea!=null && Salad!=null && Panini!=null && Bagel!=null && Pudding!=null && Cake!=null && ID!=null)
{
	int D=Integer.parseInt(Desk);
	int C=Integer.parseInt(Coffee);
	int T=Integer.parseInt(Tea);
	int S=Integer.parseInt(Salad);
	int P=Integer.parseInt(Panini);
	int B=Integer.parseInt(Bagel);
	int PU=Integer.parseInt(Pudding);
	int CA=Integer.parseInt(Cake);
	
	int I=Integer.parseInt(ID);
		
	menu m=new menu();

	m.setCoffee(D);
	m.setCoffee(C);
	m.setTea(T);
	m.setSalad(S);
	m.setPanini(P);
	m.setBagel(B);
	m.setPudding(PU);
	m.setCake(CA);

	new menuDAO().update(I, m);
	
}
//trye{} catch()
%>

<body background="pic/back.jpg">



    
	<form action="update.jsp" method="post">
		<table width=1000 align=center border=0>
			<tr id="abc">
			<td colspan=4 align=center><h1>更新訂單</h1>
			<b>編號：</b><input type="text" name="id" size=3 value="1">
			<b>桌別：</b><input type="text" name="desk" size=3 value="0">
			<b>咖啡：</b><input type="text" name="coffee" size=3 value="0">
            <b>茶：</b><input type="text" name="tea" size=3 value="0">
            <b>沙拉：</b><input type="text" name="salad" size=3 value="0">
            <b>帕尼尼：</b><input type="text" name="panini" size=3 value="0">
            <b>貝果：</b><input type="text" name="bagel" size=3 value="0">
            <b>布丁：</b><input type="text" name="pudding" size=3 value="0">
            <b>蛋糕：</b><input type="text" name="cake" size=3 value="0">                                 
            <input type="submit" value="更新">			
		</table>
	</form>
	<hr>

<jsp:include page="Q.jsp"/>

<table border=1 align=center width=20%>
<tr>
		<td colspan=3 align=center height=20>
		<font size=4 color=#AA0022>SWEAR Brunch</font>
        <a href="index.jsp" ><h3>*回首頁呦*</h3></a>

</body>
</html>