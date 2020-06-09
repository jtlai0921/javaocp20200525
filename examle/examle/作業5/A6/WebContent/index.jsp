<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="java.time.LocalTime"
    import="java.time.temporal.ChronoUnit"
    %>
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
<SCRIPT LANGUAGE="JavaScript">

<!-- This script and many more are available free online at -->
<!-- The JavaScript Source!! http://javascript.internet.com -->

<!-- Begin
function varitext(text){
text=document
print(text)
}
//  End -->
</script>

</head>
<body>

<div class=header>
<jsp:include page="title.jsp"></jsp:include>
</div>

<div class=content>
<img src="pic/1.jpg" Align=right alt="runoob.com" width="601" height="400">
<br><h3><a href="add.jsp" >新增訂單</a></h3><br>
<h3><a href="query.jsp">查詢訂單</a></h3><br>
<h3><a href="update.jsp">修改訂單</a></h3><br>
<h3><a href="delete.jsp">刪除訂單</a></h3><br>
<!--在jsp"後面加上 target=_blank 功能是點下超連結時開新視窗 -->
</div>

<div class=footer>
<DIV ALIGN="left">
<FORM>
<INPUT NAME="print" TYPE="button" VALUE="列印此頁"
ONCLICK="varitext()">
</FORM>
</DIV>

總統大選剩餘<script language="JavaScript">
var now=new Date();var spday=new
Date(2020,1-1,11);a=(spday.getTime()-now.getTime())/(24*60*60*1000);
a=Math.ceil(a);document.write(""+a+"");
</script>天

</div>


</body>
</html>