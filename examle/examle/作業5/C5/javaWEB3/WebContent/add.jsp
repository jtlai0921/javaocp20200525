<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
<style type="text/css">
.button {
  display: inline-block;
  padding: 15px 25px;
  font-size: 24px;
  cursor: pointer;
  text-align: center;   
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: #4CAF50;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
}

.button:hover {background-color: #3e8e41}

.button:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
</style>
</head>
<link rel="stylesheet" type="text/css" href="st1.css">
<body>

<div class="header"><font size="5"><H1 ALIGN=center>�H�K�ө�</H1></font></div>

	<div class="content">
	<form action="addController.jsp" method="post">
		<table width=350 align=center border=0>
		<tr id="abc">
			<td colspan=2 align=center><h1>�q��</h1>
		<tr id="abc">
			<td>�m�W
			<td><input type="text" name="name">
		<tr id="abc">
			<td><IMG  SRC="pic/11.png" title="A�M�\">
			<td><input type="text" name="ruler" value="0">
		<tr id="abc">
			<td><IMG  SRC="pic/22.png" title="B�M�\">
			<td><input type="text" name="pen" value="0">
		<tr id="abc2">
			<td colspan=2 align=center>
			<input type="submit" value="�e�X">
			
			
		</table>
	</form>
	</div>
<div class="footer">
<a href="index.jsp"><button class="button">HOME</button></a><br>

</div>
</body>
</html>