<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="st1.css">
<style>
* {
  font-family: "microsoft jhenghei", sans-serif;
}
</style><!-- 修改字體 -->
<script language="JavaScript">
<!--
org_Color=document.bgColor.substring(1.10)
-->
</script>
</head>
<body>
<div class=header>
 <form action="Controller/addController.jsp" method="post"><!-- addok.jsp的位置可以在選項後移動
	method="post" 不把資料秀在網址上 -->
		<table width=700 align=center border=0>
			<tr >
				<td colspan=11 align=center><h1>新增訂單</h1>
			<tr>
				<td>桌號
				
				<td>A餐每份30
				
				<td>B餐每份40
				
				<td>C餐每份50
				
				<td>D餐每份60
				
			<tr>
				
				<td><select name="number">
					<option value="1 table">1號桌</option>
					<option value="2 table">2號桌</option>
					<option value="3 table">3號桌</option>
					<option value="4 table">4號桌</option>
					<option value="5 table">5號桌</option>
					<option value="6 table">6號桌</option>
					<option value="7 table">7號桌</option>
					<option value="8 table">8號桌</option>
					</select>
				
				<td><select name="mealA">
					<option value=0>0 份</option>
					<option value=1>1 份</option>
					<option value=2>2 份</option>
					<option value=3>3 份</option>
					<option value=4>4 份</option>
					<option value=5>5 份</option>
					</select>
				
				<td><select name="mealB">
					<option value=0>0 份</option>
					<option value=1>1 份</option>
					<option value=2>2 份</option>
					<option value=3>3 份</option>
					<option value=4>4 份</option>
					<option value=5>5 份</option>
					</select>
				
				<td><select name="mealC">
					<option value=0>0 份</option>
					<option value=1>1 份</option>
					<option value=2>2 份</option>
					<option value=3>3 份</option>
					<option value=4>4 份</option>
					<option value=5>5 份</option>
					</select>
				
				<td><select name="mealD">
					<option  value=0>0 份</option>
					<option value=1>1 份</option>
					<option value=2>2 份</option>
					<option value=3>3 份</option>
					<option value=4>4 份</option>
					<option value=5>5 份</option>
					</select>
				<td colspan=2 align=center>
				<input type="submit" value="送出">
				<input type="reset" value="重置">
		</table>
	</form>
</div>

<div class=content>
	<table width=700 align=center border=0>
			<tr>
				<td>A餐 白醬義大利麵
<img border="0" src="pic/2.jpg" alt="no image" width="150" height="100">
				<td>B餐 紅醬義大利麵
<img border="0" src="pic/3.jpg" alt="no image" width="150" height="100">
				<td>C餐 焗烤義大利麵
<img border="0" src="pic/4.jpg" alt="no image" width="150" height="100">
				<td>D餐 白酒義大利麵
<img border="0" src="pic/5.jpg" alt="no image" width="150" height="100">

	</table>
</div>

<div class=footer>
<jsp:include page="end.jsp"></jsp:include>
<center>
<FORM>
請選擇背景顏色<br>
<SELECT onChange="document.bgColor=this.options[this.selectedIndex].value">
<OPTION VALUE="#B5EDF0">藍色</OPTION>
<OPTION VALUE="#FFFF00">黃色</OPTION>
<OPTION VALUE="#80FF00">綠色</OPTION>
<OPTION VALUE="#FF00FF">紫色</OPTION>
<OPTION VALUE="#000000">黑色</OPTION>
<OPTION VALUE="#FFFFFF">白色</OPTION>
</SELECT></FORM>
</center>

</div>
</body>
</html>