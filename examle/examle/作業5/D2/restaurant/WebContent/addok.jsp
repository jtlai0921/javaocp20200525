<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="model.menu"
    import="Dao.menuDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>薇薇鄉村早午餐-訂單</title>


</head>
<%!//宣告方法-->static 
int cal(int coffee,int tea,int salad, int panini, int bagel ,int pudding ,int cake)
{
	 return coffee*120+tea*100+salad*60+panini*80+bagel*60+pudding*50+cake*90;
}

%>
<%//main
/*out.println("name="+request.getParameter("name")+
"<br>ruler:"+request.getParameter("ruler")+
"<br>pen:"+request.getParameter("pen"));
*/

int desk=Integer.parseInt(request.getParameter("desk"));
int coffee=Integer.parseInt(request.getParameter("coffee"));
int tea=Integer.parseInt(request.getParameter("tea"));
int salad=Integer.parseInt(request.getParameter("salad"));
int panini=Integer.parseInt(request.getParameter("panini"));
int bagel=Integer.parseInt(request.getParameter("bagel"));
int pudding=Integer.parseInt(request.getParameter("pudding"));
int cake=Integer.parseInt(request.getParameter("cake"));

menu m=new menu();

m.setDesk(desk);
m.setCoffee(coffee);
m.setTea(tea);
m.setSalad(salad);
m.setPanini(panini);
m.setBagel(bagel);
m.setPudding(pudding);
m.setCake(cake);

new menuDAO().add(m);



%>

<body background="pic/back.jpg">

<div class="header">



</div>
<div class="content">

	<table width="300" align=center border=1>
		<tr id="abc">
			<td colspan=3 align=center><b><%=desk%><b>桌的訂單細目為：</b>
		<tr>
			<td align=center>咖啡
			<td align=center><%=coffee %>
		<tr>
			<td align=center>茶
			<td align=center><%=tea %>
		<tr>
			<td align=center>沙拉
			<td align=center><%=salad %>
		<tr>
			<td align=center>帕尼尼
			<td align=center><%=panini %>
		<tr>
			<td align=center>貝果
			<td align=center><%=bagel %>
		<tr>
			<td align=center>布丁
			<td align=center><%=pudding %>
		<tr>
			<td align=center>蛋糕
			<td align=center><%=cake %>
		
		<tr class="abc2">
			<td colspan=3 align=center>一共找您<%=cal(coffee,tea,salad,panini,bagel,pudding,cake)%>大洋<br>
			<h3>~建檔成功~</h3>
	</table>
</div>
<div class="footer">

<table border=1 align=center width=20%>
<tr>
		<td colspan=3 align=center height=20>
		<font size=4 color=#AA0022>SWEAR Brunch</font>
        <a href="index.jsp" ><h3>*回首頁呦*</h3></a>

</div>
</body>
</html>