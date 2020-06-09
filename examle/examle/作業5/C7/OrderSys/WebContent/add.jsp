<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="sty.css">
</head>
<body>
<div class="header">
	<jsp:include page="TITLE.jsp"/>
</div>

<div class="content">
	<form action="Controller/addController.jsp" method="post">
		<table width=500>
			<tr>
				<td>選擇
				<td>套餐種類
				<td>數量
			
			<tr>
				<td><input type="checkbox" name="food" value="chicken" >
				<td><IMG SRC="pic/chicken.jpg" align=middle>雞腿飯($65)
				<td><input type="text" name="chicken" size=5 value="0">						
			<tr>
				<td><input type="checkbox" name="food" value="pork">
				<td><IMG SRC="pic/pork.jpg" align=middle>排骨飯($60)
				<td><input type="text" name="pork" size=5 value="0">
			<tr>
				<td><input type="checkbox" name="food" value="beef">
				<td><IMG SRC="pic/beef.jpg" align=middle>牛丼($80)
				<td><input type="text" name="beef" size=5 value="0">
			<tr>
				<td><input type="checkbox" name="food" value="fish">
				<td><IMG SRC="pic/fish.jpg" align=middle>魚排飯($75)
				<td><input type="text" name="fish" size=5 value="0">
			<tr class="">
				
				<td>桌號
				<td colspan=2 align=left><input type="text" name="desk" size=5>
			<tr>
				<td><input type="submit" value="送出">
				
		</table>	
	</form>
</div>
<div class="footer">
	<jsp:include page="end.jsp"/>
</div>
</body>
</html>