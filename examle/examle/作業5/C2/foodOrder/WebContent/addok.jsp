<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="model.forder"
    import="Dao.forderDAO"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="BIG5">
<title>Java Restaurant Order Ok</title>
<style type="text/css">
#abc3
{
	background-color:;
	font-size:20px;
	color:orange;
	font-family: "Helvetica", "Arial","LiHei Pro","����-�c","�L�n������", sans-serif;
}
</style>
<link rel="stylesheet" type="text/css" href="st1.css">
</head>
<body>
	<%!//�[�W!�O�ŧi��k-->static 
	int cal(int st,int p,int c,int w,int so)//�o����ŧi��k�ܼ�
	{
		return st*500+p*300+c*200+w*100+so*80; //�p�⦡�]�g�n
	}
	%>
	<%//�o�̴N��main�{��
		/*out.println("name:"+request.getParameter("name")+
		"<br>ruler:"+request.getParameter("ruler")+
		"<br>pen:"+request.getParameter("pen"));*///�쥻�S������¿�X���g�k

		int tableNb=Integer.parseInt(request.getParameter("tableNb"));//request.getParameter�O����add��J���F��
		int steak=Integer.parseInt(request.getParameter("steak"));
		int porkChops=Integer.parseInt(request.getParameter("porkChops"));
		int chickenSteak=Integer.parseInt(request.getParameter("chickenSteak"));
		int wine=Integer.parseInt(request.getParameter("wine"));
		int soda=Integer.parseInt(request.getParameter("soda"));
		
		forder f=new forder();
		f.setTableNb(tableNb);
		f.setSteak(steak);
		f.setPorkChops(porkChops);
		f.setChickenSteak(chickenSteak);
		f.setWine(wine);
		f.setSoda(soda);
		
		new forderDAO().add(f);
	%>
	<div class="header" style="text-align:center;">
	<font size=5 color=#A7988A><b>JAVA RESTAURANT</b></font>
</div>
	
	<div class="content">
	<table id="abc3" width=350 height=500 align=center border=1>
		<tr>
			<td colspan=2 align=center>�z����<%=tableNb %>����\�ȤH
		<tr>
			<td colspan=2>�z���q����Ӭ�:
		<tr>
			<td width=200>��Ź�ز����� :
			<td><%=steak %>��
		<tr>
			<td>�ԩ�ޱ�
			<td><%=porkChops %>��
		<tr>
			<td>�ܥ�����
			<td><%=chickenSteak %>��
		<tr>
			<td>���s
			<td><%=wine %>��
		<tr>
			<td>��w��
			<td><%=soda %>��
		<tr>
			<td colspan=2 >�`�@:<%=cal(steak,porkChops,chickenSteak,wine,soda)%>��<!--�M��A��o���J�ܼƦW��-->
			<h5>~�еy�� �N���W���z�e�\~</h5>
	
	</table>
	</div>
	
<div class="footer" style="text-align:center;">
<a href="index.jsp"><font size=3 color=#FCFEE7>HOME</font></a>
&emsp;
<a href="add.jsp"><font size=3 color=#FCFEE7>�s�W�q��</font></a>
&emsp;
<a href="query.jsp"><font size=3 color=#FCFEE7>�d�߭q��</font></a>
&emsp;
<a href="update.jsp"><font size=3 color=#FCFEE7>��s�q��</font></a>
&emsp;
<a href="delete.jsp"><font size=3 color=#FCFEE7>�R���q��</font></a>

</div>

</body>
</html>