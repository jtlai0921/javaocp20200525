<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>點餐系統</title>
<link rel="stylesheet" type="text/css" href="Evn1.css">
<% 
  String Name=(String)session.getAttribute("NAME");
%>
</head>
<body>
  <div class="header">
  		<br>訂餐去<br><tr align=center>--請選擇下列餐點及數量---
  </div>
  <div class="content">
  	<form action="controller/addMenuController.jsp" method="post"> 
  	 <table width=600 align=center border=1>
	  <tr height=20>
	 	<td align=left colspan=3><input type="checkbox"name="m1c"> A.套餐，NT550:
	 	  數量:<select name="m1"><option value="1">1<option value="2">2<option value="3">3<option value="4">4<option value="5">5</select>
	  <tr>		
		 <td width=200> 	
		   沙拉<img alt="找不到圖" SRC="picture/sola.jpg">  
		 <td width=200>
	  		豬排<img alt="找不到圖" SRC="picture/pig.jpg">  		
		 <td width=200>
		 	紅豆湯<img alt="找不到圖" SRC="picture/do.jpg">
		 	
	  <tr height=20>
	  <td align=left colspan=3><input type="checkbox"name="m2c"> B.套餐，NT790:
	  	數量:<select name="m2"><option value="1">1<option value="2">2<option value="3">3<option value="4">4<option value="5">5</select>
	  <tr>		
		 <td width=200> 
		    玉米濃湯<img alt="找不到圖" SRC="picture/soup.jpg">	  
		 <td width=200>
	  		魚排<img alt="找不到圖" SRC="picture/fish.jpg">
		 <td width=200>
		 	冰淇淋<img alt="找不到圖" SRC="picture/ice.jpg">
	   <tr height=20>	 	 	
	   <td align=left colspan=3><input type="checkbox"name="m3c"> C.套餐，NT990:
	             數量:<select name="m3"><option value="1">1<option value="2">2<option value="3">3<option value="4">4<option value="5">5</select>
	   <tr>		
		 <td width=200> 
		   烤麵包	<img alt="找不到圖" SRC="picture/bread.jpg">		     
		 <td width=200>
	  		牛排<img alt="找不到圖" SRC="picture/steak.jpg">  
		 <td width=200>
		 	水果拼盤<img alt="找不到圖" SRC="picture/fruit.jpg">
	   <tr height=20>
	   <td align=left colspan=3>
	   會員等級: <input type="radio" name="member" value="1"checked="true"> 普通
     	        <input type="radio" name="member" value="2"> 銀卡
    	        <input type="radio" name="member" value="3">  金卡
    	   <input type="radio" name="member" value="4" >VIP
			 *桌號:<select name="tableNum"><option value="1">1<option value="2">2<option value="3">3<option value="4">4<option value="5">5</select>
			 <input type="submit" value="訂餐確認"> 會員名稱 :<%=Name %>
  	 </table>
  	</form>  	
  </div>
  <div class="footer">
    <br><DIV ALIGN="CENTER"><a href="SettingPage.jsp"><align=center> -> 訂 單 管 理 員 </a>
    <br><a href= "index.jsp"> 登出回主畫面  </a>
  </div>


</body>
</html>