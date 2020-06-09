<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="Model.forder"
    import="DAO.forderDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="sty.css">
</head>
<SCRIPT LANGUAGE="JavaScript">
function varitext(text){
text=document
print(text)
}

</script>

<%
forder f=(forder)session.getAttribute("F");
String[] foods=(String[])session.getAttribute("FS");
String[] qs=(String[])session.getAttribute("QS");
%>

<body>
<div class="header">
	<jsp:include page="TITLE.jsp"/>
</div>

<div class="content">


<table width="300" align=center border=0>
<tr>
	<td colspan=2 align=center bgcolor=green><%="桌號"+f.getTable() %>您的訂單為<br>
<%

if (foods!= null) {
    for (int i = 0; i < foods.length; i++) {
    	
        out.println("<tr><td width=100>"+foods[i]+
        		"<td>"+qs[i]);
      }
    } 
  else
  { out.println("none selected");}

%>
<tr>
	<td>總金額
	<td><%=f.getTotal() %>
<tr>
	<td colspan=2 align=center><h3>訂購完成</h3>	

</table>
<!--  
	<table width="300" align=center border=1>
	<tr>
		<td colspan=2 align=center><%="桌號"+f.getTable() %>您的訂單為
		
	<tr>
		<td width=100>雞腿飯
		<td><%=f.getChicken() %>
	<tr>
		<td>排骨飯
		<td><%=f.getPork() %>
	<tr>
		<td>牛丼
		<td><%=f.getBeef() %>
	<tr>
		<td>魚排飯
		<td><%=f.getFish() %>
	<tr>
		<td colspan=2>總金額<%=f.getTotal() %>
		<h3>訂購完成</h3>	
</table>
-->
<DIV ALIGN="CENTER">
<FORM>
<INPUT NAME="print" TYPE="button" VALUE="列印"
ONCLICK="varitext()">
</FORM>
</DIV>

</div>
<div class="footer">
	<jsp:include page="end.jsp"/>
</div>
</body>
</html>