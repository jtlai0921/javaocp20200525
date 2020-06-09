<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="model.forder"
    import="Dao.forderDAO"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="BIG5">
<title>Java Restaurant Order Ok</title>
<style type="text/css">
#abc3
{
	background-color:;
	font-size:20px;
	color:orange;
	font-family: "Helvetica", "Arial","LiHei Pro","黑體-繁","微軟正黑體", sans-serif;
}
</style>
<link rel="stylesheet" type="text/css" href="st1.css">
</head>
<body>
	<%!//加上!是宣告方法-->static 
	int cal(int st,int p,int c,int w,int so)//這邊先宣告方法變數
	{
		return st*500+p*300+c*200+w*100+so*80; //計算式也寫好
	}
	%>
	<%//這裡就像main程式
		/*out.println("name:"+request.getParameter("name")+
		"<br>ruler:"+request.getParameter("ruler")+
		"<br>pen:"+request.getParameter("pen"));*///原本沒有表格單純輸出的寫法

		int tableNb=Integer.parseInt(request.getParameter("tableNb"));//request.getParameter是接收add輸入的東西
		int steak=Integer.parseInt(request.getParameter("steak"));
		int porkChops=Integer.parseInt(request.getParameter("porkChops"));
		int chickenSteak=Integer.parseInt(request.getParameter("chickenSteak"));
		int wine=Integer.parseInt(request.getParameter("wine"));
		int soda=Integer.parseInt(request.getParameter("soda"));
		
		forder f=new forder();
		f.setTableNb(tableNb);
		f.setSteak(steak);
		f.setPorkChops(porkChops);
		f.setChickenSteak(chickenSteak);
		f.setWine(wine);
		f.setSoda(soda);
		
		new forderDAO().add(f);
	%>
	<div class="header" style="text-align:center;">
	<font size=5 color=#A7988A><b>JAVA RESTAURANT</b></font>
</div>
	
	<div class="content">
	<table id="abc3" width=350 height=500 align=center border=1>
		<tr>
			<td colspan=2 align=center>您為第<%=tableNb %>桌用餐客人
		<tr>
			<td colspan=2>您的訂單明細為:
		<tr>
			<td width=200>老饕肋眼牛排 :
			<td><%=steak %>份
		<tr>
			<td>戰斧豬排
			<td><%=porkChops %>份
		<tr>
			<td>脆皮雞排
			<td><%=chickenSteak %>份
		<tr>
			<td>紅酒
			<td><%=wine %>份
		<tr>
			<td>氣泡水
			<td><%=soda %>份
		<tr>
			<td colspan=2 >總共:<%=cal(steak,porkChops,chickenSteak,wine,soda)%>元<!--然後再把這邊填入變數名稱-->
			<h5>~請稍後 將馬上為您送餐~</h5>
	
	</table>
	</div>
	
<div class="footer" style="text-align:center;">
<a href="index.jsp"><font size=3 color=#FCFEE7>HOME</font></a>
&emsp;
<a href="add.jsp"><font size=3 color=#FCFEE7>新增訂單</font></a>
&emsp;
<a href="query.jsp"><font size=3 color=#FCFEE7>查詢訂單</font></a>
&emsp;
<a href="update.jsp"><font size=3 color=#FCFEE7>更新訂單</font></a>
&emsp;
<a href="delete.jsp"><font size=3 color=#FCFEE7>刪除訂單</font></a>

</div>

</body>
</html>