<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
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
</style><!-- �ק�r�� -->
<script language="JavaScript">
<!--
org_Color=document.bgColor.substring(1.10)
-->
</script>
</head>
<body>
<div class=header>
 <form action="Controller/addController.jsp" method="post"><!-- addok.jsp����m�i�H�b�ﶵ�Ჾ��
	method="post" �����ƨq�b���}�W -->
		<table width=700 align=center border=0>
			<tr >
				<td colspan=11 align=center><h1>�s�W�q��</h1>
			<tr>
				<td>�ู
				
				<td>A�\�C��30
				
				<td>B�\�C��40
				
				<td>C�\�C��50
				
				<td>D�\�C��60
				
			<tr>
				
				<td><select name="number">
					<option value="1 table">1����</option>
					<option value="2 table">2����</option>
					<option value="3 table">3����</option>
					<option value="4 table">4����</option>
					<option value="5 table">5����</option>
					<option value="6 table">6����</option>
					<option value="7 table">7����</option>
					<option value="8 table">8����</option>
					</select>
				
				<td><select name="mealA">
					<option value=0>0 ��</option>
					<option value=1>1 ��</option>
					<option value=2>2 ��</option>
					<option value=3>3 ��</option>
					<option value=4>4 ��</option>
					<option value=5>5 ��</option>
					</select>
				
				<td><select name="mealB">
					<option value=0>0 ��</option>
					<option value=1>1 ��</option>
					<option value=2>2 ��</option>
					<option value=3>3 ��</option>
					<option value=4>4 ��</option>
					<option value=5>5 ��</option>
					</select>
				
				<td><select name="mealC">
					<option value=0>0 ��</option>
					<option value=1>1 ��</option>
					<option value=2>2 ��</option>
					<option value=3>3 ��</option>
					<option value=4>4 ��</option>
					<option value=5>5 ��</option>
					</select>
				
				<td><select name="mealD">
					<option  value=0>0 ��</option>
					<option value=1>1 ��</option>
					<option value=2>2 ��</option>
					<option value=3>3 ��</option>
					<option value=4>4 ��</option>
					<option value=5>5 ��</option>
					</select>
				<td colspan=2 align=center>
				<input type="submit" value="�e�X">
				<input type="reset" value="���m">
		</table>
	</form>
</div>

<div class=content>
	<table width=700 align=center border=0>
			<tr>
				<td>A�\ ����q�j�Q��
<img border="0" src="pic/2.jpg" alt="no image" width="150" height="100">
				<td>B�\ ����q�j�Q��
<img border="0" src="pic/3.jpg" alt="no image" width="150" height="100">
				<td>C�\ �K�N�q�j�Q��
<img border="0" src="pic/4.jpg" alt="no image" width="150" height="100">
				<td>D�\ �հs�q�j�Q��
<img border="0" src="pic/5.jpg" alt="no image" width="150" height="100">

	</table>
</div>

<div class=footer>
<jsp:include page="end.jsp"></jsp:include>
<center>
<FORM>
�п�ܭI���C��<br>
<SELECT onChange="document.bgColor=this.options[this.selectedIndex].value">
<OPTION VALUE="#B5EDF0">�Ŧ�</OPTION>
<OPTION VALUE="#FFFF00">����</OPTION>
<OPTION VALUE="#80FF00">���</OPTION>
<OPTION VALUE="#FF00FF">����</OPTION>
<OPTION VALUE="#000000">�¦�</OPTION>
<OPTION VALUE="#FFFFFF">�զ�</OPTION>
</SELECT></FORM>
</center>

</div>
</body>
</html>