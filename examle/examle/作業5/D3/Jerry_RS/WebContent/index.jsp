<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>首頁</title>
<link rel="stylesheet" type="text/css" href="st1.css"/>
</head>
<body>
<div class="header">
<h1>JERRY_RESTAURANT</h1>

</div>
<div class="topnav" >
  <a href="add.jsp" TARGET= blank"new"><img alt="add" src="pic/add.png" ></a>
  <a href="query.jsp" TARGET= blank"new"><img alt="query" src="pic/query.png" ></a>
  <a href="update.jsp" TARGET= blank"new"><img alt="update" src="pic/update.png" ></a>
  <a href="delete.jsp" TARGET= blank"new"><img alt="delete" src="pic/delete.png" ></a>
</div>
<div class="content">

  <!-------JavaScript每日問候語 START-------->
  <script language="JavaScript">
document.write("<center><font size=24 color=black><b>") 
now = new Date() 
if (now.getDay() == 5) 
document.write("星期五 不再厭世") 
 
if (now.getDay() == 6) 
document.write("星期六 什麼意思") 
 
if (now.getDay() == 0) 
document.write("星期日 繼續厭世") 
 
if (now.getDay() == 1) 
document.write("星期一 極度厭世") 
 
if (now.getDay() == 2) 
document.write("星期二 非常厭世") 
 
if (now.getDay() == 3) 
document.write("星期三 普通厭世") 
 
if (now.getDay() == 4) 
document.write("星期四 有點厭世") 
document.write("</b></center></font>") 
 
</script> <BR>
<img  src="pic/beef.jpg" >
<img  src="pic/pork.jpg" >
<img  src="pic/fish.jpg" >

<!-------JavaScript每日問候語 END-------->

</div>
<div class=footer>
<!-------JavaScript電子郵件按鈕 START-------->
<FORM>
 <input TYPE="button" VALUE="本餐廳不提供客訴，若有問題，一定是客人的問題!!" onClick="parent.location='mailto:leo.huang13@gmail.com=郵件按鈕測試'">
</FORM>
<!-------JavaScript電子郵件按鈕 END-------->

</div>
</body>
</html>