<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="model.forder"
    import="Dao.forderDAO"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>��s�q��</title>

<link rel="stylesheet" type="text/css" href="st1.css">
</head>

	<%
		/*String Name=request.getParameter("name"); //request.getParameter�O������J���F��
		String Ruler=request.getParameter("ruler");
		String Pen=request.getParameter("pen");
		String ID=request.getParameter("id");
		
		if(Name!=null && Ruler!=null && Pen!=null && ID!=null)// != >>������
		{
			int R=Integer.parseInt(Ruler);
			int P=Integer.parseInt(Pen);
			int I=Integer.parseInt(ID);
			
			Porder p=new Porder();
			p.setName(Name);
			p.setRuler(R);
			p.setPen(P);
			new porderDAO().update(I,p);
		}
		*/
		
		String TablNb=request.getParameter("tablNb"); //request.getParameter�O������J���F��
		String Steak=request.getParameter("steak");
		String PorkChops=request.getParameter("porkChops");
		String ChickenSteak=request.getParameter("chickenSteak");
		String Wine=request.getParameter("wine");
		String Soda=request.getParameter("soda");
		String ID=request.getParameter("id");
		
		out.print(TablNb+","+Steak+","+PorkChops+","+Wine+","+Soda+","+ID);
		
		try{
			int T=Integer.parseInt(TablNb);
			int St=Integer.parseInt(Steak);
			int P=Integer.parseInt(PorkChops);
			int C=Integer.parseInt(ChickenSteak);
			int W=Integer.parseInt(Wine);
			int So=Integer.parseInt(Soda);
			int I=Integer.parseInt(ID);
			
			
			forder f=new forder();
			f.setTableNb(T);
			f.setSteak(St);
			f.setPorkChops(P);
			f.setChickenSteak(C);
			f.setWine(W);
			f.setSoda(So);	
			
			new forderDAO().update(I,f);
			}
		catch(NumberFormatException e){}
	%>
	<body>	
<div class="header" >
	<font size=5 color=#A7988A><b>JAVA RESTAURANT</b></font>
</div>
	
	<div class="content">
	<form action="update.jsp" method="post">  <!-- action=�O�o�ʧ@�ǵ����@�� -->
		<table width=800 align=center border=0>
			<tr>
				<td id="abc3">�q��s�� :
				<td><input type="text" name="id" size="1">
				<td id="abc3">�ู :
				<td><select name="tablNb">
					<option value="1">1
					<option value="2">2
					<option value="3">3
					<option value="4">4
					<option value="5">5
					</select>
				<td id="abc3">���� :
				<td><input type="text" name="steak" size="1" value="0">
				<td id="abc3">�ޱ� :
				<td><input type="text" name="porkChops" size="1" value="0">
				<td id="abc3">���� :
				<td><input type="text" name="chickenSteak" size="1" value="0">
				<tr>
				<td id="abc3">���s :
				<td><input type="text" name="wine" size="1" value="0">
				<td id="abc3">��w�� :
				<td><input type="text" name="soda" size="1" value="0">
				<td>
				<input type="submit" value="�e�X"><!-- ���s�g�k -->
		</table>
		<hr>
	<jsp:include page="Q.jsp"/>
	</div>
	
<div class="footer" style="text-align:center;">
<a href="index.jsp"><font size=3 color=#FCFEE7>HOME</font></a>
&emsp;
<a href="add.jsp"><font size=3 color=#FCFEE7>�s�W�q��</font></a>
&emsp;
<a href="query.jsp"><font size=3 color=#FCFEE7>�d�߭q��</font></a>
&emsp;
<a href="delete.jsp"><font size=3 color=#FCFEE7>�R���q��</font></a>

</div>

</body>
</html>