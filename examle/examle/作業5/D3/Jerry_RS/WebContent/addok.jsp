<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="model.foods" 
    %>
<!DOCTYPE html>
<html>
<style type="text/css">
</style>

<head>
<meta charset="UTF-8">
<title>新增完成</title>
<link rel="stylesheet" type="text/css" href="st1.css"/>
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
<%!//宣告方法->static
int cal(int x,int y,int z)
{
	return x*100+y*85+z*150;
}
%>
<% foods f=(foods)session.getAttribute("F");
%>
<body>
<div class="header"><h1>JERRY_RESTAURANT</h1>
</div>
<div class="topnav">
  <a href="add.jsp" TARGET= blank"new"><img alt="add" src="pic/add.png" ></a>
  <a href="query.jsp" TARGET= blank"new"><img alt="query" src="pic/query.png" ></a>
  <a href="update.jsp" TARGET= blank"new"><img alt="update" src="pic/update.png" ></a>
  <a href="delete.jsp" TARGET= blank"new"><img alt="delete" src="pic/delete.png" ></a>
  <a href="index.jsp" TARGET= blank"new"><img alt="index" src="pic/index.png" ></a>
</div>
<div class="content">
<table width="300" align=center border=1>
	<tr>
		<td colspan=2 align=center><%=f.getDesk() %>號桌的訂單細目如下：
	<tr>
		<td width=100><img alt="fish" src="pic/fish.jpg" >魚排$100
		<td><%=f.getFish() %>
	<tr>
		<td><img alt="pork" src="pic/pork.jpg" >豬排$85
		<td><%=f.getPork() %>
	<tr>
		<td><img alt="beef" src="pic/beef.jpg" >牛排$150
		<td><%=f.getBeef() %>
	
	<tr>
		<td colspan=2>總共<%=f.getSum() %>
		<h3>餐點確認中~~<BR>請稍待片刻，即將為您上菜！</h3>
</table	>
</div>
<div class="footer">
<DIV ALIGN="CENTER">
<FORM>
<INPUT NAME="print" TYPE="button" VALUE="出訂單囉!!"
ONCLICK="varitext()">
</FORM>
</DIV>
</div>
</body>
<BR>
</html>