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
 	 	 	 	<td>�m�W
 	 	 	 	<td colspan=2><input type="text" name="name">
 	 	 	<tr>
 	  	 	 	<td colspan=3 align=center><h4>���</h4>
 	  	 	<tr>
 	 	 	 	<td>����
 	 	 	 	<td colspan=2 align=center>�ƶq 	 	 	 	
 	  	 	<tr>
 	 	 	 	<td>����<br>100��
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
 	 	 	 	<td>�q�j�Q��<br>200��
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
 	 	 	 	<td>�L��<br>300��
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
 	  	 	 	<input type="submit" value="�T�{�\�I">
 	  	 	
 	  	 	 	
 	 	</table>
	
 	</form>

</div>
<div class="footer">
<jsp:include page="end.jsp"/>
</div>

</body>
</html>