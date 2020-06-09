<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="sst1.css">
</head>
<body background="pic/back1.jpg" bgProperties=fixed>

<div class="header">
<jsp:include page="title.jsp"/>
</div>
<div class="content">
 	<form action="Controller/addController.jsp" method="post">
 	 	<table width=400 align=center border=1>
 	 	 	<tr>
 	 	 	 	<td>姓名
 	 	 	 	<td colspan=2><input type="text" name="name">
 	 	 	<tr>
 	  	 	 	<td colspan=3 align=center><h4>菜單</h4>
 	  	 	<tr>
 	 	 	 	<td>類型
 	 	 	 	<td colspan=2 align=center>數量 	 	 	 	
 	  	 	<tr>
 	 	 	 	<td>輕食<br>100元
 	 	 	 	<td width=200px>
 	 	 	 	<select name="fast">
 	 	 	 	<option value="0">0
 	 	 	 	<option value="1">1
 	 	 	 	<option value="2">2
 	 	 	 	<option value="3">3
 	 	 	 	<option value="4">4
 	 	 	 	<option value="5">5
 	 	 	 	</select>	 	 
 	 	 	 	<td width=100 valign=top>
		 	    <img src="pic/breakfast.jpg">
 	 	 	<tr>
 	 	 	 	<td>義大利麵<br>200元
 	 	 	 	<td>
 				<select name="noodle">
 				<option value="0">0
 	 	 	 	<option value="1">1
 	 	 	 	<option value="2">2
 	 	 	 	<option value="3">3
 	 	 	 	<option value="4">4
 	 	 	 	<option value="5">5
 	 	 	 	</select>
 	 	 	 	<td width=100 valign=top>
		 	    <img src="pic/lunch.jpg">
 	 	 	<tr>
 	 	 	 	<td>燉飯<br>300元
 	 	 	 	<td>
 	 	 	 	<select name="rice">
 	 	 	 	<option value="0">0
 	 	 	 	<option value="1">1
 	 	 	 	<option value="2">2
 	 	 	 	<option value="3">3
 	 	 	 	<option value="4">4
 	 	 	 	<option value="5">5
 	 	 	 	</select>
 	 	 	 	<td width=100 valign=top>
		 	    <img src="pic/dinner.jpg">	  	 	
 	 	 	<tr>
 	  	 	 	<td colspan=3 align=center>
 	  	 	 	<input type="submit" value="確認餐點">
 	  	 	
 	  	 	 	
 	 	</table>
	
 	</form>

</div>
<div class="footer">
<jsp:include page="end.jsp"/>
</div>

</body>
</html>