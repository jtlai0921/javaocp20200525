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
order p=(order)session.getAttribute("pp");//��session����"pp"�]�N�Op���\��,�M���૬��order,�]���쥻�OObject
	
%>
<style>
a {
    text-decoration:none
	}
</style>
<body background="pic/star.jpg">
<div class=header align=center><font face="�з���" ><h1><a href="query.jsp" target=_self>�d��</a>
		<a href="update.jsp" target=_self>�ק�</a>
		<a href="delete.jsp" target=_self>�R��</h1></a></font></font>
		</div>
<div class=content>
	<table width=400 align=center border=1>
		<tr>
			<td width=200 align=center>����
			<td align=center><%=p.getRice()*100 %>��
		<tr>
			<td align=center>�q�j�Q��
			<td align=center><%=p.getPasta()*120 %>��
		<tr>
			<td align=center>�~��
			<td align=center><%=p.getHamburger()*80 %>��
		<tr>
			<td align=center>����
			<td align=center><%=p.getSteak()*150 %>��
			
		<tr class=abc2>
			<td colspan=2 align=center>�@�@<%=p.getSum() %>��
											 <br>
			<h3><font face="�з���" size=7>~���ɦ��\~</font></h3>
			</table>
</div>
<div class=footer>
<h2  align=center><a href="index.jsp"><font face="�з���" size=6>����</font></a></h2><DIV ALIGN="CENTER">
<FORM>
<INPUT NAME="print" TYPE="button" VALUE="�C�L����"
ONCLICK="varitext()">
</FORM>
</DIV>
<%//session.removeAttribute("pp");//�ٰ�pp�\��H�קK���ΰO���� ,�b�P�@���|�X��,�D�n�O�����ɧ�ҥe�O����R��%>
</div>
</body>
</html>