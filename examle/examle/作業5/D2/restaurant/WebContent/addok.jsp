<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="model.menu"
    import="Dao.menuDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>�����m�������\-�q��</title>


</head>
<%!//�ŧi��k-->static 
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
			<td colspan=3 align=center><b><%=desk%><b>�઺�q��ӥج��G</b>
		<tr>
			<td align=center>�@��
			<td align=center><%=coffee %>
		<tr>
			<td align=center>��
			<td align=center><%=tea %>
		<tr>
			<td align=center>�F��
			<td align=center><%=salad %>
		<tr>
			<td align=center>������
			<td align=center><%=panini %>
		<tr>
			<td align=center>���G
			<td align=center><%=bagel %>
		<tr>
			<td align=center>���B
			<td align=center><%=pudding %>
		<tr>
			<td align=center>�J�|
			<td align=center><%=cake %>
		
		<tr class="abc2">
			<td colspan=3 align=center>�@�@��z<%=cal(coffee,tea,salad,panini,bagel,pudding,cake)%>�j�v<br>
			<h3>~���ɦ��\~</h3>
	</table>
</div>
<div class="footer">

<table border=1 align=center width=20%>
<tr>
		<td colspan=3 align=center height=20>
		<font size=4 color=#AA0022>SWEAR Brunch</font>
        <a href="index.jsp" ><h3>*�^������*</h3></a>

</div>
</body>
</html>