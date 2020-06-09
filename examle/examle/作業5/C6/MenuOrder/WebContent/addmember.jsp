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
<div class="content" ALIGN="CENTER">

 <div >註冊新會員</div><br>
<form action="controller/addmemberController.jsp" method="post">
會 員 名 稱 : <input type="text" name="name"><br><br>
附 註 資 料 : <input type="text" name="address"><br><br>
<input type="submit" value="送出">
</form>

</div>
<div class="footer">
	<DIV ALIGN="CENTER">
	<br><a href= "index.jsp"> 回主畫面  </a>
</div>
</body>
</html>