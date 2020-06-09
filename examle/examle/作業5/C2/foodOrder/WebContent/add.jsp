<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Java Restaurant Order</title>

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
<div class="header" style="text-align:center;">
	<font size=5 color=#A7988A><b>JAVA RESTAURANT</b></font>
</div>

<div class="content">
<form action="addok.jsp" method="post"><!--action=要接收的頁面   method="post"傳過去的方法-->
		<table width=750 height=100 align=center border=0>	
		<tr>
		<td><img alt="牛排" src="pic/steak.png">
		<td><img alt="牛排" src="pic/pork.png">
		<td><img alt="牛排" src="pic/chicken.png">
		<td><img alt="牛排" src="pic/wine.png">
		<td><img alt="牛排" src="pic/soda.png">
		<br><br>
		</table>
		<table width=350 height=400 align=center border=1>
			<tr>
				<td colspan=2 align=center id="abc3"><font size=5 color=#A7988A><b>歡迎點餐</b><!-- colspan表示儲存格 等號後面數字代表合併幾格 -->
			<tr>
				<td id="abc3">桌 號 :
				<td><select name="tableNb">
					<option value="1">1
					<option value="2">2
					<option value="3">3
					<option value="4">4
					<option value="5">5
					</select>
			<tr>
				<td id="abc3">老饕肋眼牛排<font size=3 color=#A7988A>---------------$500
				<td><input type="text" name="steak" value="0" size=2>
			<tr>
				<td id="abc3">戰斧豬排<font size=3 color=#A7988A>---------------$300
				<td><input type="text" name="porkChops" value="0" size=2>
			<tr>
				<td id="abc3">脆皮雞排<font size=3 color=#A7988A>---------------$200
				<td><input type="text" name="chickenSteak" value="0" size=2>
			<tr>
				<td id="abc3">紅酒<font size=3 color=#A7988A>---------------$100
				<td><input type="text" name="wine" value="0" size=2>
			<tr>
				<td id="abc3">氣泡水<font size=3 color=#A7988A>---------------$80
				<td><input type="text" name="soda" value="0" size=2>
			<tr>
				<td colspan=2 align=center>
				<input type="submit" value="送出"><!-- 按鈕寫法 -->
		</table>
		
	</form>

</div>
<div class="footer" style="text-align:center;">
<a href="index.jsp"><font size=3 color=#FCFEE7>HOME</font></a>
&emsp;
<a href="query.jsp"><font size=3 color=#FCFEE7>查詢訂單</font></a>
&emsp;
<a href="update.jsp"><font size=3 color=#FCFEE7>更新訂單</font></a>
&emsp;
<a href="delete.jsp"><font size=3 color=#FCFEE7>刪除訂單</font></a>

</div>
</body>
</html>