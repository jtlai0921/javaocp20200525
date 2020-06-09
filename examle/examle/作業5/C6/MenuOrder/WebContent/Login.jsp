<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="Evn1.css">
</head>
<body>
<div class="header"></div>
<div class="content"  ALIGN="CENTER"><br>
	<form action="controller/LoginController.jsp" method="post">
		請輸入 會 員 名 稱  :  <input type="text" name="name">
		<br>*如為本餐廳會員，可直接進入點餐; 否則請註冊新會員。<br>
		<br><input type="submit" value=" 確 定 "> <a href= "addmember.jsp">    註冊新會員   </a>
	  

</form>
</div>
<div class="footer">
	<br><a href= "index.jsp"> 回主畫面  </a>
</div>
</body>
</html>