<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="cssSet.css">
<%

	String er=(String)session.getAttribute("ER");


%>
<SCRIPT>
	var error=<%=er%>
	if(error==false){
		window.alert("�������w��K�O�J���Φ�m �I");
	}
</SCRIPT>
<%
session.removeAttribute("ER");
%>


</head>
<body>

	<div class="header">
		<h1 style="color:white;font-size:50px;text-align:center;">���</h1>
	</div>
	<div class="content">
		<form action="Controller/addController.jsp" method="post">
			<table align=center border=1>
				<tr height=180>
					<td width=180 ><img src="pic/rice.jpg" width=180 height=180>
					<td width=180><img src="pic/noodles.jpg" width=180 height=180>
					<td width=180><img src="pic/blacktea.jpg" width=180 height=180>
				<tr>
					<td>�ն�(10��/�J)�ƶq:
					<select id="s_rice" name="s_rice">
						<option value="0">0
						<option value="1">1
						<option value="2">2
						<option value="3">3
						<option value="4">4
						<option value="5">5
						<option value="6">6
						<option value="7">7
						<option value="8">8
						<option value="9">9
						<option value="10">10
					</select>
					<td>����(30��/�J)�ƶq:
					<select id="s_noodles" name="s_noodles">
						<option value="0">0
						<option value="1">1
						<option value="2">2
						<option value="3">3
						<option value="4">4
						<option value="5">5
						<option value="6">6
						<option value="7">7
						<option value="8">8
						<option value="9">9
						<option value="10">10
					</select>
					<td>����(15��/�M)�ƶq:
					<select id="s_blacktea" name="s_blacktea">
						<option value="0">0
						<option value="1">1
						<option value="2">2
						<option value="3">3
						<option value="4">4
						<option value="5">5
						<option value="6">6
						<option value="7">7
						<option value="8">8
						<option value="9">9
						<option value="10">10
					</select>
				<tr>
					<td colspan=3 align=center valign=middle>
						�ู:<select id="s_tnumber" name="s_tnumber">
						<option value="A">A
						<option value="B">B
						<option value="C">C
						<option value="D">D
						<option value="E">E
						<option value="F">F
						<option value="G">G
						<option value="H">H
											
							</select>
						<input type="submit" value="�T�{�e�X">
				
			</table>
		</form>
	</div>
	
	<div class="boter">
		<a href="index.jsp" ><h1 style="color:white;font-size:22px;text-align:center;">�^����</h1></a>
	</div>
	
</body>
</html>