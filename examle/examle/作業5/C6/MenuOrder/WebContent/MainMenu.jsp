<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>�I�\�t��</title>
<link rel="stylesheet" type="text/css" href="Evn1.css">
<% 
  String Name=(String)session.getAttribute("NAME");
%>
</head>
<body>
  <div class="header">
  		<br>�q�\�h<br><tr align=center>--�п�ܤU�C�\�I�μƶq---
  </div>
  <div class="content">
  	<form action="controller/addMenuController.jsp" method="post"> 
  	 <table width=600 align=center border=1>
	  <tr height=20>
	 	<td align=left colspan=3><input type="checkbox"name="m1c"> A.�M�\�ANT550:
	 	  �ƶq:<select name="m1"><option value="1">1<option value="2">2<option value="3">3<option value="4">4<option value="5">5</select>
	  <tr>		
		 <td width=200> 	
		   �F��<img alt="�䤣���" SRC="picture/sola.jpg">  
		 <td width=200>
	  		�ޱ�<img alt="�䤣���" SRC="picture/pig.jpg">  		
		 <td width=200>
		 	������<img alt="�䤣���" SRC="picture/do.jpg">
		 	
	  <tr height=20>
	  <td align=left colspan=3><input type="checkbox"name="m2c"> B.�M�\�ANT790:
	  	�ƶq:<select name="m2"><option value="1">1<option value="2">2<option value="3">3<option value="4">4<option value="5">5</select>
	  <tr>		
		 <td width=200> 
		    �ɦ̿@��<img alt="�䤣���" SRC="picture/soup.jpg">	  
		 <td width=200>
	  		����<img alt="�䤣���" SRC="picture/fish.jpg">
		 <td width=200>
		 	�B�N�O<img alt="�䤣���" SRC="picture/ice.jpg">
	   <tr height=20>	 	 	
	   <td align=left colspan=3><input type="checkbox"name="m3c"> C.�M�\�ANT990:
	             �ƶq:<select name="m3"><option value="1">1<option value="2">2<option value="3">3<option value="4">4<option value="5">5</select>
	   <tr>		
		 <td width=200> 
		   �N�ѥ]	<img alt="�䤣���" SRC="picture/bread.jpg">		     
		 <td width=200>
	  		����<img alt="�䤣���" SRC="picture/steak.jpg">  
		 <td width=200>
		 	���G���L<img alt="�䤣���" SRC="picture/fruit.jpg">
	   <tr height=20>
	   <td align=left colspan=3>
	   �|������: <input type="radio" name="member" value="1"checked="true"> ���q
     	        <input type="radio" name="member" value="2"> �ȥd
    	        <input type="radio" name="member" value="3">  ���d
    	   <input type="radio" name="member" value="4" >VIP
			 *�ู:<select name="tableNum"><option value="1">1<option value="2">2<option value="3">3<option value="4">4<option value="5">5</select>
			 <input type="submit" value="�q�\�T�{"> �|���W�� :<%=Name %>
  	 </table>
  	</form>  	
  </div>
  <div class="footer">
    <br><DIV ALIGN="CENTER"><a href="SettingPage.jsp"><align=center> -> �q �� �� �z �� </a>
    <br><a href= "index.jsp"> �n�X�^�D�e��  </a>
  </div>


</body>
</html>