<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5"
	 import="model.order"
	 import="Dao.hworderDAO"
	%>
<!DOCTYPE html>
<html>
<head>
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


<meta charset="BIG5">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="st1.css">
</head>
<%
order p=(order)session.getAttribute("pp");//用session拿取"pp"也就是p的功能,然後轉型成order,因為原本是Object
	
%>
<style>
a {
    text-decoration:none
	}
</style>
<body background="pic/star.jpg">
<div class=header align=center><font face="標楷體" ><h1><a href="query.jsp" target=_self>查詢</a>
		<a href="update.jsp" target=_self>修改</a>
		<a href="delete.jsp" target=_self>刪除</h1></a></font></font>
		</div>
<div class=content>
	<table width=400 align=center border=1>
		<tr>
			<td width=200 align=center>炒飯
			<td align=center><%=p.getRice()*100 %>元
		<tr>
			<td align=center>義大利麵
			<td align=center><%=p.getPasta()*120 %>元
		<tr>
			<td align=center>漢堡
			<td align=center><%=p.getHamburger()*80 %>元
		<tr>
			<td align=center>牛排
			<td align=center><%=p.getSteak()*150 %>元
			
		<tr class=abc2>
			<td colspan=2 align=center>一共<%=p.getSum() %>元
											 <br>
			<h3><font face="標楷體" size=7>~建檔成功~</font></h3>
			</table>
</div>
<div class=footer>
<h2  align=center><a href="index.jsp"><font face="標楷體" size=6>首頁</font></a></h2><DIV ALIGN="CENTER">
<FORM>
<INPUT NAME="print" TYPE="button" VALUE="列印此頁"
ONCLICK="varitext()">
</FORM>
</DIV>
<%//session.removeAttribute("pp");//抹除pp功能以避免佔用記憶體 ,在同一頁會出錯,主要是換頁時把所占記憶體刪掉%>
</div>
</body>
</html>